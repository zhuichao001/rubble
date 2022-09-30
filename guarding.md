## 驻守程序
```
#! /bin/sh
PROC_NAME=''
CMD_LINE=''

while true ; do
  ALIVE_NUM=`ps aux | grep ${PROC_NAME} | grep -v grep |wc -l`
  if [ "${ALIVE_NUM}" -lt "1" ]; then
    echo "${PROC_NAME} has not been exist!"
    ${CMD_LINE}
  elif [ "${ALIVE_NUM}" -gt "1" ]; then
    echo "Too many process,killall ${PROC_NAME}"
    killall -9 $PROC_NAME
    ${CMD_LINE}
  fi

  #kill zombie process
  NUM_STAT=`ps aux | grep ${PROC_NAME} | grep T | grep -v grep | wc -l`
  if [ "${NUM_STAT}" -gt "0" ]; then
    killall -9 ${PROC_NAME}
    ${CMD_LINE}
  fi

  sleep 5
done

exit 0
```
