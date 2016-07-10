#! /bin/bash
baselocation=$PWD
apt-get update
apt-get install libasound2-dev memcached python-pip mpg123 python-alsaaudio python-aubio
pip install -r requirements.txt
cp initd_alexa.sh /etc/init.d/alexa
cd /etc/rc5.d
ln -s ../init.d/alexa S99alexa
touch /var/log/alexa.log
cd $baselocation
echo "Enter your ProductID:"
read productid
echo ProductID = \"$productid\" >> creds.py

echo "Enter your Security Profile Description:"
read spd
echo Security_Profile_Description = \"$spd\" >> creds.py

echo "Enter your Security Profile ID:"
read spid
echo Security_Profile_ID = \"$spid\" >> creds.py

echo "Enter your Security Client ID:"
read cid
echo Client_ID = \"$cid\" >> creds.py

echo "Enter your Security Client Secret:"
read secret
echo Client_Secret = \"$secret\" >> creds.py

ip=$(ifconfig eth0 | grep "inet addr" | cut -d ':' -f 2 | cut -d ' ' -f 1)
echo "Open http://$ip:5000"
python ./auth_web.py 

echo "You can now reboot"

