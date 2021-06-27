#!/bin/bash -x

Head=1;
randomcheck=$((RANDOM%2));

case $randomcheck in
                 $Head)
                 echo Heads
                 ;;
                 *)
                 echo Tails
                 ;;
esac

