#!/bin/sh
rm -rf update
n=0
   until [ $n -ge ]
   do
      git clone "https://github.com/chiharu92msn/update.git" && break
      n=$[$n+1]
sleep 3s
echo "www.google.com is unreachable. Retrying(2)"
sleep 12s
./net3.sh
    # continue
done

echo "online"
sleep 300s
./net.sh
