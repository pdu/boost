#!/bin/bash

# Clone the following directories from boostorg and checkout a selected tag.

DIRS="algorithm align asio any array assert atomic bind chrono concept_check config \
container container_hash context conversion core date_time detail dynamic_bitset exception \
filesystem foreach format function functional function_types fusion graph heap \
integer interprocess intrusive io iterator lexical_cast math move mpi mpl msm \
multi_index numeric_conversion optional parameter predef preprocessor property_map property_tree proto python range ratio regex \
serialization smart_ptr spirit static_assert system thread throw_exception \
tokenizer tuple type_index type_traits typeof unordered utility uuid xpressive"

for i in $DIRS;
do
    REPO="https://github.com/boostorg/$i.git"
    echo "Deal with $REPO"
    git clone $REPO
    pushd $i
    git checkout boost-1.67.0
    popd
done
