#!/usr/bin/env bash -e

source test/setup.bash

source lib/foo/normal.bash

plan tests 2

ok "`Foo::Normal:good`" 'Foo::Normal:good returns status code 0'
ok "`! Foo::Normal:bad`" 'Foo::Normal:bad returns status code != 0'
