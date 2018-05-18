licenses(["notice"])

load(":boost.bzl", "boost_library")
load(":boost.bzl", "includes_list")
load(":boost.bzl", "src_list")
load(":boost.bzl", "hdr_list")

boost_library(
    name = "algorithm",
    deps = [
        ":assert",
        ":config",
        ":function",
        ":integer",
        ":iterator",
        ":mpl",
        ":range",
        ":regex",
        ":throw_exception",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "align",
)

boost_library(
    name = "any",
    deps = [
        ":type_index",
    ],
)

boost_library(
    name = "array",
    deps = [
        ":assert",
        ":static_assert",
        ":core",
        ":detail",
        ":throw_exception",
        ":algorithm",
        ":config",
    ],
)

boost_library(
    name = "asio",
    deps = [
        ":bind",
        ":config",
        ":date_time",
        ":filesystem",
        ":mpl",
        ":regex",
        ":smart_ptr",
        ":static_assert",
        ":throw_exception",
        ":type_traits",
        ":version",
    ],
)

boost_library(
    name = "assert",
)

boost_library(
    name = "atomic",
    deps = [
        ":assert",
        ":config",
    ],
)

boost_library(
    name = "bind",
)

boost_library(
    name = "chrono",
    deps = [
        ":config",
        ":mpl",
        ":predef",
        ":ratio",
        ":utility",
        ":system",
        ":throw_exception",
    ],
)

boost_library(
    name = "concept_check",
)

boost_library(
    name = "config",
)

boost_library(
    name = "container",
    deps = [
        ":config",
        ":core",
        ":move",
        ":intrusive",
    ],
)

boost_library(
    name = "container_hash",
)

CONTEXT_K8_LINUX_ASM = [
    "context/src/asm/jump_x86_64_sysv_elf_gas.S",
    "context/src/asm/make_x86_64_sysv_elf_gas.S",
]

boost_library(
    name = "context",
    srcs = [] + CONTEXT_K8_LINUX_ASM,
    copts = [
        "-fsplit-stack",
        "-DBOOST_USE_SEGMENTED_STACKS",
    ],
    deps = [
        ":config",
    ],
)

boost_library(
    name = "conversion",
)

boost_library(
    name = "core",
    deps = [
        ":config",
    ],
)

boost_library(
    name = "date_time",
    deps = [
        ":smart_ptr",
    ],
)

boost_library(
    name = "detail",
)

boost_library(
    name = "dynamic_bitset",
    deps = [
        ":detail",
        ":move",
        ":utility",
        ":static_assert",
        ":throw_exception",
    ],
)

boost_library(
    name = "exception",
    defines = [
        "BOOST_NO_CXX11_RVALUE_REFERENCES",
    ],
    deps = [
        ":config",
        ":tuple",
    ],
)

boost_library(
    name = "filesystem",
    deps = [
        ":config",
        ":detail",
        ":functional",
        ":io",
        ":iterator",
        ":range",
        ":smart_ptr",
        ":system",
        ":type_traits",
    ],
)

boost_library(
    name = "foreach",
    deps = [
        ":mpl",
        ":range",
    ],
)

boost_library(
    name = "format",
    deps = [
        ":config",
        ":detail",
    ],
)

boost_library(
    name = "function",
    deps = [
        ":bind",
        ":integer",
        ":throw_exception",
        ":type_index",
    ],
)

boost_library(
    name = "function_types",
)

boost_library(
    name = "functional",
    deps = [
        ":detail",
    ],
)

boost_library(
    name = "fusion",
    deps = [
        ":config",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "graph",
    deps = [
        ":assert",
        ":any",
        ":core",
        ":foreach",
        ":function",
        ":multi_index",
        ":lexical_cast_and_math",
        ":parameter",
        ":property_map",
        ":property_tree",
        ":tuple",
        ":typeof",
        ":unordered",
        ":xpressive",
    ],
)

boost_library(
    name = "heap",
    deps = [
        ":parameter",
    ],
)

boost_library(
    name = "integer",
    deps = [
        ":static_assert",
    ],
)

boost_library(
    name = "interprocess",
    deps = [
        ":config",
        ":container",
        ":core",
        ":date_time",
        ":intrusive",
        ":iterator",
        ":move",
        ":type_traits",
    ],
)

boost_library(
    name = "iterator",
    deps = [
        ":detail",
        ":fusion",
        ":static_assert",
    ],
)

boost_library(
    name = "intrusive",
    deps = [
        ":assert",
        ":static_assert",
    ],
)

boost_library(
    name = "io",
)

boost_library(
    name = "lexical_cast_and_math",
    deps = [
        ":assert",
        ":array",
        ":atomic",
        ":chrono",
        ":config",
        ":container",
        ":detail",
        ":format",
        ":integer",
        ":mpl",
        ":numeric_conversion",
        ":range",
        ":static_assert",
        ":throw_exception",
        ":type_traits",
    ],
    includes = [
        "math/src/tr1/",
    ] + includes_list("lexical_cast") + includes_list("math"),
    srcs = src_list("lexical_cast") + src_list("math"),
    hdrs = hdr_list("lexical_cast") + hdr_list("math"),
)

boost_library(
    name = "move",
    deps = [
        ":assert",
        ":static_assert",
    ],
)

boost_library(
    name = "mpi",
    deps = [
        ":serialization",
        ":python",
    ],
    copts = ["-I/usr/lib/openmpi/include/openmpi/opal/mca/event/libevent2021/libevent -I/usr/lib/openmpi/include/openmpi/opal/mca/event/libevent2021/libevent/include -I/usr/lib/openmpi/include -I/usr/lib/openmpi/include/openmpi -pthread"],
    linkopts = ["-pthread -Wl,-rpath -Wl,/usr/lib/openmpi/lib -Wl,--enable-new-dtags -L/usr/lib/openmpi/lib -lmpi"],
)

boost_library(
    name = "mpl",
    deps = [
        ":move",
        ":preprocessor",
        ":predef",
        # If any target depending on mpl need to use
        # boost/type_traits/is_same.hpp, it should depend on
        # type_traits directly.
    ],
)

boost_library(
    name = "msm",
    deps = [
        ":any",
        ":assert",
        ":bind",
        ":config",
        ":core",
        ":function",
        ":fusion",
        ":mpl",
        ":parameter",
        ":proto",
        ":serialization",
        ":tuple",
        ":type_traits",
    ],
)

boost_library(
    name = "multi_index",
    deps = [
        ":foreach",
        ":serialization",
        ":static_assert",
        ":tuple",
    ],
)

boost_library(
    name = "numeric_conversion",
    deps = [
        ":conversion",
    ],
)

boost_library(
    name = "optional",
    deps = [
        ":utility",
    ],
)

boost_library(
    name = "parameter",
)

boost_library(
    name = "predef",
)

boost_library(
    name = "preprocessor",
)

boost_library(
    name = "property_map",
)

boost_library(
    name = "property_tree",
)

boost_library(
    name = "proto",
    deps = [
        ":typeof",
    ],
)

boost_library(
    name = "python",
    deps = [
        ":config",
        ":conversion",
        ":core",
        ":function",
        ":graph",
        ":mpl",
        ":iterator",
        ":numeric_conversion",
        ":smart_ptr",
        ":type_traits",
        ":utility",
        "@pythondev//:header",
        "@numpy//:header",
    ],
    copts = [
        "-Iexternal/pythondev",
        "-Iexternal/numpy",
    ],
)

boost_library(
    name = "range",
    deps = [
        ":concept_check",
        ":iterator",
        ":optional",
    ],
)

boost_library(
    name = "ratio",
    deps = [
        ":integer",
        ":type_traits",
    ],
)

boost_library(
    name = "regex",
    defines = [
        "BOOST_FALLTHROUGH",
    ],
    deps = [
        ":assert",
        ":config",
        ":container_hash",
        ":functional",
        ":integer",
        ":mpl",
        ":smart_ptr",
        ":throw_exception",
        ":type_traits",
    ],
)

boost_library(
    name = "serialization",
    deps = [
        ":assert",
        ":array",
        ":config",
        ":core",
        ":integer",
        ":io",
        ":iterator",
        ":mpl",
        ":preprocessor",
        ":smart_ptr",
        ":static_assert",
        ":spirit",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "smart_ptr",
    deps = [
        ":align",
        ":core",
        ":predef",
        ":spirit",
        ":throw_exception",
        ":utility",
    ],
)

boost_library(
    name = "spirit",
    deps = [
        ":optional",
    ],
)

boost_library(
    name = "static_assert",
)

boost_library(
    name = "system",
    deps = [
        ":assert",
        ":config",
        ":core",
        ":predef",
    ],
)

boost_library(
    name = "thread",
    defines = [
        "BOOST_NO_CXX11_RVALUE_REFERENCES",
        "BOOST_NO_CXX11_SMART_PTR",
    ],
    deps = [
        ":atomic",
        ":chrono",
        ":core",
        ":date_time",
        ":exception",
        ":io",
        ":system",
    ],
)

boost_library(
    name = "throw_exception",
    deps = [
        ":assert",
    ],
)

boost_library(
    name = "typeof",
    deps = [
        ":core",
    ],
)

boost_library(
    name = "type_index",
    deps = [
        ":container_hash",
        ":core",
        ":functional",
        ":static_assert",
        ":throw_exception",
        ":type_traits",
    ],
)

boost_library(
    name = "type_traits",
    deps = [
        ":core",
        ":mpl",
        ":static_assert",
    ],
)

boost_library(
    name = "tuple",
)

boost_library(
    name = "tr1",
    defines = [
        "BOOST_FALLTHROUGH",
    ],
    deps = [
        ":config",
    ],
)

boost_library(
    name = "unordered",
)

boost_library(
    name = "utility",
)

boost_library(
    name = "version",
)

boost_library(
    name = "xpressive",
    deps = [
        ":exception",
        ":proto",
    ],
)
