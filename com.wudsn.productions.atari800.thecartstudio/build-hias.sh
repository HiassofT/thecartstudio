#!/bin/sh
cd "$(dirname $0)"
#ant -lib ../../wudsn-base-git/com.wudsn.tools.base.standalone/build/macos/ -f TheCartStudio-Hias.ant create_executables
ant -lib ../../wudsn-base-git/com.wudsn.tools.base.standalone/build/macos/ -f TheCartStudio-Hias.ant "$@"
