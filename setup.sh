#!/bin/bash
shopt -s expand_aliases
alias python="python3"
cd /tmp
git clone https://github.com/cython/cython
cd cython
python setup.py build
python setup.py install
make
