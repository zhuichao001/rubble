#!/bin/bash

if [ $# != 1 ] ; then
  echo "USAGE: $0 DEVICE_NAME"
  echo " e.g.: $0 eth0"
  exit 1
fi

ethn=$1 #netdev name
 
while true
do
  RX_pre=$(cat /proc/net/dev | grep $ethn | sed 's/:/ /g' | awk '{print $2}')
  TX_pre=$(cat /proc/net/dev | grep $ethn | sed 's/:/ /g' | awk '{print $10}')
  sleep 1
  RX_next=$(cat /proc/net/dev | grep $ethn | sed 's/:/ /g' | awk '{print $2}')
  TX_next=$(cat /proc/net/dev | grep $ethn | sed 's/:/ /g' | awk '{print $10}')
  
  clear
  echo -e "\t RX `date +%k:%M:%S` TX"
  
  RX=$((${RX_next}-${RX_pre}))
  TX=$((${TX_next}-${TX_pre}))
  
  if [[ $RX -lt 1024 ]];then
    RX="${RX}B/s"
  elif [[ $RX -gt 1048576 ]];then
    RX=$(echo $RX | awk '{print $1/1048576 "MB/s"}')
  else
    RX=$(echo $RX | awk '{print $1/1024 "KB/s"}')
  fi
  
  if [[ $TX -lt 1024 ]];then
    TX="${TX}B/s"
  elif [[ $TX -gt 1048576 ]];then
    TX=$(echo $TX | awk '{print $1/1048576 "MB/s"}')
  else
    TX=$(echo $TX | awk '{print $1/1024 "KB/s"}')
  fi
  echo -e "$ethn \t $RX $TX "
done
