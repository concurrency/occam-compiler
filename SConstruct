import os

env = Environment(
#  CC        = "clang",
  CC="emcc",
  AR="emar",
  RANLIB="emranlib",
  CFLAGS=["-m32"],
  LINKFLAGS=["-m32", "--emrun"],
  ENV = {'PATH' : os.environ['PATH']}

)

Export("env")

SConscript('occ21/SConscript')
SConscript('ilibr/SConscript')
