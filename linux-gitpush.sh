#!/bin/bash

# author: hellodk
 
# time: 2021-07-04 13:47:27
 
# script feature description: `git add .` and `git commit -m` and `git push` workflow

function gitpushflow(){
    
    time3=$(date "+%Y-%m-%d %H:%M:%S")

    CRTDIR=$(pwd)

    cd $CRTDIR

    echo

    echo "this a git push workflow in macOS or Linux, using a shell file"

    echo

    echo "current time is: $time3"

    echo

    echo "current work dir is: "$CRTDIR

    echo

    gittt="/usr/bin/git"

    echo "first step: git add ."

    $gittt add .

    sleep 2

    message="$time3 update"

    echo

    echo "second step: git commit -m 'xxxx'"

    $gittt commit -m "$message"

    sleep 2

    $gittt push

    echo

    echo "third step: git push. ending."

    echo
    
    echo "the end of the workflow."
}

gitpushflow
