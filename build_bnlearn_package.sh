#!/bin/bash
reset

pushd .

# Remove Old versions
rm bnlearn_4.0.tar.gz
R CMD REMOVE --library=../install bnlearn

# build new version
R CMD build --no-build-vignettes --no-manual bnlearn

# install in our directory
R CMD INSTALL --library=../install bnlearn_4.0.tar.gz

popd
