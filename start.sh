rm -rf set-miner-on
rm -rf set-mode

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

python3 main.py
