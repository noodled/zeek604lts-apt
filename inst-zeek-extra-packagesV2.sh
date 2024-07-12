echo Extending zeek 6.04 LTS with extra zeek packages via zkg
sudo apt-get install -y python3-pip pipx
##sudo pip3 install zkg
###sudo pipx install zkg
echo adding zeek folder to basrc PATH sys var etc environment would be better
echo PATH=$PATH:/root/.local/bin:/usr/local/zeek/bin >>/root/.bashrc
source ~/.bashrc
sudo /root/.local/bin/zkg autoconfig
##sudo /root/.local/bin/zkg install geoip-conn --force
#echo setting rights to zeek folders to use pcap
sudo setcap cap_net_raw=eip /usr/local/zeek/bin/zeek
sudo setcap cap_net_raw=eip /usr/local/zeek/bin/capstats
echo autoconfigure zkg
/root/.local/bin/zkg autoconfig
echo contents of zkg config
cat /root/.zkg/config
#/usr/local/zeek/etc/node.cfg
#interface=af_packet::ens33
echo adding RFC1918 addr to networks cfg zeek
echo 10.0.0.0/8 >>/usr/local/zeek/etc/networks.cfg         
echo 172.16.0.0/12 >>/usr/local/zeek/etc/networks.cfg         
echo 192.168.0.0/16 >>/usr/local/zeek/etc/networks.cfg              
sudo systemctl stop zeekctl
echo deploying changes with zeekctl
/usr/local/zeek/bin/zeekctl deploy
sudo apt-get install -y python3-pip
sudo apt-get install -y pipx
#####python3 -m pipx install zpkg
python3 -m pipx install zkg
echo installing zkg IRC-Zeek-package
echo adding extra zkg packages like pex ja3 geoip-conn
/root/.local/bin/zkg install zeek/j-gras/add-interfaces --force
/root/.local/bin/zkg install zeek/salesforce/ja3 --force
/root/.local/bin/zkg install geoip-conn --force
#echo Y | /root/.local/bin/zkg install zeek/j-gras/add-interfaces
#echo Y | /root/.local/bin/zkg install zeek/salesforce/ja3
#echo Y | /root/.local/bin/zkg install geoip-conn
##missing or moved /root/.local/bin/zkg install zeek/salesforce/hassh
/usr/local/zeek/bin/zeekctl deploy
#location of installed zkg packages
#/root/.zkg/clones/package/
echo installing Malcolm zeek plugins
wget https://raw.githubusercontent.com/cisagov/Malcolm/793abad1417ba06e3dbd4b4be628875504388e82/shared/bin/zeek_install_plugins.sh
bash ./zeek_install_plugins.sh
echo fixing ja4 erronous package ja4 or missing dep
/root/.local/bin/zkg remove ja4 --force
echo injecting to load packages into local.zeek
echo @load packages >> /opt/zeek/share/zeek/site/local.zeek
echo deploying new packages and plugins
/usr/local/zeek/bin/zeekctl deploy
/usr/local/zeek/bin/zeekctl stop
echo zkg checking for updated packages.
/root/.local/bin/zkg refresh
/root/.local/bin/zkg upgrade
echo deploying new packages and plugins
/usr/local/zeek/bin/zeekctl deploy
sudo systemctl stop zeek
sleep 2
sudo systemctl start zeek
sleep 6
sudo systemctl status zeek | grep running

