#!/bin/bash

# This script emulates build-static-libfesvr in functionality - builds SimpleSSD model into static library

set -e

make
ssd_objs=$(head -n 1 <(make -f <(echo -e 'include Makefile\n$(info $(OBJS))') -n))
ar rcs -o libssd.a $ssd_objs
