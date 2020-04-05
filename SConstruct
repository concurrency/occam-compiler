import os

env = Environment()

# AddOption('--emscripten',
#           dest='use_emscripten',
#           type='string',
#           nargs=1,
#           action='store',
#           metavar='DIR',
#           help='build using emscripten')


env["CFLAGS"] = ["-m32"]

use_emscripten = ARGUMENTS.get("use_emscripten", 0)

env["ENV"] = {
  'PATH' : os.environ['PATH'],
  'USE_EMSCRIPTEN' : use_emscripten,
  }

if use_emscripten:
  env.Replace(CC = "emcc")
  env.Replace(AR = "emar")
  env.Replace(RANLIB = "emranlib")
  env.Replace(LINKFLAGS = ["-m32", "--emrun"])
else:
  env.Replace(CC = "clang")
  env.Replace(LINKFLAGS = ["-m32"])

Export("env")

SConscript('occ21/SConscript')
# SConscript('ilibr/SConscript')
