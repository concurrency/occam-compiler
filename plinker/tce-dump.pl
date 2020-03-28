#!/usr/bin/env perl
#
#  Perl code for linking and assembling bytecode for the TVM
#  Copyright (C) 2008, 2009 Carl Ritson <cgr@kent.ac.uk>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
#

#
#  Perl code for linking and assembling bytecode for the TVM
#  Copyright (C) 2008 Carl Ritson <cgr@kent.ac.uk>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
#

#
#  Perl code for linking and assembling bytecode for the TVM
#  Copyright (C) 2008 Carl Ritson <cgr@kent.ac.uk>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
#

#
#  Perl code for linking and assembling bytecode for the TVM
#  Copyright (C) 2008 Carl Ritson <cgr@kent.ac.uk>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
#

package PLinker;

use strict;
use vars qw($STORE);

$STORE = {};
$STORE = {
           'tcoff' => {
                        'LOAD_TEXT' => '6',
                        '16' => 'KILL_ID',
                        '5' => 'ADJUST_POINT',
                        '100663296' => 'INSTR_387',
                        'IMPORT_USAGE' => 4,
                        '4096' => 'INSTR_TIMER_DISABLE',
                        'DEFINE_MAIN' => '12',
                        '64' => 'PROVISIONAL_USAGE',
                        '128' => 'ORIGIN_USAGE',
                        'INSTR_POP' => 16384,
                        'NORMAL_MSG' => '1',
                        'ERROR_MSG' => '3',
                        'MESSAGE' => '21',
                        '256' => 'ROUTINE_USAGE',
                        '32768' => 'INSTR_NO_SEMAPHORE',
                        'INSTR_CORE' => 1,
                        'WRITE_SECTION' => 1,
                        'EXPORT_USAGE' => 2,
                        'SECTION' => '11',
                        'PFX_2_NUMBER' => '252',
                        'TIMES_OP' => '8',
                        '1' => 'LINKABLE',
                        '17' => 'BYTE_PATCH',
                        'SS_VALUE' => '4',
                        '254' => 'PFX_8_NUMBER',
                        '255' => 'SIGN_INDICATOR',
                        'INSTR_LDDEVID' => 1024,
                        '28' => 'LINKED_UNIT',
                        'MAX_OP' => '11',
                        'INSTR_RMC_CORE2' => 67108864,
                        'INSTR_FP_SUPPORT' => 4,
                        'ATTRIB_STOP' => 256,
                        'INSTR_FMUL' => 2,
                        '2097152' => 'ARCH_H',
                        '15' => 'DEFINE_SYMBOL',
                        '16777216' => 'INSTR_386_16',
                        'INSTR_LDMEMSTARTVAL' => 8192,
                        'SYMTAB_SPECIFIC_SYMBOL' => '3',
                        '67108864' => 'INSTR_RMC_CORE2',
                        '6' => 'LOAD_TEXT',
                        '134217728' => 'INSTR_RMC_CORE3',
                        'INSTR_FPU_CORE' => 256,
                        'LANG_LINKED' => '2',
                        'PLUS_OP' => '6',
                        'LOAD_PREFIX' => '7',
                        'LAST_TCOFF' => '31',
                        '32' => 'UNINDEXED_USAGE',
                        'KILL_ID' => '16',
                        'INSTR_DUP' => 8,
                        '14' => 'DEFINE_LABEL',
                        'ATTRIB_HALT' => 128,
                        '262144' => 'ATTRIB_NON_FPU_CALLING',
                        'ATTRIB_UNIVERSAL' => 0,
                        '21' => 'MESSAGE',
                        'LINKABLE' => '1',
                        'MIN_OP' => '12',
                        'INSTR_NO_DEVICE' => 65536,
                        'INSTR_RMC_CORE1' => 33554432,
                        '16384' => 'INSTR_POP',
                        'ROUTINE_USAGE' => 256,
                        'SYMBOL_TABLE_MAGIC_TEXT_LENGTH' => '19',
                        'INSTR_FPTESTERR' => 512,
                        'ATTRIB_FPU_CALLING' => 524288,
                        '22' => 'LIB_INDEX_START',
                        'PFX_1_NUMBER' => '251',
                        'SYMTAB_SYMBOL' => '2',
                        'AP_VALUE' => '13',
                        'INSTR_WSUBDB' => 16,
                        'ARCH_H' => 2097152,
                        'ATTRIB_MEMSTART18' => 8,
                        'LANG_OCCAM' => '3',
                        'DEFINE_LABEL' => '14',
                        'LANG_FORTRAN_77' => '5',
                        '9' => 'LOAD_ZEROS',
                        'ALIGN' => '10',
                        'BYTE_PATCH' => '17',
                        'INSTR_088_16' => 8388608,
                        'LIB_INDEX_START' => '22',
                        '512' => 'DATA_USAGE',
                        'INSTR_CRC' => 64,
                        '26' => 'DESCRIPTOR',
                        'SET_LOAD_POINT' => '4',
                        'ATTRIB_MEMSTARTLEQ28' => 0,
                        '7' => 'LOAD_PREFIX',
                        'DESCRIPTOR' => '26',
                        '1048576' => 'ARCH_T',
                        'DEFINE_SYMBOL' => '15',
                        '12' => 'DEFINE_MAIN',
                        'START_MODULE' => '2',
                        'ATTRIB_WORD_32' => 2,
                        'LOAD_EXPR' => '8',
                        '8388608' => 'INSTR_088_16',
                        'LAST_TCOFF_OP' => '13',
                        'INSTR_NO_SEMAPHORE' => 32768,
                        'INSTR_TIMER_DISABLE' => 4096,
                        'VIRTUAL_SECTION' => 16,
                        'LOCAL_SYMBOLS' => '13',
                        '8192' => 'INSTR_LDMEMSTARTVAL',
                        'LANG_ANSI_C' => '4',
                        '253' => 'PFX_4_NUMBER',
                        'COMMENT' => '20',
                        '20' => 'COMMENT',
                        'CONDITIONAL_USAGE' => 16,
                        'INSTR_BITOPS' => 128,
                        'ADJUST_POINT' => '5',
                        'LANG_ISO_PASCAL' => '6',
                        'MINUS_OP' => '7',
                        'PFX_4_NUMBER' => '253',
                        '24' => 'INDEX_ENTRY',
                        'SV_VALUE' => '3',
                        'SYMBOL' => '30',
                        'ORIGIN_USAGE' => 128,
                        'LIB_INDEX_END' => '23',
                        '0' => 'BOOL_FALSE',
                        'LP_VALUE' => '2',
                        '10' => 'ALIGN',
                        'LINKED_UNIT' => '28',
                        'READ_SECTION' => 2,
                        'INSTR_RMC_CORE3' => 134217728,
                        'INSTR_DEBUG_SUPPORT' => 2048,
                        'LANG_NOT_KNOWN' => '1',
                        'UNINDEXED_USAGE' => 32,
                        '19' => 'REP_END',
                        '2' => 'START_MODULE',
                        'LANG_MODULA_2' => '7',
                        'REM_OP' => '10',
                        'WORD_PATCH' => '25',
                        '18' => 'REP_START',
                        'PROVISIONAL_USAGE' => 64,
                        'DIVIDE_OP' => '9',
                        '8' => 'LOAD_EXPR',
                        '11' => 'SECTION',
                        'PFX_8_NUMBER' => '254',
                        '3' => 'END_MODULE',
                        'WARNING_MSG' => '2',
                        'REP_END' => '19',
                        '252' => 'PFX_2_NUMBER',
                        'ATTRIB_WORD_64' => 4,
                        '25' => 'WORD_PATCH',
                        '251' => 'PFX_1_NUMBER',
                        'WEAK_USAGE' => 8,
                        'DEBUG_SECTION' => 8,
                        'EXECUTE_SECTION' => 4,
                        'INSTR_386_32' => 33554432,
                        'INSTR_387' => 100663296,
                        '524288' => 'ATTRIB_FPU_CALLING',
                        'BOOL_FALSE' => '0',
                        '65536' => 'INSTR_NO_DEVICE',
                        'SIGN_INDICATOR' => '255',
                        'ATTRIB_MEMSTART28' => 16,
                        'ATTRIB_INSTR_IO' => 2048,
                        'LANG_ASSEMBLER' => '9',
                        'NOTYPE_USAGE' => 1024,
                        '27' => 'VERSION',
                        'DATA_USAGE' => 512,
                        'BOOL_TRUE' => '1',
                        'INSTR_MOVE2D' => 32,
                        '1024' => 'NOTYPE_USAGE',
                        'WL_VALUE' => '5',
                        '30' => 'SYMBOL',
                        'ATTRIB_CALL_IO' => 0,
                        'ARCH_T' => 1048576,
                        'LOAD_ZEROS' => '9',
                        'ATTRIB_WORD_16' => 1,
                        '31' => 'SPECIFIC_SYMBOL',
                        'LOCAL_USAGE' => 1,
                        'INSTR_386_16' => 16777216,
                        'ATTRIB_NON_FPU_CALLING' => 262144,
                        'LANG_OCCAM_HARNESS' => '10',
                        'CO_VALUE' => '1',
                        '33554432' => 'INSTR_RMC_CORE1',
                        '13' => 'LOCAL_SYMBOLS',
                        'SYMTAB_HEADER' => '1',
                        '4' => 'SET_LOAD_POINT',
                        '23' => 'LIB_INDEX_END',
                        '2048' => 'ATTRIB_INSTR_IO',
                        'SPECIFIC_SYMBOL' => '31',
                        'REP_START' => '18',
                        'VERSION' => '27',
                        'INDEX_ENTRY' => '24',
                        'LANG_ADA' => '8',
                        'END_MODULE' => '3'
                      },
           'ins_sec' => {
                          '244' => 'DEVLW',
                          '133' => 'FPLDTEST',
                          'LDMEMSTARTVAL' => 126,
                          'MOVE' => 74,
                          '147' => 'FPNOTFINITE',
                          'INTENB' => 197,
                          '-14' => 'INSERTQUEUE',
                          'MOVE2DALL' => 92,
                          'TIMERDISABLEH' => 122,
                          'REAL32TAN' => undef,
                          'LDIFF' => 79,
                          'FPUR32TOR64' => undef,
                          '45' => 'TESTHARDCHAN',
                          'FPR32TOR64' => 215,
                          '160' => 'FPLDZERODB',
                          'XIN' => 233,
                          '102' => 'EXTENBC',
                          '69' => 'ALTEND',
                          'DEVSW' => 245,
                          'STMOVE2DINIT' => -32,
                          '-17' => 'IRET',
                          'LDPRODID' => -132,
                          '-26' => 'INITVLCB',
                          'FPMUL' => 139,
                          '-30' => 'ENBG',
                          '50' => 'NOT',
                          'DEVSS' => 243,
                          'FPREMFIRST' => 143,
                          '172' => 'FPLDNLMULSN',
                          'UNMKRC' => -35,
                          '125' => 'TIMERENABLEL',
                          'NORM' => 25,
                          'FPORDERED' => 146,
                          '77' => 'CCNT1',
                          '53' => 'LSHR',
                          '556' => 'ENBC2',
                          '163' => 'FPDUP',
                          'LDINF' => 113,
                          '165' => 'SETPRI',
                          '182' => 'LDFLAGS',
                          '101' => 'SULMUL',
                          'FPUABS' => undef,
                          'FPEXPINC32' => 218,
                          '121' => 'POP',
                          '93' => 'MOVE2DNONZERO',
                          'PROC_PARAM' => 560,
                          '193' => 'SSUB',
                          '85' => 'STOPERR',
                          'FPADD' => 135,
                          '14' => 'OUTBYTE',
                          '215' => 'FPR32TOR64',
                          '71' => 'ENBT',
                          'MT_ALLOC' => 568,
                          'FPUCHKI32' => undef,
                          'SELTH' => -7,
                          '-6' => 'GOPROT',
                          '32' => 'RET',
                          '134' => 'FPLDNLSNI',
                          'TESTLDD' => 37,
                          '-36' => 'MKRC',
                          'STLB' => 23,
                          '6' => 'GCALL',
                          'MT_RESIGN' => 577,
                          '135' => 'FPADD',
                          '120' => 'BITREVNBITS',
                          '-24' => 'SETHDR',
                          '213' => 'FPRM',
                          '63' => 'WCNT',
                          'DISS' => 48,
                          '104' => 'SATADD',
                          'MT_LOCK' => 574,
                          'ALT' => 67,
                          'FPEXPDEC32' => 217,
                          '586' => 'WMB',
                          'PROC_MT_MOVE' => 562,
                          'LDPI' => 27,
                          'EXT_MT_IN' => 587,
                          'GETPRI' => 162,
                          'UNPACKSN' => 99,
                          'LDTIMER' => 34,
                          '91' => 'MOVE2DINIT',
                          '241' => 'DEVSB',
                          'STCLOCK' => -68,
                          'MT_DCLONE' => 582,
                          'ICA' => -47,
                          'TIN' => 43,
                          'MRELEASE' => 227,
                          '169' => 'FPENTRY2',
                          'FPUSQRTSTEP' => undef,
                          '195' => 'LDCHSTATUS',
                          '16' => 'SETERR',
                          'CIRU' => 204,
                          '64' => 'SHR',
                          'FPCHKI32' => 222,
                          'DIFF' => 4,
                          'PROC_END' => 564,
                          '150' => 'FPI32TOR32',
                          '221' => 'FPADDDBSN',
                          '226' => 'MALLOC',
                          'WCNT' => 63,
                          'DEVMOVE' => -44,
                          '151' => 'FPGE',
                          'FPSTNLDB' => 132,
                          '4' => 'DIFF',
                          'FPRANGE' => 141,
                          '176' => 'SETTIMESLICE',
                          'CLRJ0BREAK' => 178,
                          '578' => 'MT_SYNC',
                          'VOUT' => -19,
                          '580' => 'MT_XOUT',
                          '81' => 'TALTWT',
                          '73' => 'ENBS',
                          'FPI32TOR64' => 152,
                          'XEND' => 236,
                          '-4' => 'LDSHADOW',
                          'FPSTNLI32' => 158,
                          '581' => 'MT_XXCHG',
                          'BITREVWORD' => 119,
                          'CLOCKDIS' => -66,
                          'IOR32' => 554,
                          '-64' => 'NOP',
                          '162' => 'GETPRI',
                          'FPLDNLADDDB' => 166,
                          'GAJW' => 60,
                          'LDCNT' => 192,
                          '249' => 'LSX',
                          'RESETCH' => 18,
                          '579' => 'MT_XIN',
                          '-39' => 'STRESPTR',
                          'START' => 511,
                          'TESTPRANAL' => 42,
                          '238' => 'NDIST',
                          '183' => 'STFLAGS',
                          '-15' => 'SWAPTIMER',
                          '57' => 'RUNP',
                          'FPLDNLSNI' => 134,
                          'MT_RELEASE' => 569,
                          'WRITEHDR' => -27,
                          '8' => 'PROD',
                          '557' => 'ENBT2',
                          '52' => 'BCNT',
                          '157' => 'FPRTOI32',
                          'CBU' => 187,
                          '18' => 'RESETCH',
                          'FPRZ' => 214,
                          'ENBC' => 72,
                          '-13' => 'TIMESLICE',
                          '243' => 'DEVSS',
                          'TESTLDS' => 35,
                          '564' => 'PROC_END',
                          '232' => 'XABLE',
                          'FPLDNLMULSN' => 172,
                          'TALT' => 78,
                          'FPSQRT' => 211,
                          '236' => 'XEND',
                          'MT_BIND' => 583,
                          '551' => 'IOW8',
                          '-7' => 'SELTH',
                          '-12' => 'SIGNAL',
                          'TESTSTE' => 39,
                          'CCNT1' => 77,
                          'FPLDALL' => -2,
                          '168' => 'FPLDNLMULDB',
                          '74' => 'MOVE',
                          'SATMUL' => 106,
                          '566' => 'SETAFF',
                          '218' => 'FPEXPINC32',
                          '207' => 'FPREM',
                          'FPGE' => 151,
                          '60' => 'GAJW',
                          'FPURP' => undef,
                          '129' => 'WSUBDB',
                          'WSMAP' => -145,
                          '569' => 'MT_RELEASE',
                          '89' => 'TESTHALTERR',
                          'FPDIVBY2' => 209,
                          'SETTIMESLICE' => 176,
                          '58' => 'XWORD',
                          '47' => 'DISC',
                          'FPLDNLADDSN' => 170,
                          '558' => 'ENBS2',
                          'OUTWORD' => 15,
                          'FPNAN' => 145,
                          '201' => 'CHANTYPE',
                          'FDCL' => -46,
                          'FMUL' => 114,
                          'MINT' => 66,
                          'FPLDNLDBI' => 130,
                          'FPURM' => undef,
                          '-22' => 'LDVLCB',
                          '130' => 'FPLDNLDBI',
                          '216' => 'FPR64TOR32',
                          'IOW32' => 555,
                          'FPUEXPDEC32' => undef,
                          'CLOCKENB' => -65,
                          'SYSCALL' => -8,
                          'RET' => 32,
                          '242' => 'DEVLS',
                          'FPLDNLMULDB' => 168,
                          '166' => 'FPLDNLADDDB',
                          '-18' => 'STOPCH',
                          'TIMERENABLEL' => 125,
                          '570' => 'MT_CLONE',
                          'ENBC3' => 112,
                          'RUNP' => 57,
                          '90' => 'DUP',
                          '126' => 'LDMEMSTARTVAL',
                          'FPCHKI64' => 223,
                          '-27' => 'WRITEHDR',
                          '170' => 'FPLDNLADDSN',
                          '22' => 'LADD',
                          'MT_XOUT' => 580,
                          'DISC' => 47,
                          'LDDEVID' => 380,
                          'LSUB' => 56,
                          '-9' => 'TRAPENB',
                          '49' => 'LMUL',
                          'NDISS' => 239,
                          'MT_OUT' => 572,
                          '196' => 'INTDIS',
                          'EXTOUT' => 97,
                          'FPADDDBSN' => 221,
                          'LS' => 202,
                          'STRESPTR' => -39,
                          'TRET' => -5,
                          'STSHADOW' => -3,
                          '200' => 'SS',
                          '-44' => 'DEVMOVE',
                          'ENBG' => -30,
                          'DISG' => -29,
                          '577' => 'MT_RESIGN',
                          'MKRC' => -36,
                          'REM' => 31,
                          'STTRAPPED' => 203,
                          'INITVLCB' => -26,
                          '-46' => 'FDCL',
                          '380' => 'LDDEVID',
                          'XABLE' => 232,
                          'TALTWT' => 81,
                          'CIR' => 199,
                          '167' => 'FPENTRY3',
                          '116' => 'CRCWORD',
                          '219' => 'FPABS',
                          'SETPRI' => 165,
                          '110' => 'LDTRAPH',
                          '-8' => 'SYSCALL',
                          '42' => 'TESTPRANAL',
                          '584' => 'MB',
                          '55' => 'LSUM',
                          '149' => 'FPEQ',
                          'WMB' => 586,
                          '54' => 'LSHL',
                          'MT_XIN' => 579,
                          'BCNT' => 52,
                          'STOPCH' => -18,
                          '115' => 'CFLERR',
                          'PROC_MT_COPY' => 561,
                          '560' => 'PROC_PARAM',
                          'IOR16' => 552,
                          'MALLOC' => 226,
                          'NULL' => 253,
                          'FPDIV' => 140,
                          '-16' => 'SWAPQUEUE',
                          '38' => 'TESTSTS',
                          'FPENTRY2' => 169,
                          'FPSTALL' => -1,
                          '109' => 'ROUNDSN',
                          'GCALL' => 6,
                          '171' => 'FPENTRY',
                          'WSUBDB' => 129,
                          '1' => 'LB',
                          'EXTVRFY' => 20,
                          'CSNGL' => 76,
                          '184' => 'XBWORD',
                          '189' => 'READBFR',
                          '511' => 'START',
                          '35' => 'TESTLDS',
                          'SUM' => 82,
                          'MT_XXCHG' => 581,
                          '105' => 'SATSUB',
                          'STCONF' => 191,
                          'STTIMER' => 84,
                          '92' => 'MOVE2DALL',
                          'TIMERDISABLEL' => 123,
                          'CRCWORD' => 116,
                          '199' => 'CIR',
                          'IRDSQ' => -37,
                          'SETHALTERR' => 88,
                          '190' => 'LDCONF',
                          'DEVLS' => 242,
                          '202' => 'LS',
                          '576' => 'MT_ENROLL',
                          'FPLDZEROSN' => 159,
                          '136' => 'FPSTNLSN',
                          'MT_CLONE' => 570,
                          'GRANT' => -31,
                          'CLRHALTERR' => 87,
                          '' => 'REAL64TAN',
                          '562' => 'PROC_MT_MOVE',
                          '572' => 'MT_OUT',
                          'LDTH' => 194,
                          'NDISC' => 237,
                          '-2' => 'FPLDALL',
                          'DEVLW' => 244,
                          '40' => 'TESTSTD',
                          '13' => 'STARTP',
                          '66' => 'MINT',
                          '179' => 'SETJ0BREAK',
                          '204' => 'CIRU',
                          '154' => 'FPB32TOR64',
                          'SHL' => 65,
                          '-20' => 'VIN',
                          'MUL' => 83,
                          'FPREV' => 164,
                          '142' => 'FPLDNLSN',
                          'LDCHSTATUS' => 195,
                          'PROD' => 8,
                          'FPENTRY3' => 167,
                          '27' => 'LDPI',
                          '131' => 'FPCHKERR',
                          '139' => 'FPMUL',
                          'EXTIN' => 96,
                          'LSHL' => 54,
                          'SWAPQUEUE' => -16,
                          'FPCHKERR' => 131,
                          '-65' => 'CLOCKENB',
                          'ENBC2' => 556,
                          'GT' => 9,
                          '548' => 'IOR',
                          '43' => 'TIN',
                          'SETJ0BREAK' => 179,
                          'NOT' => 50,
                          'FPDUP' => 163,
                          'ERDSQ' => -38,
                          'IOW8' => 551,
                          '10' => 'WSUB',
                          'MOVE2DZERO' => 94,
                          'FPUCLRERR' => undef,
                          'DIST' => 46,
                          'LDTRAPPED' => 198,
                          '209' => 'FPDIVBY2',
                          '-34' => 'RESTART',
                          '561' => 'PROC_MT_COPY',
                          'PROC_START' => 563,
                          '24' => 'STHF',
                          'LBX' => 185,
                          'CSUB0' => 19,
                          '122' => 'TIMERDISABLEH',
                          '-28' => 'READHDR',
                          'BITREVNBITS' => 120,
                          '143' => 'FPREMFIRST',
                          'POSTNORMSN' => 108,
                          '82' => 'SUM',
                          '253' => 'NULL',
                          'LDFLAGS' => 182,
                          'CB' => 186,
                          '88' => 'SETHALTERR',
                          '186' => 'CB',
                          'FDCA' => -48,
                          'VIN' => -20,
                          '248' => 'XSWORD',
                          'FPLDTEST' => 133,
                          'LSHR' => 53,
                          'TESTSTS' => 38,
                          'CFLERR' => 115,
                          '-48' => 'FDCA',
                          '70' => 'AND',
                          'SATADD' => 104,
                          '582' => 'MT_DCLONE',
                          'INSPHDR' => 188,
                          '119' => 'BITREVWORD',
                          '-21' => 'STVLCB',
                          '-25' => 'SETCHMODE',
                          '7' => 'IN',
                          '26' => 'LDIV',
                          '99' => 'UNPACKSN',
                          '144' => 'FPREMSTEP',
                          '141' => 'FPRANGE',
                          'SSUB' => 193,
                          '159' => 'FPLDZEROSN',
                          'IOR' => 548,
                          '-35' => 'UNMKRC',
                          'FPRM' => 213,
                          '67' => 'ALT',
                          '34' => 'LDTIMER',
                          'WAIT' => -11,
                          'PROC_ALLOC' => 559,
                          'FPLDNLSN' => 142,
                          'REAL64SIN' => undef,
                          '123' => 'TIMERDISABLEL',
                          '65' => 'SHL',
                          '140' => 'FPDIV',
                          '173' => 'ENBS3',
                          '148' => 'FPGT',
                          'REAL64COS' => undef,
                          'BREAK' => 177,
                          '588' => 'EXT_MT_OUT',
                          'EXT_MT_OUT' => 588,
                          '21' => 'STOPP',
                          'WSUB' => 10,
                          'TIMERENABLEH' => 124,
                          'TRAP' => 252,
                          '208' => 'FPRN',
                          'POP' => 121,
                          '559' => 'PROC_ALLOC',
                          'MB' => 584,
                          'SS' => 200,
                          '214' => 'FPRZ',
                          '15' => 'OUTWORD',
                          '-11' => 'WAIT',
                          '100' => 'SLMUL',
                          'FPREM' => 207,
                          'ALTEND' => 69,
                          'MT_IN' => 571,
                          'IN' => 7,
                          '117' => 'CRCBYTE',
                          '28' => 'STLF',
                          'LDTRAPH' => 110,
                          '-33' => 'CAUSEERROR',
                          '-146' => 'CODEMAP',
                          'STOPERR' => 85,
                          '-23' => 'SWAPBFR',
                          '103' => 'EXTNDISC',
                          'RMB' => 585,
                          '59' => 'SB',
                          '554' => 'IOR32',
                          '153' => 'ENBT3',
                          '118' => 'BITCNT',
                          'TESTJ0BREAK' => 180,
                          'READHDR' => -28,
                          '33' => 'LEND',
                          '210' => 'FPMULBY2',
                          'SATSUB' => 105,
                          '128' => 'FPSTTEST',
                          'GTU' => 95,
                          'DUP' => 90,
                          '5' => 'ADD',
                          'LB' => 1,
                          'LDPRI' => 30,
                          'SETHDR' => -24,
                          '137' => 'FPSUB',
                          'SULMUL' => 101,
                          'FPTESTERR' => 156,
                          '185' => 'LBX',
                          '-45' => 'ICL',
                          'MT_SYNC' => 578,
                          '-66' => 'CLOCKDIS',
                          '-37' => 'IRDSQ',
                          'IOW16' => 553,
                          'MT_RESIZE' => 589,
                          'FPSTNLSN' => 136,
                          '589' => 'MT_RESIZE',
                          '-3' => 'STSHADOW',
                          'TESTHALTERR' => 89,
                          '76' => 'CSNGL',
                          'FPNOTFINITE' => 147,
                          'SAVEH' => 62,
                          '251' => 'CSU',
                          '25' => 'NORM',
                          '252' => 'TRAP',
                          '203' => 'STTRAPPED',
                          'ENBS' => 73,
                          'SWAPTIMER' => -15,
                          '574' => 'MT_LOCK',
                          '3' => 'ENDP',
                          'SUB' => 12,
                          '152' => 'FPI32TOR64',
                          'DEVSB' => 241,
                          '11' => 'OUT',
                          '94' => 'MOVE2DZERO',
                          '240' => 'DEVLB',
                          '177' => 'BREAK',
                          '83' => 'MUL',
                          '178' => 'CLRJ0BREAK',
                          'ICL' => -45,
                          '51' => 'XOR',
                          '192' => 'LDCNT',
                          '194' => 'LDTH',
                          '-31' => 'GRANT',
                          '587' => 'EXT_MT_IN',
                          '-38' => 'ERDSQ',
                          '19' => 'CSUB0',
                          'FPEQ' => 149,
                          '0' => 'REV',
                          '79' => 'LDIFF',
                          '132' => 'FPSTNLDB',
                          'ENDP' => 3,
                          'FPUEXPINC32' => undef,
                          'CS' => 250,
                          'FPUMULBY2' => undef,
                          'CSU' => 251,
                          '156' => 'FPTESTERR',
                          '111' => 'STTRAPH',
                          'SHR' => 64,
                          '36' => 'TESTLDE',
                          'LEND' => 33,
                          '188' => 'INSPHDR',
                          'STHF' => 24,
                          '-40' => 'LDRESPTR',
                          '568' => 'MT_ALLOC',
                          'FPRTOI32' => 157,
                          '222' => 'FPCHKI32',
                          'IRET' => -17,
                          '41' => 'TESTERR',
                          'TESTSTD' => 40,
                          'ADD' => 5,
                          '87' => 'CLRHALTERR',
                          '250' => 'CS',
                          'FPLG' => 155,
                          'ROUNDSN' => 109,
                          '567' => 'GETPAS',
                          'FPUSQRTLAST' => undef,
                          'GOPROT' => -6,
                          '84' => 'STTIMER',
                          '106' => 'SATMUL',
                          '197' => 'INTENB',
                          'LMUL' => 49,
                          'FPUCHKI64' => undef,
                          'NDIST' => 238,
                          '555' => 'IOW32',
                          '9' => 'GT',
                          '62' => 'SAVEH',
                          'FPLDNLDB' => 138,
                          'TESTLDE' => 36,
                          'XWORD' => 58,
                          'OUT' => 11,
                          '86' => 'CWORD',
                          'MOVE2DINIT' => 91,
                          '187' => 'CBU',
                          'CODEMAP' => -146,
                          'XOR' => 51,
                          'SWAPBFR' => -23,
                          'LDIV' => 26,
                          'INTDIS' => 196,
                          '113' => 'LDINF',
                          'LDCONF' => 190,
                          'ENBS3' => 173,
                          'TRAPENB' => -9,
                          '-19' => 'VOUT',
                          'CHANTYPE' => 201,
                          '-145' => 'WSMAP',
                          '585' => 'RMB',
                          'FPSTTEST' => 128,
                          '563' => 'PROC_START',
                          'MOVE2DNONZERO' => 93,
                          '237' => 'NDISC',
                          '198' => 'LDTRAPPED',
                          '78' => 'TALT',
                          'ENBS2' => 558,
                          'AND' => 70,
                          '227' => 'MRELEASE',
                          'FPUNOROUND' => undef,
                          'BITCNT' => 118,
                          'RESTART' => -34,
                          'SLMUL' => 100,
                          'FPUSQRTFIRST' => undef,
                          '571' => 'MT_IN',
                          'MT_UNLOCK' => 575,
                          '-10' => 'TRAPDIS',
                          'STHB' => 80,
                          '-67' => 'LDCLOCK',
                          '223' => 'FPCHKI64',
                          'FPMULBY2' => 210,
                          'FPLDZERODB' => 160,
                          '-132' => 'LDPRODID',
                          'MT_ENROLL' => 576,
                          '-68' => 'STCLOCK',
                          'GETPAS' => 567,
                          '96' => 'EXTIN',
                          '-1' => 'FPSTALL',
                          '48' => 'DISS',
                          '37' => 'TESTLDD',
                          'FPABS' => 219,
                          'LSUM' => 55,
                          'LSX' => 249,
                          '211' => 'FPSQRT',
                          '97' => 'EXTOUT',
                          'XBWORD' => 184,
                          'ENBT' => 71,
                          '155' => 'FPLG',
                          'ALTWT' => 68,
                          '75' => 'OR',
                          'EXTNDISC' => 103,
                          '245' => 'DEVSW',
                          '17' => 'MRELEASEP',
                          '68' => 'ALTWT',
                          'LDVLCB' => -22,
                          '72' => 'ENBC',
                          '44' => 'DIV',
                          'SIGNAL' => -12,
                          'NOP' => -64,
                          '553' => 'IOW16',
                          '550' => 'IOR8',
                          'FPGT' => 148,
                          'SETCHMODE' => -25,
                          'OR' => 75,
                          'EXTENBC' => 102,
                          'BSUB' => 2,
                          'OUTBYTE' => 14,
                          'ENBT2' => 557,
                          '112' => 'ENBC3',
                          '-29' => 'DISG',
                          'STFLAGS' => 183,
                          '145' => 'FPNAN',
                          '23' => 'STLB',
                          '549' => 'IOW',
                          '-47' => 'ICA',
                          'STLF' => 28,
                          '565' => 'GETAFF',
                          'FPR64TOR32' => 216,
                          '31' => 'REM',
                          '29' => 'XDBLE',
                          '212' => 'FPRP',
                          'REV' => 0,
                          '239' => 'NDISS',
                          '158' => 'FPSTNLI32',
                          'FPSUB' => 137,
                          '114' => 'FMUL',
                          '30' => 'LDPRI',
                          'XSWORD' => 248,
                          'FPRP' => 212,
                          'DEVLB' => 240,
                          '124' => 'TIMERENABLEH',
                          'FPRN' => 208,
                          '180' => 'TESTJ0BREAK',
                          'FPURN' => undef,
                          'CAUSEERROR' => -33,
                          '-5' => 'TRET',
                          'IOR8' => 550,
                          'TESTERR' => 41,
                          'STTRAPH' => 111,
                          'LDCLOCK' => -67,
                          'FPENTRY' => 171,
                          'FPUR64TOR32' => undef,
                          '39' => 'TESTSTE',
                          'XDBLE' => 29,
                          'GETAFF' => 565,
                          'FPINT' => 161,
                          '161' => 'FPINT',
                          'TIMESLICE' => -13,
                          '552' => 'IOR16',
                          'ENBT3' => 153,
                          'SAVEL' => 61,
                          '191' => 'STCONF',
                          '95' => 'GTU',
                          '573' => 'MT_XCHG',
                          '217' => 'FPEXPDEC32',
                          'TRAPDIS' => -10,
                          'MRELEASEP' => 17,
                          '138' => 'FPLDNLDB',
                          '-32' => 'STMOVE2DINIT',
                          'FPURZ' => undef,
                          'LDSHADOW' => -4,
                          'CWORD' => 86,
                          'MT_XCHG' => 573,
                          'REAL32SIN' => undef,
                          '2' => 'BSUB',
                          '80' => 'STHB',
                          'REAL64TAN' => undef,
                          'CRCBYTE' => 117,
                          '61' => 'SAVEL',
                          'LDRESPTR' => -40,
                          'INSERTQUEUE' => -14,
                          'STOPP' => 21,
                          'IOW' => 549,
                          'STVLCB' => -21,
                          '108' => 'POSTNORMSN',
                          'SETAFF' => 566,
                          'FPUSETERR' => undef,
                          '583' => 'MT_BIND',
                          'FPI32TOR32' => 150,
                          'LADD' => 22,
                          '46' => 'DIST',
                          '164' => 'FPREV',
                          '20' => 'EXTVRFY',
                          '575' => 'MT_UNLOCK',
                          'STARTP' => 13,
                          'SB' => 59,
                          'READBFR' => 189,
                          '56' => 'LSUB',
                          'REAL32COS' => undef,
                          'FPUDIVBY2' => undef,
                          '146' => 'FPORDERED',
                          '233' => 'XIN',
                          'FPREMSTEP' => 144,
                          'SETERR' => 16,
                          'DIV' => 44,
                          '12' => 'SUB',
                          'FPB32TOR64' => 154,
                          'TESTHARDCHAN' => 45
                        },
           'ins_pri' => {
                          'OPR' => 240,
                          'LDL' => 112,
                          'LDNL' => 48,
                          'LDLP' => 16,
                          'LDC' => 64,
                          '128' => 'ADC',
                          '224' => 'STNL',
                          'AJW' => 176,
                          'J' => 0,
                          '208' => 'STL',
                          '64' => 'LDC',
                          '16' => 'LDLP',
                          'PFIX' => 32,
                          'STL' => 208,
                          '32' => 'PFIX',
                          'CJ' => 160,
                          'STNL' => 224,
                          '112' => 'LDL',
                          '240' => 'OPR',
                          '80' => 'LDNLP',
                          'LDNLP' => 80,
                          '176' => 'AJW',
                          'EQC' => 192,
                          '192' => 'EQC',
                          '144' => 'CALL',
                          'NFIX' => 96,
                          '96' => 'NFIX',
                          '48' => 'LDNL',
                          '0' => 'J',
                          '160' => 'CJ',
                          'ADC' => 128,
                          'CALL' => 144
                        },
           'tvm_ins' => [
                          [
                            'UNPACKSN',
                            99
                          ],
                          [
                            'POSTNORMSN',
                            108
                          ],
                          [
                            'ROUNDSN',
                            109
                          ],
                          [
                            'LDINF',
                            113
                          ],
                          [
                            'FMUL',
                            114
                          ],
                          [
                            'FPLDNLDBI',
                            130
                          ],
                          [
                            'FPCHECKERR',
                            131
                          ],
                          [
                            'FPSTNLDB',
                            132
                          ],
                          [
                            'FPLDNLSNI',
                            134
                          ],
                          [
                            'FPADD',
                            135
                          ],
                          [
                            'FPSTNLSN',
                            136
                          ],
                          [
                            'FPSUB',
                            137
                          ],
                          [
                            'FPLDNLDB',
                            138
                          ],
                          [
                            'FPMUL',
                            139
                          ],
                          [
                            'FPDIV',
                            140
                          ],
                          [
                            'FPLDNLSN',
                            142
                          ],
                          [
                            'FPNAN',
                            145
                          ],
                          [
                            'FPORDERED',
                            146
                          ],
                          [
                            'FPNOTFINITE',
                            147
                          ],
                          [
                            'FPGT',
                            148
                          ],
                          [
                            'FPEQ',
                            149
                          ],
                          [
                            'FPI32TOR32',
                            150
                          ],
                          [
                            'FPI32TOR64',
                            152
                          ],
                          [
                            'FPB32TOR64',
                            154
                          ],
                          [
                            'FPRTOI32',
                            157
                          ],
                          [
                            'FPSTNLI32',
                            158
                          ],
                          [
                            'FPLDZERODB',
                            160
                          ],
                          [
                            'FPINT',
                            161
                          ],
                          [
                            'FPDUP',
                            163
                          ],
                          [
                            'FPREV',
                            164
                          ],
                          [
                            'FPLDNLADDDB',
                            166
                          ],
                          [
                            'FPLDNLMULDB',
                            168
                          ],
                          [
                            'FPLDNLADDSN',
                            170
                          ],
                          [
                            'FPLDNLMULSN',
                            172
                          ],
                          [
                            'FPREM',
                            207
                          ],
                          [
                            'I64TOREAL',
                            208
                          ],
                          [
                            'FPDIVBY2',
                            209
                          ],
                          [
                            'FPMULBY2',
                            210
                          ],
                          [
                            'FPSQRT',
                            211
                          ],
                          [
                            'FPRZ',
                            214
                          ],
                          [
                            'FPR32TOR64',
                            7
                          ],
                          [
                            'FPR64TOR32',
                            8
                          ],
                          [
                            'FPEXPDEC32',
                            217
                          ],
                          [
                            'FPABS',
                            219
                          ],
                          [
                            'FPCHKI64',
                            223
                          ],
                          [
                            'DISC',
                            47
                          ],
                          [
                            'DIST',
                            46
                          ],
                          [
                            'DISS',
                            48
                          ],
                          [
                            'ALT',
                            67
                          ],
                          [
                            'ALTWT',
                            68
                          ],
                          [
                            'ALTEND',
                            69
                          ],
                          [
                            'ENBT',
                            71
                          ],
                          [
                            'ENBC',
                            72
                          ],
                          [
                            'ENBS',
                            73
                          ],
                          [
                            'TALT',
                            78
                          ],
                          [
                            'TALTWT',
                            81
                          ],
                          [
                            'XBWORD',
                            184
                          ],
                          [
                            'LBX',
                            185
                          ],
                          [
                            'CB',
                            186
                          ],
                          [
                            'CBU',
                            187
                          ],
                          [
                            'SSUB',
                            193
                          ],
                          [
                            'CIR',
                            199
                          ],
                          [
                            'SS',
                            200
                          ],
                          [
                            'LS',
                            202
                          ],
                          [
                            'CIRU',
                            204
                          ],
                          [
                            'XSWORD',
                            248
                          ],
                          [
                            'LSX',
                            249
                          ],
                          [
                            'CS',
                            250
                          ],
                          [
                            'CSU',
                            251
                          ],
                          [
                            'DUP',
                            90
                          ],
                          [
                            'WSUBDB',
                            129
                          ],
                          [
                            'BOOLINVERT',
                            35
                          ],
                          [
                            'WIDENSHORT',
                            36
                          ],
                          [
                            'FFICALL',
                            37
                          ],
                          [
                            'LEND3',
                            38
                          ],
                          [
                            'LENDB',
                            39
                          ],
                          [
                            'RESCHEDULE',
                            40
                          ],
                          [
                            'EXTVRFY',
                            20
                          ],
                          [
                            'EXTIN',
                            96
                          ],
                          [
                            'EXTOUT',
                            97
                          ],
                          [
                            'EXT_MT_IN',
                            587
                          ],
                          [
                            'EXT_MT_OUT',
                            588
                          ],
                          [
                            'GETPRI',
                            162
                          ],
                          [
                            'SETPRI',
                            165
                          ],
                          [
                            'SAVECREG',
                            173
                          ],
                          [
                            'RESTORECREG',
                            174
                          ],
                          [
                            'SEMINIT',
                            122
                          ],
                          [
                            'SEMCLAIM',
                            123
                          ],
                          [
                            'SEMRELEASE',
                            124
                          ],
                          [
                            'CHECKNOTNULL',
                            224
                          ],
                          [
                            'XABLE',
                            232
                          ],
                          [
                            'XIN',
                            233
                          ],
                          [
                            'XEND',
                            236
                          ],
                          [
                            'NULL',
                            253
                          ],
                          [
                            'MRELEASEP',
                            17
                          ],
                          [
                            'MALLOC',
                            226
                          ],
                          [
                            'MRELEASE',
                            227
                          ],
                          [
                            'MT_ALLOC',
                            568
                          ],
                          [
                            'MT_RELEASE',
                            569
                          ],
                          [
                            'MT_CLONE',
                            570
                          ],
                          [
                            'MT_IN',
                            571
                          ],
                          [
                            'MT_OUT',
                            572
                          ],
                          [
                            'MT_XCHG',
                            573
                          ],
                          [
                            'MT_LOCK',
                            574
                          ],
                          [
                            'MT_UNLOCK',
                            575
                          ],
                          [
                            'MT_ENROLL',
                            576
                          ],
                          [
                            'MT_RESIGN',
                            577
                          ],
                          [
                            'MT_SYNC',
                            578
                          ],
                          [
                            'MT_XIN',
                            579
                          ],
                          [
                            'MT_XOUT',
                            580
                          ],
                          [
                            'MT_XXCHG',
                            581
                          ],
                          [
                            'MT_DCLONE',
                            582
                          ],
                          [
                            'MT_BIND',
                            583
                          ],
                          [
                            'PROC_ALLOC',
                            559
                          ],
                          [
                            'PROC_PARAM',
                            560
                          ],
                          [
                            'PROC_MT_COPY',
                            561
                          ],
                          [
                            'PROC_MT_MOVE',
                            562
                          ],
                          [
                            'PROC_START',
                            563
                          ],
                          [
                            'PROC_END',
                            564
                          ],
                          [
                            'GETAFF',
                            565
                          ],
                          [
                            'SETAFF',
                            566
                          ],
                          [
                            'GETPAS',
                            567
                          ],
                          [
                            'LDTIMER',
                            34
                          ],
                          [
                            'TIN',
                            43
                          ],
                          [
                            'IN',
                            7
                          ],
                          [
                            'OUT',
                            11
                          ],
                          [
                            'OUTBYTE',
                            14
                          ],
                          [
                            'OUTWORD',
                            15
                          ],
                          [
                            'MB',
                            584
                          ],
                          [
                            'RMB',
                            585
                          ],
                          [
                            'WMB',
                            586
                          ],
                          [
                            'REV',
                            0
                          ],
                          [
                            'LB',
                            1
                          ],
                          [
                            'BSUB',
                            2
                          ],
                          [
                            'ENDP',
                            3
                          ],
                          [
                            'DIFF',
                            4
                          ],
                          [
                            'ADD',
                            5
                          ],
                          [
                            'GCALL',
                            6
                          ],
                          [
                            'PROD',
                            8
                          ],
                          [
                            'GT',
                            9
                          ],
                          [
                            'WSUB',
                            10
                          ],
                          [
                            'SUB',
                            12
                          ],
                          [
                            'STARTP',
                            13
                          ],
                          [
                            'SETERR',
                            16
                          ],
                          [
                            'CSUB0',
                            19
                          ],
                          [
                            'STOPP',
                            21
                          ],
                          [
                            'LADD',
                            22
                          ],
                          [
                            'NORM',
                            25
                          ],
                          [
                            'LDPI',
                            27
                          ],
                          [
                            'XDBLE',
                            29
                          ],
                          [
                            'REM',
                            31
                          ],
                          [
                            'RET',
                            32
                          ],
                          [
                            'LEND',
                            33
                          ],
                          [
                            'DIV',
                            44
                          ],
                          [
                            'LMUL',
                            49
                          ],
                          [
                            'NOT',
                            50
                          ],
                          [
                            'XOR',
                            51
                          ],
                          [
                            'LSHR',
                            53
                          ],
                          [
                            'LSHL',
                            54
                          ],
                          [
                            'LSUM',
                            55
                          ],
                          [
                            'LSUB',
                            56
                          ],
                          [
                            'RUNP',
                            57
                          ],
                          [
                            'SB',
                            59
                          ],
                          [
                            'GAJW',
                            60
                          ],
                          [
                            'SHR',
                            64
                          ],
                          [
                            'SHL',
                            65
                          ],
                          [
                            'MINT',
                            66
                          ],
                          [
                            'AND',
                            70
                          ],
                          [
                            'MOVE',
                            74
                          ],
                          [
                            'OR',
                            75
                          ],
                          [
                            'CSNGL',
                            76
                          ],
                          [
                            'CCNT1',
                            77
                          ],
                          [
                            'LDIFF',
                            79
                          ],
                          [
                            'SUM',
                            82
                          ],
                          [
                            'MUL',
                            83
                          ],
                          [
                            'STOPERR',
                            85
                          ],
                          [
                            'CWORD',
                            86
                          ],
                          [
                            'POP',
                            121
                          ],
                          [
                            'SHUTDOWN',
                            254
                          ]
                        ]
         };

sub get ($) {
	my $key = shift;
	return $STORE->{$key};
}


package Transputer::Instructions;

use strict;

sub new ($) {
	my ($class) = @_;

	my $self = {
		'pri'	=> PLinker::get ('ins_pri'),
		'sec'	=> PLinker::get ('ins_sec')
	};

	$self = bless $self, $class;

	return $self;
}

sub compile ($$) {
	my ($store, $fn) = @_;
	my $pri = {};
	my $sec = {};
	my $ins;
	my $fh;

	open ($fh, $fn) || die $!;
	while (my $line = <$fh>) {
		$ins = $pri if $line =~ /primary instructions/;
		$ins = $sec if $line =~ /secondary instructions/;
		next if $line !~ /^#define I_(.+?)\s+(.*)/;
		
		my ($name, $value) = ($1, $2);
		my $v;
		
		$value =~ s/\/\/.*//;
		$value =~ s/\/\*.*\*\///;
		$value =~ s/\s+$//;
		
		if ($value =~ /^0x[0-9a-f]+$/i) {
			$v = hex ($value);
		} elsif ($value =~ /\(\s*0x([0-9a-f]+)\s*\|\s*I_([0-9a-z]+)\s*\)/i) {
			my ($value, $shift)	= ($1, $2);
			$v = hex ($value);
			if ($shift eq 'NEGATIVE') {
				$v = -$v;
			} else {
				$v |= $ins->{$shift};
			}
		}

		$ins->{$name}	= $v;
		$ins->{$v}	= $name;
	}
	close ($fh);

	$store->{'ins_pri'} = $pri;
	$store->{'ins_sec'} = $sec;
}

sub valid_primary ($$) {
	my ($self, $pri) = @_;
	return 1 if exists ($self->{'pri'}->{$pri});
}

sub valid_secondary ($$) {
	my ($self, $sec) = @_;
	return 1 if exists ($self->{'sec'}->{$sec});
}

sub valid_instruction ($$) {
	my ($self, $n) = @_;
	return ($self->valid_primary ($n) || $self->valid_secondary ($n));
}

sub primary ($$) {
	my ($self, $key) = @_;
	return $self->{'pri'}->{$key};
}

sub secondary ($$) {
	my ($self, $key) = @_;
	return $self->{'sec'}->{$key};
}

sub numeric ($$) {
	my ($self, $name) = @_;
	my $num = $self->{'pri'}->{$name} || $self->{'sec'}->{$name} || undef;
	return $num if $num =~ /^\d+$/;
}

package Transterpreter::Instructions;

use strict;

@Transterpreter::Instructions::ISA = qw(Transputer::Instructions);

sub new ($) {
	my ($class) = @_;
	my $self = new Transputer::Instructions ();
	$self = bless $self, $class;
	$self->load_tvm_instructions ();
	return $self;
}

sub load_tvm_instructions ($) {
	my ($self) = @_;
	my $data = PLinker::get ('tvm_ins');

	$self->{'tvm'} = {};

	foreach my $tuple (@$data) {
		my ($name, $number) = @$tuple;
		if (!$self->valid_instruction ($name)) {
			$self->{'tvm'}->{$number}	= $name;
			$self->{'tvm'}->{$name}		= $number;
		}
	}
}

sub compile ($$) {
	my ($store, $dir) = @_;
	my @data;
	my $dh;

	if (!opendir ($dh, $dir)) {
		print STDERR "Unable to open directory $dir: $!\n";
		return;
	}

	while (my $fn = readdir ($dh)) {
		next if $fn =~ /^\./;
		load_tvm_header (\@data, "$dir/$fn") if $fn =~ /\.h$/;
	}

	closedir ($dh);

	$store->{'tvm_ins'} = \@data;
}

sub load_tvm_header ($$) {
	my ($data, $fn) = @_;
	my $fh;

	open ($fh, $fn) || return;
	while (my $line = <$fh>) {
		next if $line !~ /^\/\*\s+0x([0-9a-f]+)\s+-[x \t0-9a-f]+-\s+(\S+).*\*\//i;
		my ($number, $name) = ($1, $2);
		$number = hex ($number);
		$name =~ tr/a-z/A-Z/;
		$name =~ s/^INS_//;
		push (@$data, [ $name, $number ]);
	}
	close ($fh);
}

sub valid_instruction ($$) {
	my ($self, $n) = @_;
	return (
		$self->valid_primary ($n)	|| 
		$self->valid_secondary ($n)	||
		exists ($self->{'tvm'}->{$n})
	);
}

sub numeric ($$) {
	my ($self, $name) = @_;
	my $num =
		$self->{'pri'}->{$name} || 
		$self->{'sec'}->{$name} || 
		$self->{'tvm'}->{$name} ||
		undef;

	return $num if $num =~ /^\d+$/;
}

#
#  Perl code for linking and assembling bytecode for the TVM
#  Copyright (C) 2008 Carl Ritson <cgr@kent.ac.uk>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
#


package Transputer::TCOFF;

use strict;

sub new ($$) {
	my ($class, $tcoff_h) = @_;

	my $self	= {
		'tcoff'	=> PLinker::get ('tcoff')
	};
	
	$self = bless $self, $class;

	return $self;
}

sub read_int ($) {
	my $fh = shift;
	my $b;

	read ($fh, $b, 1) || return;
	$b = unpack ('C', $b);

	if ($b > 250 && $b <= 255) {
		my ($len, $n);

		if ($b == 255) {
			$len = 4;
		} else {
			$len = (1 << ($b - 251));
		}

		die "Invalid length $len" if $len > 4;

		read ($fh, $n, $len) || return;
		
		if ($len == 1) {
			$n = unpack ('C', $n);
		} elsif ($len == 2) {
			$n = unpack ('v', $n);
		} else {
			$n = unpack ('V', $n);
		}
		
		$n ^= $n if $b == 255;

		return $n;
	} else {
		return $b;
	}
}

sub decode_int {
	my ($self, $data);
	
	if (@_ > 1) {
		($self, $data) = @_;
	} else {
		($data) = @_;
	}

	my $b = unpack ('C', substr ($data, 0, 1));

	if ($b > 250 && $b <= 255) {
		my ($len, $n);

		if ($b == 255) {
			$len = 4;
		} else {
			$len = (1 << ($b - 251));
		}

		die "Invalid length $len" if $len > 4;

		my $n = substr ($data, 1, $len);
		
		if ($len == 1) {
			$n = unpack ('C', $n);
		} elsif ($len == 2) {
			$n = unpack ('v', $n);
		} else {
			$n = unpack ('V', $n);
		}
		
		$n ^= $n if $b == 255;

		return ($n, substr ($data, $len + 1));
	} else {
		return ($b, substr ($data, 1));
	}
}

sub read_file ($$) {
	my ($self, $filename)	= @_;
	my $tcoff		= $self->{'tcoff'};
	
	my $fh;
	my %sections;
	my @sections;

	if (!open ($fh, $filename)) {
		print STDERR "Unable to open $filename: $!\n";
		return;
	}

	binmode ($fh);
	while (!eof ($fh)) {
		my $r_tag	= read_int ($fh);
		my $r_len	= read_int ($fh);
		my $tag		= $tcoff->{$r_tag} || $r_tag;
		my $data;
		
		if ($r_len && !read ($fh, $data, $r_len)) {
			return;
		}
		
		my $section	= {
			'tag' 		=> $tag,
			'length'	=> $r_len,
			'data'		=> $data
		};

		$sections{$tag} = [] if !$sections{$tag};
		push (@{$sections{$tag}}, $section);
		push (@sections, $section);
	}
	close ($fh);

	$sections{'sections'} = \@sections;
	
	$self->decode_comments (\%sections);
	$self->decode_symbols (\%sections);

	return \%sections;
}

sub decode_symbols ($$) {
	my ($self, $file) 	= @_;
	my $tcoff		= $self->{'tcoff'};
	my $symbol_id		= 0;
	my %symbols;

	foreach my $section (@{$file->{'sections'}}) {
		my $tag		= $section->{'tag'};
		my $data	= $section->{'data'};

		if ($tag eq 'SECTION' || $tag eq 'SYMBOL' || $tag eq 'SPECIFIC_SYMBOL') {
			my ($type, $scope, $len, $str, $origin_id);

			($type, $data)	= decode_int ($data)
				if $tag eq 'SECTION';

			($scope, $data) = decode_int ($data);
			($len, $data)	= decode_int ($data);

			$str		= substr ($data, 0, $len);
			$data		= substr ($data, $len);
			
			($origin_id, $data) = decode_int ($data)
				if $tag eq 'SPECIFIC_SYMBOL';

			my $sym = {
				'type'		=> $type,
				'scope'		=> $scope, 
				'string'	=> $str,
				'origin_id'	=> $origin_id
			};
			$symbols{'@' . $symbol_id++}	= $sym;
			$symbols{$str}			= $sym;
		} elsif ($tag eq 'DESCRIPTOR') {
			my ($id, $data) = decode_int ($data);

			$id = '@' . $id;
			
			if (exists ($symbols{$id}) && $symbols{$id}->{'scope'} == ($tcoff->{'EXPORT_USAGE'} | $tcoff->{'ROUTINE_USAGE'})) {
				my $symbol	= $symbols{$id};
				my ($lang, $p_len, $ws, $vs, $ms);

				($lang, $data)	= decode_int ($data);
				($p_len, $data)	= decode_int ($data);
				($ws, $data)	= decode_int ($data);
				($vs, $data)	= decode_int ($data);
				($ms, $data)	= decode_int ($data);

				$symbol->{'definition'} = $data;
				$symbol->{'ws'}		= $ws;
				$symbol->{'vs'}		= $vs;
				$symbol->{'ms'}		= $ms;
			}
		}
	}

	$file->{'symbols'} = \%symbols;
}

sub decode_comments ($$) {
	my ($self, $file) 	= @_;
	my $tcoff		= $self->{'tcoff'};
	
	foreach my $comment (@{$file->{'COMMENT'}}) {
		my ($copy, $print, $s_len);
		my $data	= $comment->{'data'};

		($copy, $data)	= decode_int ($data);
		($print, $data)	= decode_int ($data);
		($s_len, $data) = decode_int ($data);

		if ($print && $data =~ /^(\.[A-Z0-9\.]+)\s*(.+)$/) {
			my ($cmd, $data) = ($1, $2);
			$file->{$cmd} = [] if !$file->{$cmd};
			push (@{$file->{$cmd}}, $data);
		}
	}
}

sub compile ($$) {
	my ($store, $fn) = @_;
	my $tcoff = {};
	my $fh;

	open ($fh, $fn) || die $!;
	while (my $line = <$fh>) {
		if ($line =~ /^#define (.+?)_TAG\s+(\d+)/) {
			my ($name, $value) = ($1, $2);
			
			$tcoff->{$name}	 = $value;
			$tcoff->{$value} = $name if !exists ($tcoff->{$value});
		} elsif ($line =~ /^#define (.+?)\s+(\d+|0x[0-9a-f]+)\s*$/) {
			my ($name, $value) = ($1, $2);
			$value = hex ($value) if $value =~ /^0x/;

			$tcoff->{$name}	 = $value;
			$tcoff->{$value} = $name if !exists ($tcoff->{$value});
		}
	}
	close ($fh);

	$store->{'tcoff'} = $tcoff;
}


package Transputer::ETC;

use strict;

sub new ($$) {
	my ($class, $instruct_h) = @_;

	my $self	= {
		'instr'	=> new Transputer::Instructions ($instruct_h),
	};
	
	$self = bless $self, $class;

	$self->define_constants ();

	return $self;
}

sub decode_fn_opd ($$$) {
	my ($self, $data, $pos) = @_;
	my $instr		= $self->{'instr'};
	my $PFIX 		= $instr->primary ('PFIX');
	my $NFIX 		= $instr->primary ('NFIX');
	my ($fn, $opd) 		= (0, 0);
	
	while ($pos < @$data) {
		my $b	= unpack ('C', $data->[$pos++]);
		$fn	= ($b & 0xf0);
		$opd 	= $opd | ($b & 0x0f);
		
		if ($fn == $PFIX) {
			$opd <<= 4;
		} elsif ($fn == $NFIX) {
			$opd = ((~$opd) << 4) & 0xffffffff;
		} else {
			return ($fn, $opd, $pos);
		}
	}

	return (undef, undef, undef);
}

sub fix_sign ($) {
	my $val = shift;
	$val = $val - (2 ** 32) if $val >= (2 ** 31);
	return $val;
}

sub decode ($$) {
	my ($self, $data)	= @_;
	my @data		= split (//, $data);
	my $instr		= $self->{'instr'};
	my $LDC			= $instr->primary ('LDC');
	my $OPR			= $instr->primary ('OPR');
	my $pos			= 0;
	my @text;

	while ($pos < @data) {
		my ($fn, $opd);
		
		($fn, $opd, $pos) = $self->decode_fn_opd (\@data, $pos);
		return if !defined ($pos);

		if ($fn == $OPR) {
			if ($instr->valid_secondary ($opd)) {
				push (@text, { 
					'name' => $instr->secondary ($opd)
				});
			} elsif (exists ($self->{$opd})) {
				my $tag		= $self->{$opd};
				my @params	= split (//, $tag->{'p'});

				for (my $i = 0; $i < @params; ++$i) {
					my $p = $params[$i];
					my ($fn, $opd);
				
					($fn, $opd, $pos) = $self->decode_fn_opd (\@data, $pos);
					return if !defined ($pos);

					if ($p =~ /^[bcdlsx]$/ && $fn != $LDC) {
						die "Invalid operation while loading constant: $fn $opd";
					}

					if ($p =~ /^[bs]$/) {
						return if $pos + $opd >= @data;
						$p	= join ('', @data[$pos..($pos + $opd - 1)]);
						$pos	= $pos + $opd;
					} elsif ($p eq 'l') {
						$p = "L$opd";
					} elsif ($p eq 'c') {
						$p = $opd;
					} elsif ($p eq 'x') {
						die "Unknown special $opd" if !exists ($tag->{'specials'}->{$opd});
						$p = { 'name' => $tag->{'specials'}->{$opd} };
					} else {
						my $name = $instr->primary ($fn);
						if ($tag->{'name'} eq 'LABEL' && (@params == 1)) {
							if ($name eq 'LDC') {
								push (@params, 'i');
							}	
							$opd = "L$opd";
						} else {
							$opd = fix_sign ($opd);
						}
						$p = { 
							'name'	=> $name, 
							'arg'	=> $opd
						};
					}

					$params[$i] = $p;
				}
				
				push (@text, {
					'name' 	=> '.' . $tag->{'name'},
					'arg'	=>
						(@params <= 1	? 
						 $params[0]	:
						 \@params)
				});
			} else {
				die "Unknown operation operand $opd";
			}
		} else {
			push (@text, {
				'name'	=> $instr->primary ($fn),
				'arg'	=> fix_sign ($opd)
			});
		}
	}

	return @text;
}

sub decode_str ($$) {
	my ($self, $data) = @_;
	my ($code, $str_len);
	$code = substr ($data, 0, 2);
	$data = substr ($data, 2);
	($str_len, $data) = Transputer::TCOFF::decode_int ($data);
	return substr ($data, 0, $str_len);
}

sub decode_load_text ($$) {
	my ($self, $data) = @_;
	my $code_len;
	($code_len, $data) = Transputer::TCOFF::decode_int ($data);
	return $self->decode (substr ($data, 0, $code_len));
}

sub define_constants ($) {
	my $self = shift;
	my %tags = (
		# Annotations
		'SPECIAL'	=> { 'i' => 0x00, 'p' => 'x' },
		'TSDEPTH'	=> { 'i' => 0x01 },
		'FUNCRESULTS'	=> { 'i' => 0x02 },
		'FUNCRETURN'	=> { 'i' => 0x03 },
		'ENDWS'		=> { 'i' => 0x04 },
		'REALRESULT'	=> { 'i' => 0x05 },
		'SETLAB'	=> { 'i' => 0x06 },
		'SECTIONLAB'	=> { 'i' => 0x07 },
		'ALIGN'		=> { 'i' => 0x08 },
		'LINE'		=> { 'i' => 0x09 },
		'DEBUGLINE'	=> { 'i' => 0x0a },
		'SETWS'		=> { 'i' => 0x0b },
		'SETVS'		=> { 'i' => 0x0c },
		'SLLIMM'	=> { 'i' => 0x0d, 'p' => 'c' },
		'SLRIMM'	=> { 'i' => 0x0e, 'p' => 'c' },
		'LOOPHEADTOP'	=> { 'i' => 0x0f },
		# Strings
		'STUBNAME'	=> { 'i' => 0x11, 'p' => 's' },
		'GLOBAL'	=> { 'i' => 0x12, 'p' => 's' },
		'JUMPENTRY'	=> { 'i' => 0x13, 'p' => 's' },
		'PROC'		=> { 'i' => 0x14, 'p' => 's' },
		'FILENAME'	=> { 'i' => 0x15, 'p' => 's' },
		'OCCCOMMENT'	=> { 'i' => 0x16, 'p' => 's' },
		'CODEMAP'	=> { 'i' => 0x17, 'p' => 's' },
		'DATABYTES'	=> { 'i' => 0x18, 'p' => 'b' },
		'MESSAGEBYTES'	=> { 'i' => 0x19, 'p' => 'b' },
		'LOADLABELNAME'	=> { 'i' => 0x1a, 'p' => 's' },
		'LOADCODEMAPNAME'=> { 'i' => 0x1b, 'p' => 's' },
		'GLOBALEND'	=> { 'i' => 0x1c, 'p' => 's' },
		# Labels
		'LABEL'		=> { 'i' => 0x20, 'p' => 'i' },
		'LEND'		=> { 'i' => 0x21, 'p' => 'pll' },
		'LEND3'		=> { 'i' => 0x22, 'p' => 'pll' },
		'LENDB'		=> { 'i' => 0x23, 'p' => 'pll' },
		'MS_USAGE'	=> { 'i' => 0x24 },
		'MS_INIT'	=> { 'i' => 0x25 },
		'TCOFF_RECORD'	=> { 'i' => 0x26 },
		'LOADWSMAP'	=> { 'i' => 0x27 },
		'UNLOADWSMAP'	=> { 'i' => 0x28 },
	);
	my %specials = (
		'BOOLINVERT'	=> 1,
		'STARTTABLE'	=> 2,
		'WIDENSHORT'	=> 3,
		'LOOPHEADBOT'	=> 4,
		'CONTRSPLIT'	=> 5,
		'CONTRJOIN'	=> 6,
		'I64TOREAL'	=> 7,
		'NOTPROCESS'	=> 8,
		'FPPOP'		=> 9,
		'CHECKNOTNULL'	=> 10,
		'SEMCLAIM'	=> 11,
		'SEMRELEASE'	=> 12,
		'SEMINIT'	=> 13,
		'RESCHEDULE'	=> 14,
		'INDIRECT_AREG'	=> 15,
		'INDIRECT_BREG'	=> 16,
		'INDIRECT_CREG'	=> 17,
		'RMWSMAP'	=> 18,
		'MPPCLONE'	=> 19,
		'MPPSERIALISE'	=> 20,
		'MPPDESERIALISE'=> 21,
		'LOADCODEMAP'	=> 22,
		'R32SIN'	=> 30,
		'R64SIN'	=> 31,
		'R32COS'	=> 32,
		'R64COS'	=> 33,
		'DTRACE'	=> 34,
		'KILLCALL'	=> 35,
		'WAIT_FOR_INTERRUPT' => 36,
		'R32TAN'	=> 37,
		'R64TAN'	=> 38
	);

	foreach my $key (keys (%specials)) {
		$specials{$specials{$key}} = $key;
	}

	$tags{'SPECIAL'}->{'specials'} = \%specials;

	foreach my $key (keys (%tags)) {
		my $val = $tags{$key};
		my $opd = $val->{'i'} | 0xffffff00;
		$val->{'name'}	= $key;
		$val->{'opd'}	= $opd;
		$val->{'p'}	= 'c' if !exists ($val->{'p'});
		$self->{$key}	= $val;
		$self->{$opd}	= $val;
	}
}


package main;

use strict;
use Data::Dumper;

# ETC Decoder
my $etc		= new Transputer::ETC ();

# TCOFF Decoder
my $tcoff	= new Transputer::TCOFF ();

# Command Line Parsing
my ($first, @files) = @ARGV;
my $comments;
if ($first eq '-C') {
	$comments = 1;
} elsif ($first) {
	unshift (@files, $first) if $first ne '--';
}

if (!@files) {
	print "tce-dump.pl [-C] <file> [<file> ...]\n";
	exit 1;
}

foreach my $file (@files) {
	# Decode
	my $data = $tcoff->read_file ($file);
	die "Failed to read $file" if !$data;

	if ($comments) {
		foreach my $comment (@{$data->{'COMMENT'}}) {
			my $data = $etc->decode_str ($comment->{'data'});
			print "$data\n";
		}
	} else {
		# Textualise
		foreach my $section (@{$data->{'LOAD_TEXT'}}) {
			my @text	= $etc->decode_load_text ($section->{'data'});
			my $indent	= "";

			if (!@text) {
				print STDERR "Failed to decode a text segment...\n";
				next;
			}

			foreach my $op (@text) {
				my $name = $op->{'name'};

				print_op ($indent, $op);
				
				if ($name eq '.PROC') {
					$indent = "\t";
				} elsif ($name eq '.GLOBALEND' || $name eq '.SECTIONLAB') {
					$indent = "";
				}
			}
		}
	}
}

exit 0;

sub print_op ($$) {
	my ($indent, $op)	= @_;
	my %indent		= (
		'.PROC'		=> "",
		'.STUBNAME'	=> "",
		'.GLOBALEND'	=> ""
	);

	my $name	= $op->{'name'};
	my $arg		= $op->{'arg'};

	if (exists ($indent{$name})) {
		$indent = $indent{$name};
	};

	if ($name eq '.OCCCOMMENT') {
		$arg =~ s/[\r\n]/ /gs;
		print "-- $arg\n";
	} elsif ($name =~ /^\.(SET|SECTION)LAB$/) {
		print "\n" if $name eq '.SECTIONLAB';
		print ".L$arg:\n";
	} elsif ($name =~ /\..*BYTES$/) {
		my $bytes	= unpack ('H*', $arg);
		my @bytes	= ($bytes =~ /(..)/g);
		my $text	= join (' ', @bytes) . ' ';
		my @lines	= ($text =~ /(.{0,48})/g);
		print "$name ", length ($arg), "\n";
		foreach my $line (@lines) {
			print "\t$line\n" if $line;
		}
	} elsif ($name eq '.LABEL' && ref ($arg) =~ /^ARRAY/) {
		my $l1 = $arg->[0];
		my $l2 = $arg->[1];
		if ($l2->{'arg'} < 0) {
			print_op ($indent, $l1);
		} else {
			print $indent, $l1->{'name'}, "\t", $l1->{'arg'}, "-L", $l2->{'arg'}, "\n";
		}
	} elsif (exists ($op->{'arg'})) {
		if (ref ($arg)) {
			my @params = ref ($arg) =~ /^ARRAY/ ? @$arg : ( $arg );
			my @tparam;
			foreach my $p (@params) {
				if (ref ($p)) {
					print_op ($indent, $p);
				} else {
					push (@tparam, $p);
				}
			}
			if (@tparam) {
				print $indent, "$name\t", join (', ', @tparam), "\n";
			} else {
				#print $indent, $name, "\n";
			}
		} else {
			print $indent, "$name\t$arg\n";
		}
	} else {
		print $indent, "$name\n";
	}
}
