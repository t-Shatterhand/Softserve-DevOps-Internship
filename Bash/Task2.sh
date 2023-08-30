#!/bin/bash

if [ $# -eq 0 ]; then
echo "Pass the logs file as the first argument, please!"
exit 1
fi

IP=$(cat $1 | cut -d " " -f 1 | sort | uniq -c | sort -gr | head -n 1 | cut -d " " -f 7)
FREQ=$(cat $1 | cut -d " " -f 1 | sort | uniq -c | sort -gr | head -n 1 | cut -d " " -f 6)
echo Ip to perform the most requests is $IP, it performed $FREQ requests 

PAGE=$(cat $1 | cut -d " " -f 7 | sort | uniq -c | sort -gr | head -n 1)
echo The most requested page is $(echo $PAGE | cut -d " " -f 2), it was requested $(echo $PAGE | cut -d " " -f 1) times

echo $'Requests number with respective IPs:'
echo $(cat $1 | cut -d " " -f 1 | sort | uniq -c | sort -gr)

NA=$(cat $1 | grep -B1 "404" | grep -v -e "404" -e -- | cut -d " " -f 7)
echo Non-existent pages requested by users: $NA

TIME=$(cat apache_logs.txt | cut -d " " -f 4 | rev | cut -d ":" -f2- | rev | sort | uniq -c | sort -gr | head -n 1)
echo The most popular time of requests was $(echo $TIME | cut -d " "  -f 2 | cut -c2-), then it was requested $(echo $TIME | cut -d " " -f 1) times

BOTS=$(cat apache_logs.txt | grep -i bot | tr " " "\n" | grep -i bot | sort | uniq)
echo Bots that have accessed the site: $BOTS
