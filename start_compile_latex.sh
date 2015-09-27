#!/bin/bash

# This script starts the python script to compile LaTeX documents
# It is added in the .gitignore so it should *rarely* be modified
# You can modily this file to fit your needs

cd /vagrant
mkdir -p LaTeX_documents
cd LaTeX_documents
python ../compile_latex.py &
# run the python script in the background