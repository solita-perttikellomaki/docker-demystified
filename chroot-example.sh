#!/bin/bash

mkdir -p bin lib
cp -v /bin/{bash,ls,ps} bin
for cmd in bin/bash bin/ls bin/ps
do
    list="$(ldd $cmd | egrep -o '/lib.*\.[0-9]')"
    for lib in $list
    do
        # exact version of dependency may not exist, play safe
        libname=$(sed 's/[.]so.*//g' <<<$lib)
        cp -v --parents "${libname}.so".* .
    done
done
echo "Now do:"
echo "sudo chroot . /bin/bash"

