#!/usr/bin/env bash

exec > index

for filepath in $( find . -type f -name 'input.tal' ); do
    echo "${filepath%/*}"
done
