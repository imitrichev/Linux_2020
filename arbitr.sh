#!/bin/bash
#ALYASEVA
#thief="FLAG.XYZ1"
#KOSS
#thief="FLAG.XY/FLAG.XY/FLAG.XY/FLAG.XY/thief.sh"
#MARESKINA
#thief="m.sh"
#PAPKINA
thief="nfs/MAIN.sh"
#SCHERBAKOV
#police="script.sh"
#BERDYSHEV
police=".prt"
#KUZMin
#police="POLICE/COP.sh"
#BELOUSOV
#police='. scr'
#BOROZDIN
#police="script1.sh"
#Chebotarev
#police="Lab7Cheb/find"
p1=""
#p1="test/"
p2=""
t=`ls /opt/log* | wc -l`
chmod +x "$p1""$thief"
chmod +x "$p2""$police"

/bin/su -c "bash ~/""$p1""$thief" - john &
sleep 5
/bin/su -c "./""$p2""$police" - john > /opt/log"$t" 2>&1 &
sleep 60
pkill -9 -f "$police"
pkill -9 -f "$thief"
/bin/su -c "pkill -9 -f bash" - john
/bin/su -c "pkill -9 -f bash" - john
/bin/su -c "pkill -9 -f bash" - john
/bin/su -c "pkill -9 -f bash" - john
/bin/su -c "pkill -9 -f bash" - john
