#!/bin/bash
#add fix to exercise6-fix here

ARGS=("$@")
dstFolder=${ARGS[-1]}


unset ARGS[${#ARGS[@]}-1]

if [ "$HOSTNAME" = server1 ]; then
        dstSrv="server2"
else
        dstSrv="server1"
fi

transferSize=0

for i in "${ARGS[@]}"
do
        scp $i ${dstSrv}:${dstFolder}
        fileSize=$(stat -c "%s" $i)
        transferSize="$((transferSize + fileSize))"
done

echo ${transferSize}