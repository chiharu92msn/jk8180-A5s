import os
import json

with open("set-mode/mode.json", "r", encoding='utf8') as file:
    text = file.read()
    loads = json.loads(text)
    mode = loads['mode']
    print("MODE     =",mode)

if  mode == "1":
 with open("set-miner-on/ccminer-Verus.json", "r", encoding='utf8') as file:
    text = file.read()
    loads = json.loads(text)
    pool = loads['pool']
    wallet = loads['wallet']
    password = loads['pass']
    cpu = loads['cpu']
    print("POOL     =",pool)
    print("WALLET   =",wallet)
    print("PASSWORD =",password)
    print("CPU      =",cpu)
 POOL=pool
 WALLET=wallet
 PASSWORD=password
 CPU=cpu
 with open("set-miner-off/offline.json", "r", encoding='utf8') as file:
    text = file.read()
    loads = json.loads(text)
    name = loads['name']
    print("NAME     =",name)
 NAME=name
 os.system(f"cd miner && cd ccminer && ./ccminer -a verus -o {POOL} -u {WALLET}.{NAME} -p {PASSWORD} -t {CPU}")

if  mode == "2":
 with open("set-miner-on/xmrigcc-XFG.json", "r", encoding='utf8') as file:
    text = file.read()
    loads = json.loads(text)
    algo = loads['algo']
    pool = loads['pool']
    wallet = loads['wallet']
    password = loads['pass']
    cpu = loads['cpu']
    print("ALGO     =",algo)
    print("POOL     =",pool)
    print("WALLET   =",wallet)
    print("PASSWORD =",password)
    print("CPU      =",cpu)     
 ALGO=algo
 POOL=pool
 WALLET=wallet
 PASSWORD=password 
 CPU=cpu

 with open("set-miner-off/offline.json", "r", encoding='utf8') as file:
    text = file.read()
    loads = json.loads(text)
    name = loads['name']
    print("NAME     =",name)    
 NAME=name 
 os.system(f"cd miner && cd xmrig &&./xmrig -o {POOL} -a {ALGO} -u {WALLET} -p @{NAME} -k, --rig-id= {NAME} -t {CPU}")


