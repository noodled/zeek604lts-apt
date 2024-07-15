sudo apt -qy install tshark
zkg install https://github.com/FoxIO-LLC/ja4 --force
zkg install https://github.com/mitre-attack/bzar --force
## bad zkg install https://github.com/nskelsey/aaalm --force
zkg install https://github.com/anthonykasza/common-encodings --force
## bad zkg install https://github.com/J-Gras/add-interfaces --force
## bad zkg install https://github.com/J-Gras/add-json --force
zkg install jbaggs/anomalous-dns --force
#zkg install sethhall/credit-card-exposure --force
#zkg install https://github.com/anthonykasza/bro-opendns --force
#zkg install bro/corelight/conn-burst --force
## bro package  zkg install sethhall/credit-card-exposure --force
zkg install cve-2021-44228 --force
## error 1 zkg install https://github.com/initconf/detect-kaspersky --force
#zkg install https://github.com/initconf/smtp-url-analysis --force
## bro package  zkg install https://github.com/initconf/phish-analysis --force
zkg install https://github.com/corelight/detect-ransomware-filenames --force
zkg install https://github.com/srozb/dns_axfr --force
### error 1   zkg install https://github.com/initconf/dns-heuristics --force
zkg install sethhall/domain-tld --force
zkg install https://github.com/tylabs/dovehawk --force
zkg install https://github.com/tylabs/dovehawk_dns --force
## error 1  zkg install https://github.com/tylabs/dovehawk_flow --force
zkg install https://github.com/mvlnetdev/dportmatch --force
zkg install https://github.com/corelight/ExtendIntel --force

zkg install zeek/hosom/file-extraction --force
zkg install https://github.com/hosom/file-extraction --force 
# you must separately load the package for it to actually do anything
echo zkg load zeek/hosom/file-extraction

zkg install https://github.com/klehigh/find_smbv1 --force
## depends bro zkg install https://github.com/corelight/got_zoom --force


##zkg install https://github.com/salesforce/GQUIC_Protocol_Analyzer
##./configure --zeek-dist=/path/to/zeek/dist
##make
##make install


zkg install https://github.com/corelight/hassh --force
zkg install https://github.com/elcabezzonn/http-header-count --force
### bro package  zkg install https://github.com/corelight/http-stalling-detector --force
zkg install https://github.com/corelight/icannTLD --force
zkg install https://github.com/sithari/icmp-exfil-detection --force
## error 1  zkg install https://github.com/initconf/icmp-scans --force
#error 1 zkg install https://github.com/zeek-plugins/igmp --force

#zkg install https://github.com/J-Gras/intel-extensions --force
echo None of the scripts is loaded by default, i.e. zkg load intel-extensions does not enable any functionality. 
echo To load all scripts, add the following to your local.zeek:
#
#@load packages
#@load packages/intel-extensions/remote_control.zeek
#@load packages/intel-extensions/preserve_files.zeek

zkg install intel-seen-more --force

#By default no script is loaded! To load all scripts add the following to your local.zeek:
#@load packages
#@load packages/intel-seen-more/seen

zkg install zeek/hosom/file-extraction --force
# you must separately load the package for it to actually do anything
zkg load zeek/hosom/file-extraction
zkg install ja3 --force
zkg install kyd --force
#zkg install zeek/initconf/LetsEncrypt --force
## error 1  zkg install https://github.com/stevesmoot/localcountry --force
zkg install corelight/log-add-http-post-bodies --force
zkg install corelight/log-add-vlan-everywhere --force
## bro meta package zkg install zeek/hosom/log-filters --force

# you must separately load the package for it to actually do anything
#zkg load zeek/hosom/log-filters

#zkg install zeek/initconf/log4j --force
zkg install https://github.com/zeek-plugins/mdns --force

echo In order to use the mDNS events and activate mDNS logging, you must explicitly load the package inside your
echo Zeek scripts, with the following directive:
#@load path/to/mdns/scripts

zkg install https://github.com/initconf/phish-analysis --force
zkg install https://github.com/corelight/pingback --force
zkg install https://github.com/theparanoids/rdfp --force
## error 1  zkg install https://github.com/initconf/RDP-bruteforce --force
zkg install https://github.com/amarokinc/remote_asn_geoip_conn --force
## error 1  zkg install https://github.com/initconf/sip-attacks --force
zkg install https://github.com/elcabezzonn/smb2-remote-file-copy --force
zkg install https://github.com/micrictor/smbfp --force
## error 1  zkg install https://github.com/initconf/smtp-url-analysis --force
## error 1  zkg install zeek/spicy-analyzers --force
zkg install https://github.com/zeek/spicy-dhcp --force
zkg install https://github.com/zeek/spicy-dns --force
zkg install https://github.com/zeek/spicy-http --force
zkg install https://github.com/zeek/spicy-ldap --force
zkg install https://github.com/zeek/spicy-pe --force
zkg install https://github.com/zeek/spicy-png --force
zkg install https://github.com/zeek/spicy-tftp -force
#zkg install https://github.com/zeek/spicy-zip --force
zkg install ssn-exposure --force
zkg install suppress-ssl-notices --force
## bro package  zkg install https://github.com/corelight/top-dns --force
## error 2  zkg install https://github.com/0xl3x1/zeek-EternalSafety --force
zkg install https://github.com/precurse/zeek-httpattacks --force
zkg install https://github.com/captainGeech42/zeek-intel-path --force
zkg install https://github.com/dopheide-esnet/zeek-jetdirect --force
#zkg install zeek-jpeg --force
#echo @load Zeek/JPEG
zkg install https://github.com/dopheide-esnet/zeek-known-hosts-with-dns --force
## error 1  zkg install https://github.com/dopheide-esnet/zeek-known-outbound --force
zkg install https://github.com/reshadp/zeek-log-add-mac-addresses --force
zkg install https://github.com/sethhall/zeek-log-all-http-headers --force
zkg install https://github.com/corelight/zeek-long-connections --force
zkg install https://github.com/tenzir/zeek-mac-ages --force
zkg install https://github.com/rvictory/zeek-new-domains --force
## error 1  zkg install https://github.com/dopheide-esnet/zeek-ntp-monlist --force
zkg install https://github.com/activecm/zeek-open-connections --force
zkg install https://github.com/0xxon/zeek-os-package-tracking --force
zkg install https://github.com/stratosphereips/zeek-package-ARP --force
zkg install https://github.com/stratosphereips/zeek-package-detect-DoH --force
zkg install https://github.com/stratosphereips/zeek-package-IRC --force
zkg install https://github.com/stratosphereips/zeek-package-log-gateway-IP --force
## error 1  zkg install zeek-parser-CIFS-COM --force
## error 1  zkg install zeek-parser-CIFS-NBNS-COM --force
#zkg install zeek-parser-DHCPv4-COM --force
#zkg install zeek-parser-DHCPv6-COM --force
#zkg install zeek-parser-SSDP-COM --force
##zkg install https://github.com/ukncsc/zeek-plugin-ikev2 --force
## error  zkg install https://github.com/0xxon/zeek-plugin-roca --force
#zkg install https://github.com/corelight/zeek-spicy-ospf --force
## some error zkg install https://github.com/corelight/zeek-spicy-openvpn --force
##zkg install https://github.com/corelight/zeek-spicy-ipsec --force
zkg install https://github.com/corelight/zeek-spicy-stun --force
zkg install https://github.com/corelight/zeek-spicy-wireguard --force
zkg install https://github.com/dopheide-esnet/zeek-ssh-interesting-hostnames-with-known --force
#zkg install https://github.com/corelight/zeek-xor-exe-plugin --force
zkg install https://github.com/corelight/zerologon --force
zkg install https://github.com/vitalyrepin/uap-bro --force
#zkg install https://github.com/AmazingPP/zeek-capwap --force
zkg install https://github.com/corelight/zeek-community-id --force
zkg install https://github.com/awelzel/zeek-conn-footprint --force
zkg install https://github.com/jsiwek/zeek-cryptomining --force
zkg install https://github.com/jsiwek/zeek-print-log-info --force
zkg install sethhall/unknown-mime-type-discovery --force
zkg install jbaggs/wildcard-domain --force
#zkg install zeek/initconf/ws-discovery-dos --force
zkg install https://github.com/captainGeech42/zeek-bogon --force
zkg install https://github.com/AmazingPP/zeek-capwap --force
#zkg install https://github.com/sethhall/bro-malwarehashregistry --force
#zkg install https://github.com/AlienVault-OTX/OTX-Apps-Bro-IDS --force
#zkg install https://github.com/CriticalPathSecurity/Zeek-Intelligence-Feeds --force
#zkg install https://github.com/sethhall/bro-securityonion/blob/master/conn-add-country.bro --force
#zkg install https://github.com/sethhall/bro-scripts --force
zkg install https://github.com/stevesmoot/appid --force
zkg install https://github.com/amarokinc/bad-asn --force
#zkg install https://github.com/initconf/blacklist --force
#zkg install bro/corelight/bro-drwatson --force
#zkg install https://github.com/corelight/bro-hardware --force
#zkg install https://github.com/MITRECND/bro-http2 --force
#zkg install bro/fatemabw/bro-inventory-scripts --force
zkg install https://github.com/ncsa/bro-is-darknet --force
#zkg install https://github.com/ncsa/zeek_halfduplex_analyzer --force
#zkg install https://github.com/ncsa/bro-simple-scan --force
zkg install https://github.com/corelight/detect-ransomware-filenames --force
zkg install corelight/pingback --force
zkg install https://github.com/theflakes/bro-large_uploads --force
#zkg install https://github.com/hosom/bro-oui --force
#zkg install https://github.com/iamckn/oui-logging --force
#zkg install https://github.com/dopheide-esnet/bro-quic --force


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
