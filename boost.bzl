includes_pattern = "%s/include"
srcs_pattern = "%s/src"
include_pattern1 = includes_pattern + "/boost/**/*h"
include_pattern2 = includes_pattern + "/boost/**/*pp"
src_pattern1 = srcs_pattern + "/**/*pp"

def includes_list( library_name ):
  return [ 
    includes_pattern % library_name,
    srcs_pattern % library_name,
  ]

def hdr_list( library_name ):
  return native.glob([
    include_pattern1 % library_name,
    include_pattern2 % library_name,
  ])

def src_list( library_name ):
  return native.glob([
    src_pattern1 % library_name,
  ])

def boost_library( name, defines=None, includes=None, hdrs=None, srcs=None, deps=None, copts=None, linkopts=None ):

  if defines == None:
    defines = []

  if includes == None:
    includes = includes_list(name)

  if hdrs == None:
    hdrs = hdr_list(name)

  if srcs == None:
    srcs = src_list(name)

  if deps == None:
    deps = []

  if copts == None:
    copts = []

  if linkopts == None:
    linkopts = []

  return native.cc_library(
    name = name,
    visibility = ["//visibility:public"],
    defines = defines,
    includes = includes,
    hdrs = hdrs,
    srcs = srcs,
    deps = deps,
    copts = copts,
    linkopts = linkopts
  )
