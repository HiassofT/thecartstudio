#!/bin/sh
cd "$(dirname $0)"

set -e
mads CartMenu-Extended.asm -o:cartmenu-extended.rom -p -t:CartMenu-Extended.lab -l:CartMenu-Extended.lst

