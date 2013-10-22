#!/usr/bin/env bash -e

source test/setup.bash

use Foo::BPAN

output="$(Foo::BPAN:foozle 2>&1)" || rc=$?
like "$output" 'requires a name' 'Param check works'
is $rc 1 'status is 1'

output="$(Foo::BPAN:foozle ingy 2>&1)" || rc=$?
like "$output" 'Never foozle ingy' 'die works'
is $rc 1 'status is 1'

output="$(Foo::BPAN:foozle cfedde 2>&1)"
like "$output" 'O HAI' 'foozle works!'

done_testing 5
