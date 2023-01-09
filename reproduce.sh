#!/bin/bash
# version is not important as long is not the latest, so we can force it
# to provision it
pip install --user tox==4.2.5
# `usedevelop = true` is also key because without it it will not reach the
# the deadlock
tox --exit-and-dump-after 10 -e py
# It worth nothing that I seen this happening on both Linux and MacOS.
