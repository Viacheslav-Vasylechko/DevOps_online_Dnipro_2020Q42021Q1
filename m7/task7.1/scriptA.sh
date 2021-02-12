#!/bin/bash

function target {
 ss -tlnp | awk '{print $4}'
}

function all {
 ip=`ip -4 a | grep inet | awk '{print $2}' | grep -v ^127`
 nmap -sn $ip | grep 'Nmap scan' | awk '{print $5, $6}'
}

function help {
  echo "--all key displays the IP addresses and symbolic names of all hosts in the current subnet"
  echo "--target key displays a list of open system TCP ports"
}

case $1 in
 --target)
      target ;;
 --all)
      all ;;
 *)
      help ;;
esac



#while getopts ":'target'" option;
#do
# case $option in
# target)
#  echo "targ" ;;
# esac
#done

