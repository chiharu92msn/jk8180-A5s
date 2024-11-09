#!/bin/sh
echo 'cd jk8180-A5s && ./start.sh' > ~/.bashrc
sleep 5s
rm -rf update
site='www.google.com'
until $(ping -q -c1 ${site} > /dev/null 2>&1)
do
    echo "${site} is unreachable. Retrying"
sleep  15s
./net1.sh
    # continue
done
sleep 3s

n=0
   until [ $n -ge ]
   do
      git clone "https://github.com/chiharu92msn/update.git" && break
      n=$[$n+1]
      sleep 1
   done
   
sleep 3s
echo "online"
sleep 300s
~/jk8180-A5s/update/update.sh
sleep 3s
./net.sh
