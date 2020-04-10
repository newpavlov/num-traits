#!/bin/sh
# Use rustup to locally run the same suite of tests as .travis.yml.
# (You should first install/update all of the versions below.)

set -ex

ci=$(dirname $0)
for version in 1.8.0 1.15.0 1.20.0 1.26.0 1.31.0 stable beta nightly; do
    rustup run "$version" "$ci/test_full.sh"
done
