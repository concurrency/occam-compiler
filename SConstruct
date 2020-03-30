import os

env = Environment()

AddOption('--emscripten',
          dest='use_emscripten',
          type='string',
          nargs=1,
          action='store',
          metavar='DIR',
          help='build using emscripten')

env["ENV"] = {'PATH' : os.environ['PATH']}
env["CFLAGS"] = ["-m32"]

print(GetOption("use_emscripten"))
if GetOption("use_emscripten"):
  env.Replace(CC = "emcc")
  env.Replace(AR = "emar")
  env.Replace(RANLIB = "emranlib")
  env.Replace(LINKFLAGS = ["-m32", "--emrun"])
else:
  env.Replace(CC = "clang")
  env.Replace(LINKFLAGS = ["-m32"])

Export("env")

SConscript('occ21/SConscript')
SConscript('ilibr/SConscript')
