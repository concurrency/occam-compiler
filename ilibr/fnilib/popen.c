/* $Id: popen.c,v 1.1 1996/04/15 10:53:45 djb1 Exp $ */

/*
 *	Library to replace popen_read() variants scattered around
 *	Copyright (C) 1991 Inmos Limited
 *
 *	This program is free software; you can redistribute it and/or modify
 *	it under the terms of the GNU General Public License as published by
 *	the Free Software Foundation; either version 2 of the License, or
 *	(at your option) any later version.
 *
 *	This program is distributed in the hope that it will be useful,
 *	but WITHOUT ANY WARRANTY; without even the implied warranty of
 *	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *	GNU General Public License for more details.
 *
 *	You should have received a copy of the GNU General Public License
 *	along with this program; if not, write to the Free Software
 *	Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 */



/* To fix bugs:                                                             */
/*    INSdi01275                                                            */

#include <stdio.h>
#include <stdlib.h>
#include <setjmp.h>
#include <string.h>
#include "toolkit.h"
#include "fnilib.h"
#include "popen_re.h"

/* function mark_error                                                      */
/* Notes that an error was detected when scanning the list of directories   */

static int errors_found;

static void mark_error (char const * const str)
{
  errors_found += 1;
  return;
}

static jmp_buf popen_env;

/* popen_malloc is used if the user does not supply his own malloc()
                routine. In the event of failure, it longjmp's back to
                popen_relative(), which will then return NULL. */

static void *popen_malloc(size_t s)
{
  void *result = malloc(s);
  if (result == NULL)
    longjmp(popen_env, 1);
  return result;
}

/* try to open a file using the primed setup for fnilib */

static fni_handle simple_open (fni_access access    /* fnilib access handle */
                             , char const *  const fn /* file name          */
                             , char const *  const md /* mode of opening    */
                             , fni_list      const fl /* list of directories*/
                             , char const *  const rf /* relative file name */
                             , void (* const free_fn)(void *)
                                                /* function to free memory */
                              )
{
  fni_handle opened;
  fni_canonical int_name, rel_name;

  int_name = fni_internalise (access, fn, fni_user);

  /* Now try to open it */
  if (int_name != NULL)
  {
    /* find the position of the file relative to which the open takes place */
    if (rf == NULL)
      rel_name = NULL;
    else
      rel_name = fni_internalise (access, rf, fni_user);

    opened = fni_open (access, int_name, md, rel_name, NULL, NULL, fl);
    if (rel_name != NULL)
       free_fn((void *)rel_name);  
    free_fn((void *)int_name);  
  }
  else
    opened = NULL;

  return (opened);
}

/* try to open a file testing for host, then unix style of name             */

static fni_handle try_open (fni_access access       /* fnilib access handle */
                          , char const *  const fn /* file name             */
                          , char const *  const md /* mode of opening       */
                          , fni_list      const fl /* list of directories   */
                          , char const *  const rf /* relative file name    */
                          , void (* const free_fn)(void *)
                                                 /* function to free memory */
                           )
{
  fni_handle opened;
  fni_style old_style;

  /* try host style first */
  old_style = fni_set_style (access, host_style);
  
  opened = simple_open (access, fn, md, fl, rf, free_fn);

  /* Now try the unix style if we must */
  if (opened == NULL)
  {
    if (fni_set_style (access, unix_style) != unix_style)
      opened = simple_open (access, fn, md, fl, rf, free_fn);
  }

  /* Reset style of file names */
  fni_set_style (access, old_style);
  
  return (opened);
}

/* function popen_relative                                                  */

/* See popen.h for a specification of this function                         */

FILE * popen_relative (char const *   const fn /* name of file to open      */
                     , char const *   const ev /* name of env var with path */
                     , char const *   const rn /* name of file relative to  */
                                             /* which the open is to be made*/
                     , char const *   const md /* open mode string          */
                     , char const * * const cn /* full file name returned   */
                     , void * (* const malloc_f)(size_t)
                                               /* memory allocation routine */
                     , void (* const free_f)(void *)
                                             /* memory free routine         */
                     , int *          const er /* count of errors in list   */
                      )
{
  fni_handle opened;
  FILE * res;
  char const * env_var;
  fni_canonical position;
  fni_list directories;
  fni_access access;
  void * (* volatile const malloc_fn)(size_t) = (malloc_f != NULL) ? malloc_f : popen_malloc;
  void (* volatile const free_fn)(void *)     = (free_f != NULL) ? free_f : free;

  errors_found = 0;

  if (setjmp(popen_env) == 0)
    {
      access = fni_open_access(malloc_fn, free_fn);
      
      /* Extract the directory list from the environment variable */
      if (ev == NULL)
        env_var = NULL;
      else
        env_var = getenv (ev);
      if (env_var == NULL)
        directories = NULL;
      else
        directories = fni_add_dirs_to_list (access, NULL, env_var, mark_error);
      
      /* Now try opening it with this set of environments */
      opened = try_open (access, fn, md, directories, rn, free_fn);
      if (opened == NULL)
        res = NULL;
      else
      {
        /* successful open - return file pointer and full name */
        res = fni_system_handle (access, opened);
        if (cn != NULL)
        {
          position = fni_position (access, opened);
          *cn = fni_externalise (access, position);
          free_fn((void *)position);
        }
      
        /* clean up the fni structure */
        fni_free (access, opened);
      }
      
      /* tidy up the fni structures */
      fni_free_list (access, directories);
      
      fni_close_access(&access);
  
    }
  else
    /* We have longjmp'ed out of a failed memory allocation routine */
    res = NULL;

  if (er != NULL)
    *er = errors_found;

  return (res);

}


/*{{{   PRIVATE int CheckBaseName (FileName)   */
/*{{{   comment   */
/*
-- ----------------------------------------------------------------------------
--
--     Function Name : CheckBaseName
--
--     Input Parameters :
--         char *FileName - file name to be tested for.
--
--     Output Parameters :
--         None.
--
--     Result :
--         int           - TRUE if found specifier, otherwise FALSE.
--
--     DESCRIPTION
--         Returns TRUE if the file name does not have any sort of directory
--         specification in it, otherwise FALSE is returned.
--
-- ----------------------------------------------------------------------------
*/
/*}}}  */
PRIVATE int CheckBaseName (FileName)
    char const *FileName;
{
    while (*FileName != '\0')
    {
        switch (*FileName)
        {
            case '/':
            case '\\':
            case ':':
            case ']':
                return(FALSE);
                break;
            default:
                FileName++;
                break;
        }
    }
    return(TRUE);
}
/*}}}  */
/*{{{   PRIVATE char *FindNextName (PathString, FileName, FullName)   */
/*{{{   comment   */
/*
-- ----------------------------------------------------------------------------
--
--     Function Name : FindNextName
--
--     Input Parameters :
--         char *PathString - start of path string to be searched along.
--         char *FileName   - file name to be added to the path.
--
--     Output Parameters :
--         char *FullName   - full path name of the file to be tested.
--
--     Result :
--         char *           - new start of the path string.
--
--     DESCRIPTION
--         Finds the next directory section from the path string and then
--         concatenates the directory section and file name together to create
--         a new full path name for the file. If there are no more directory
--         sections in the path string then no new full path name is created.
--
-- ----------------------------------------------------------------------------
*/
/*}}}  */
PRIVATE char *FindNextName (PathString, FileName, FullName)
    char *PathString, *FileName, *FullName;
{
    if (*PathString != '\0')
    {
        int FoundDirectory = FALSE;

        while ((! FoundDirectory) && (*PathString != '\0'))
        {
            switch (*PathString)
            {
                case ';':
                case ' ':
                    FoundDirectory = TRUE;
                    while ((*PathString == ';') || (*PathString == ' '))
                        PathString++;
                    break;
                default:
                    *FullName++ = *PathString++;
                    break;
            }
        }
        *FullName = '\0';
        (void) strcat(FullName, FileName);
    }
    return(PathString);
}
/*}}}  */
/*{{{   PUBLIC FILE *pathopen (FileName, PathName, FullName, OpenMode)*/
/*{{{   comment   */
/*
-- ----------------------------------------------------------------------------
--
--     Function Name : pathopen
--
--     Input Parameters :
--         char *FileName - file name to be searched for and opened.
--         char *PathName - name of the path environment variable.
--         int OpenMode   - mode for the file to be opened in.
--
--     Output Parameters :
--         char *FullName - full path name of the file found on the path.
--
--     Result :
--         FILE *         - pointer to file stream, otherwise NULL.
--
--     DESCRIPTION
--         A routine for opening a file in the occam toolset, where you search
--         an environment variable for a list of directories to look in. It
--         first simply tries to open the basic file name. If it cannot and the
--         file name contains a directory specification in it then no path
--         searching is performed.
--
--         Otherwise it translates the environment variable and it scans
--         through the directories on the list specified by the variable (each
--         separated by spaces or semicolons). It adds the file name onto the
--         end of each directory specification in turn, and then trying to open
--         the full path name just created for the file.
--
--         If it succeeds in opening the file (on the path or otherwise), it
--         returns the full path name for the file and a FILE pointer to it. If
--         it cannot find the file (on the path or otherwise) then it returns
--         NULL and no full path name.
--
--         The open mode parameter specifies text, value 0 and binary value 1.
--
-- ----------------------------------------------------------------------------
*/
/*}}}  */
// extern FILE *pathopen PARMS((char const *, char const *, char *, const char *));

PUBLIC FILE *pathopen (FileName, PathName, FullName, OpenMode)
    char const *FileName, *PathName, *OpenMode;
    char *FullName;
{
  FILE *Stream;
  char *PathString;
  Stream = NULL;
  PathString = NULL;
  if ((FullName != NULL) && (strlen(FileName) != 0))
  {
    if ((Stream = fopen (FileName, OpenMode)) == NULL)
    /*{{{   search path   */
    {
      if ((PathName != NULL) && (strlen(PathName) != 0))
      {
        if (CheckBaseName (FileName))
        {
          if ((PathString = (char *) getenv(PathName)) != NULL)
          {
            while ((Stream == NULL) && (strlen(PathString) != 0))
            {
              PathString = FindNextName(PathString, (char *) FileName, FullName);
              if (strlen(FullName) != 0) Stream = fopen (FullName, OpenMode);
            }
          }
        }
      }
    }
    /*}}}  */
    else (void) strcpy(FullName, FileName);
  }
  if (Stream == NULL) *FullName = '\0';
  return(Stream);
}
/*}}}  */
