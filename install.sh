#!/usr/bin/env bash

OLDPWD="$PWD"
cd ~/.vim

r="$1"

x=$(echo ${r/*\/} | sed 's/^vim-//;s/.git$//')
if [ -d bundle/$x ]; then
    echo "$x already installed"
    exit -1
fi

git submodule add $r bundle/$x
echo '    ignore = dirty' >> .gitmodules
git commit -a -m "Install $x bundle ($r);"
git push

