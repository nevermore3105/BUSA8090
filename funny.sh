#!/bin/bash
# save as funny.sh

if [[ -z "$1" ]]; then
# $1 refers to the 1st argument. if it is empty that means there is no argument at all.
# -z is to check if the all the arguments are empty.
        echo "This is NOT funny"
else
# else refer to the situation where there is at least 1 argument.

        echo "This is funny"
fi
