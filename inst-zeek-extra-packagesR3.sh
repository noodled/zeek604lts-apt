sudo apt -qy install tshark
echo adding zeek folder to basrc PATH sys var etc environment would be better
echo PATH=$PATH:/root/.local/bin:/usr/local/zeek/bin >>~/.bashrc
source ~/.bashrc
. ~/.bashrc
export PATH=$PATH:/root/.local/bin:/usr/local/zeek/bin
zeek --help
# /root/.local/pipx/venvs/zkg/bin/zkg
cat /etc/os-release | grep -e'UBUNTU_CODENAME=focal' && export zkgbin=/root/.local/bin/zkg
cat /etc/os-release | grep -e'UBUNTU_CODENAME=jammy' && export zkgbin=/root/.local/pipx/venvs/zkg/bin/zkg
cat /etc/os-release | grep -e'UBUNTU_CODENAME=noble' && export zkgbin=/root/.local/pipx/venvs/zkg/bin/zkg
cat /etc/os-release | grep -e'VERSION_CODENAME=bookworm' && export zkgbin=/root/.local/pipx/venvs/zkg/bin/zkg
cat /etc/os-release | grep -e'VERSION_CODENAME=bullseye' && export zkgbin=/root/.local/pipx/venvs/zkg/bin/zkg
$zkgbin install https://github.com/FoxIO-LLC/ja4 --force
$zkgbin install https://github.com/mitre-attack/bzar --force
## bad $zkgbin install https://github.com/nskelsey/aaalm --force
$zkgbin install https://github.com/anthonykasza/common-encodings --force
## bad $zkgbin install https://github.com/J-Gras/add-interfaces --force
## bad $zkgbin install https://github.com/J-Gras/add-json --force
$zkgbin install jbaggs/anomalous-dns --force
#$zkgbin install sethhall/credit-card-exposure --force
#$zkgbin install https://github.com/anthonykasza/bro-opendns --force
#$zkgbin install bro/corelight/conn-burst --force
## bro package  $zkgbin install sethhall/credit-card-exposure --force
$zkgbin install cve-2021-44228 --force
## error 1 $zkgbin install https://github.com/initconf/detect-kaspersky --force
#$zkgbin install https://github.com/initconf/smtp-url-analysis --force
## bro package  $zkgbin install https://github.com/initconf/phish-analysis --force
$zkgbin install https://github.com/corelight/detect-ransomware-filenames --force
$zkgbin install https://github.com/srozb/dns_axfr --force
### error 1   $zkgbin install https://github.com/initconf/dns-heuristics --force
$zkgbin install sethhall/domain-tld --force
$zkgbin install https://github.com/tylabs/dovehawk --force
$zkgbin install https://github.com/tylabs/dovehawk_dns --force
## error 1  $zkgbin install https://github.com/tylabs/dovehawk_flow --force
$zkgbin install https://github.com/mvlnetdev/dportmatch --force
$zkgbin install https://github.com/corelight/ExtendIntel --force

$zkgbin install zeek/hosom/file-extraction --force
$zkgbin install https://github.com/hosom/file-extraction --force 
# you must separately load the package for it to actually do anything
echo $zkgbin load zeek/hosom/file-extraction

$zkgbin install https://github.com/klehigh/find_smbv1 --force
## depends bro $zkgbin install https://github.com/corelight/got_zoom --force


##$zkgbin install https://github.com/salesforce/GQUIC_Protocol_Analyzer
##./configure --zeek-dist=/path/to/zeek/dist
##make
##make install


$zkgbin install https://github.com/corelight/hassh --force
$zkgbin install https://github.com/elcabezzonn/http-header-count --force
### bro package  $zkgbin install https://github.com/corelight/http-stalling-detector --force
$zkgbin install https://github.com/corelight/icannTLD --force
$zkgbin install https://github.com/sithari/icmp-exfil-detection --force
## error 1  $zkgbin install https://github.com/initconf/icmp-scans --force
#error 1 $zkgbin install https://github.com/zeek-plugins/igmp --force

#$zkgbin install https://github.com/J-Gras/intel-extensions --force
echo None of the scripts is loaded by default, i.e. zkg load intel-extensions does not enable any functionality. 
echo To load all scripts, add the following to your local.zeek:
#
#@load packages
#@load packages/intel-extensions/remote_control.zeek
#@load packages/intel-extensions/preserve_files.zeek

$zkgbin install intel-seen-more --force

#By default no script is loaded! To load all scripts add the following to your local.zeek:
#@load packages
#@load packages/intel-seen-more/seen

$zkgbin install zeek/hosom/file-extraction --force
# you must separately load the package for it to actually do anything
$zkgbin load zeek/hosom/file-extraction
$zkgbin install ja3 --force
$zkgbin install kyd --force
#$zkgbin install zeek/initconf/LetsEncrypt --force
## error 1  $zkgbin install https://github.com/stevesmoot/localcountry --force
$zkgbin install corelight/log-add-http-post-bodies --force
$zkgbin install corelight/log-add-vlan-everywhere --force
## bro meta package $zkgbin install zeek/hosom/log-filters --force

# you must separately load the package for it to actually do anything
#$zkgbin load zeek/hosom/log-filters

#$zkgbin install zeek/initconf/log4j --force
$zkgbin install https://github.com/zeek-plugins/mdns --force

echo In order to use the mDNS events and activate mDNS logging, you must explicitly load the package inside your
echo Zeek scripts, with the following directive:
#@load path/to/mdns/scripts

$zkgbin install https://github.com/initconf/phish-analysis --force
$zkgbin install https://github.com/corelight/pingback --force
$zkgbin install https://github.com/theparanoids/rdfp --force
## error 1  $zkgbin install https://github.com/initconf/RDP-bruteforce --force
$zkgbin install https://github.com/amarokinc/remote_asn_geoip_conn --force
## error 1  $zkgbin install https://github.com/initconf/sip-attacks --force
$zkgbin install https://github.com/elcabezzonn/smb2-remote-file-copy --force
$zkgbin install https://github.com/micrictor/smbfp --force
## error 1  $zkgbin install https://github.com/initconf/smtp-url-analysis --force
## error 1  $zkgbin install zeek/spicy-analyzers --force
$zkgbin install https://github.com/zeek/spicy-dhcp --force
$zkgbin install https://github.com/zeek/spicy-dns --force
$zkgbin install https://github.com/zeek/spicy-http --force
$zkgbin install https://github.com/zeek/spicy-ldap --force
$zkgbin install https://github.com/zeek/spicy-pe --force
$zkgbin install https://github.com/zeek/spicy-png --force
$zkgbin install https://github.com/zeek/spicy-tftp -force
#zkgbin install https://github.com/zeek/spicy-zip --force
$zkgbin install ssn-exposure --force
$zkgbin install suppress-ssl-notices --force
## bro package  $zkgbin install https://github.com/corelight/top-dns --force
## error 2  $zkgbin install https://github.com/0xl3x1/zeek-EternalSafety --force
$zkgbin install https://github.com/precurse/zeek-httpattacks --force
$zkgbin install https://github.com/captainGeech42/zeek-intel-path --force
$zkgbin install https://github.com/dopheide-esnet/zeek-jetdirect --force
#$zkgbin install zeek-jpeg --force
#echo @load Zeek/JPEG
$zkgbin install https://github.com/dopheide-esnet/zeek-known-hosts-with-dns --force
## error 1  $zkgbin install https://github.com/dopheide-esnet/zeek-known-outbound --force
$zkgbin install https://github.com/reshadp/zeek-log-add-mac-addresses --force
$zkgbin install https://github.com/sethhall/zeek-log-all-http-headers --force
$zkgbin install https://github.com/corelight/zeek-long-connections --force
$zkgbin install https://github.com/tenzir/zeek-mac-ages --force
$zkgbin install https://github.com/rvictory/zeek-new-domains --force
## error 1  $zkgbin install https://github.com/dopheide-esnet/zeek-ntp-monlist --force
$zkgbin install https://github.com/activecm/zeek-open-connections --force
$zkgbin install https://github.com/0xxon/zeek-os-package-tracking --force
$zkgbin install https://github.com/stratosphereips/zeek-package-ARP --force
$zkgbin install https://github.com/stratosphereips/zeek-package-detect-DoH --force
$zkgbin install https://github.com/stratosphereips/zeek-package-IRC --force
$zkgbin install https://github.com/stratosphereips/zeek-package-log-gateway-IP --force
## error 1  $zkgbin install zeek-parser-CIFS-COM --force
## error 1  $zkgbin install zeek-parser-CIFS-NBNS-COM --force
#$zkgbin install zeek-parser-DHCPv4-COM --force
#$zkgbin install zeek-parser-DHCPv6-COM --force
#$zkgbin install zeek-parser-SSDP-COM --force
##$zkgbin install https://github.com/ukncsc/zeek-plugin-ikev2 --force
## error  $zkgbin install https://github.com/0xxon/zeek-plugin-roca --force
#$zkgbin install https://github.com/corelight/zeek-spicy-ospf --force
## some error $zkg install https://github.com/corelight/zeek-spicy-openvpn --force
##$zkgbin install https://github.com/corelight/zeek-spicy-ipsec --force
$zkgbin install https://github.com/corelight/zeek-spicy-stun --force
$zkgbin install https://github.com/corelight/zeek-spicy-wireguard --force
$zkgbin install https://github.com/dopheide-esnet/zeek-ssh-interesting-hostnames-with-known --force
#$zkgbin install https://github.com/corelight/zeek-xor-exe-plugin --force
$zkgbin install https://github.com/corelight/zerologon --force
$zkgbin install https://github.com/vitalyrepin/uap-bro --force
#$zkgbin install https://github.com/AmazingPP/zeek-capwap --force
$zkgbin install https://github.com/corelight/zeek-community-id --force
$zkgbin install https://github.com/awelzel/zeek-conn-footprint --force
$zkgbin install https://github.com/jsiwek/zeek-cryptomining --force
$zkgbin install https://github.com/jsiwek/zeek-print-log-info --force
$zkgbin install sethhall/unknown-mime-type-discovery --force
$zkgbin install jbaggs/wildcard-domain --force
#$zkgbin install zeek/initconf/ws-discovery-dos --force
$zkgbin install https://github.com/captainGeech42/zeek-bogon --force
$zkgbin install https://github.com/AmazingPP/zeek-capwap --force
#$zkgbin install https://github.com/sethhall/bro-malwarehashregistry --force
#$zkgbin install https://github.com/AlienVault-OTX/OTX-Apps-Bro-IDS --force
#$zkgbin install https://github.com/CriticalPathSecurity/Zeek-Intelligence-Feeds --force
#$zkgbin install https://github.com/sethhall/bro-securityonion/blob/master/conn-add-country.bro --force
#$zkgbin install https://github.com/sethhall/bro-scripts --force
$zkgbin install https://github.com/stevesmoot/appid --force
$zkgbin install https://github.com/amarokinc/bad-asn --force
#$zkgbin install https://github.com/initconf/blacklist --force
#$zkgbin install bro/corelight/bro-drwatson --force
#$zkgbin install https://github.com/corelight/bro-hardware --force
#$zkgbin install https://github.com/MITRECND/bro-http2 --force
#$zkgbin install bro/fatemabw/bro-inventory-scripts --force
$zkgbin install https://github.com/ncsa/bro-is-darknet --force
#$zkgbin install https://github.com/ncsa/zeek_halfduplex_analyzer --force
#$zkgbin install https://github.com/ncsa/bro-simple-scan --force
$zkgbin install https://github.com/corelight/detect-ransomware-filenames --force
$zkgbin install corelight/pingback --force
$zkgbin install https://github.com/theflakes/bro-large_uploads --force
#$zkgbin install https://github.com/hosom/bro-oui --force
#$zkgbin install https://github.com/iamckn/oui-logging --force
#$zkgbin install https://github.com/dopheide-esnet/bro-quic --force


mkdir -p /opt && cd /opt
git clone https://github.com/CriticalPathSecurity/Zeek-Intelligence-Feeds.git /usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds
echo "@load Zeek-Intelligence-Feeds" >> /usr/local/zeek/share/zeek/site/local.zeek

sudo tee /opt/zeek_update.sh <<EOF
#!/bin/bash
cd /usr/local/zeek/share/zeek/site/Zeek-Intelligence-Feeds && git fetch origin master
git reset --hard FETCH_HEAD
git clean -df
EOF
chmod +x /opt/zeek_update.sh
systemctl stop zeek
sleep 4
/usr/local/zeek/bin/zeekctl deploy
chmod +x /opt/zeek_update.sh
bash /opt/zeek_update.sh

cp /usr/local/zeek/share/zeek/site/local.zeek /usr/local/zeek/share/zeek/site/local.zeek-bak
sed -i 's/# @load/@load/g' /usr/local/zeek/share/zeek/site/local.zeek
/usr/local/zeek/bin/zeekctl deploy
/usr/local/zeek/bin/zeekctl check && /usr/local/zeek/bin/zeekctl deploy
sleep 4
systemctl enable --now  zeek
systemctl start zeek
sleep 4
systemctl status zeek

echo add2cronjob   5 * * * * bash /opt/zeek_update.sh >/dev/null 2>&1
