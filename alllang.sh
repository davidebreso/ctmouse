#!/bin/sh

if [ $# -gt 1 ] 
then
    langs=""
elif [ $# -eq 0 ] 
then
    langs="br en fr it nl pt de es hu lv pl sk"
elif [ -f ctm-$1.msg ] 
then
    langs=$1
else
    langs=""
fi
echo $langs
if [ -z "$langs" ] 
then
    echo Usage: $0 LANGUAGE builds ctm-LANGUAGE.exe using ctm-LANGUAGE.msg
    echo Running $0 without options builds all default language ctm-*.exe
    exit 1
else
    for l in $langs
    do
        echo building ctm-$l.exe...
        wmake clean
        cp ctm-$l.msg ctmouse.msg
        wmake ctmouse.exe
        mv ctmouse.exe ctm-$l.exe
    done
fi
