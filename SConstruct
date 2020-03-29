import os

env = Environment(
  CC        = "clang",
  CFLAGS    = ["-m32"],
  LINKFLAGS = ["-m32"]
)

Export("env")

SConscript('occ21/SConscript')
SConscript('ilibr/SConscript')
