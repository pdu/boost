includes_pattern = "%s/include"
include_pattern1 = includes_pattern + "/boost/**/*h"
include_pattern2 = includes_pattern + "/boost/**/*pp"
src_pattern1 = "%s/src/**/*c"
src_pattern2 = "%s/src/**/*pp"

def includes_list( library_name ):
  return [ includes_pattern % library_name ]

def hdr_list( library_name ):
  return native.glob([
    include_pattern1 % library_name,
    include_pattern2 % library_name,
  ])

def src_list( library_name ):
  return native.glob([
    src_pattern1 % library_name,
    src_pattern2 % library_name,
  ])

def boost_library( name, defines=None, includes=None, hdrs=None, srcs=None, deps=None, copts=None ):

  if defines == None:
    defines = []

  if includes == None:
    includes = []

  if hdrs == None:
    hdrs = []

  if srcs == None:
    srcs = []

  if deps == None:
    deps = []

  if copts == None:
    copts = []

  return native.cc_library(
    name = name,
    visibility = ["//visibility:public"],
    defines = defines,
    includes = includes_list(name) + includes,
    hdrs = hdr_list(name) + hdrs,
    srcs = src_list(name) + srcs,
    deps = deps,
    copts = copts,
  )
