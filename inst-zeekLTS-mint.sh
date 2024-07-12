sudo apt-get install -y build-essential flex libfl-dev bison cmake swig
mkdir -p /download && pushd /download
echo installing libpcap from source
wget https://www.tcpdump.org/release/libpcap-1.10.4.tar.gz
tar xzvf libpcap-1.10.4.tar.gz
pushd libpcap-1.10.4
./configure && make && sudo make install && popd
echo installing zeek LTS from source
sudo apt-get install -y cmake make gcc g++ flex bison libpcap-dev \
	python-dev swig zlib1g-dev libssl-dev locate
wget https://download.zeek.org/zeek-6.0.4.tar.gz
#updatedb
tar xzvf zeek-6.0.4.tar.gz
echo making swap to help compiling !
sudo mkdir -p /var/cache/swap
sudo dd if=/dev/zero of=/var/cache/swap/swap0 bs=64M count=64
sudo chmod 0600 /var/cache/swap/swap0
sudo mkswap /var/cache/swap/swap0
sudo swapon /var/cache/swap/swap0
sudo swapon -s
echo continuing zeek configure and compile
pushd zeek-6.0.4
whereis libfl.so
PATH=/usr/local/zeek/bin:$PATH
source ~/.profile
sudo apt-get install -y python3-git python3-semantic-version

sudo apt-get install -y libfl-dev locate
updatedb
#export FLEX_INCLUDE_DIR=/usr/lib/x86_64-linux-gnu/
export locFlexLib=$(locate libfl.so | cut -d' ' -f1 | head -1)
export FLEX_INCLUDE_DIR=$locFlexLib
#export FLEX_EXECUTABLE=/usr/bin/flex
export locFlexExe=$(whereis flex | cut -d' ' -f2)
export FLEX_EXECUTABLE=$locFlexExe
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
rm -f build/CMakeCache.txt
make distclean
./configure --with-pcap=/usr/local/lib && make -j$((`nproc`/2))  && sudo make install && popd
sudo setcap cap_net_raw,cap_net_admin=eip /usr/local/zeek/bin/zeek
sudo setcap cap_net_raw,cap_net_admin=eip /usr/local/zeek/bin/zeekctl
sudo chown mdka -R /usr/local/zeek
sudo chgrp mdka -R /usr/local/zeek
echo just supply install in ZeekControl 
echo then cron enable  and finally start
pushd /usr/local/zeek/bin/

sudo tee /etc/systemd/system/zeek.service <<EOF
[Unit]
Description=zeek network analysis engine

[Service]
Type=forking
PIDFIle=/usr/local/zeek/spool/zeek.pid
ExecStart=/usr/local/zeek/bin/zeekctl start
ExecStop=/usr/local/zeek/bin/zeekctl stop

[Install]
WantedBy=multi-user.target
EOF

sudo ./zeekctl install
sudo ./zeekctl cron enable
echo getting default interface to adapt zeek node cfg
#ip link | grep -e'MULTICAST' | grep -e'[0-9]:.*: ' | cut -d' ' -f2 | cut -d':' -f1
export DEFAULTif=$(route | grep '^default' | grep -o '[^ ]*$')
echo changing default eth0 in node.cfg to this system default interface $DEFAULTif
sed -i 's/eth0/'"${DEFAULTif}"'/' /usr/local/zeek/etc/node.cfg
echo changing zeek log rotation from hourly to daily
sed 's@LogRotationInterval = 3600@LogRotationInterval = 86400@' /usr/local/zeek/etc/zeekctl.cfg
zeek zeekctl check
sudo systemctl restart zeek.service

./zeekctl start
sudo systemctl daemon-reload
sudo systemctl start zeek.service && sudo systemctl status zeek.service | grep -e'Running' && sudo systemctl enable zeek.service
sudo systemctl status zeek.service | grep -e'Running'
#zeekctl
sudo systemctl status zeek | grep -e'Running'
#https://medium.com/@josejgp/setting-up-snort-and-zeek-on-raspberry-pi-first-part-b1e036332ebc
