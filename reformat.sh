#!/usr/bin/env bash

reformat() {
    wrap-and-sort -d "${1}" -a -s -t
}

d="${1}"
if [ -d "${d}" -a -d "${d}/debian" ]; then
    reformat "${d}/debian"
else
    for d in *; do
        if [ -d "${d}/debian" ]; then
            reformat "${d}/debian"
        fi
    done
fi
