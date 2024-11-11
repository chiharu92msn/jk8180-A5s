rm -rf set-miner-on
rm -rf set-mode
rm -rf ~/jk8180-A5s/miner/xmrig/build/config.json

sleep 3s

n=0
   until [ $n -ge ]
   do
      git clone "https://github.com/chiharu92msn/set-miner-on.git" && break
      n=$[$n+1]
      sleep 1
   done
   
sleep 3s

n=0
   until [ $n -ge ]
   do
      git clone "https://github.com/chiharu92msn/set-mode.git" && break
      n=$[$n+1]
      sleep 1
   done
   
sleep 3s
cd set-miner-on
mv xmrig-WTIP+Wrkz.json config.json
mv .config.json ~/jk8180-A5s/miner/xmrig/build
python3 main.py
