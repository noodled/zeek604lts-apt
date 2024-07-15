export zkgbin=/root/.local/pipx/venvs/zkg/bin/zkg
mkdir -p /download && pushd /download
git clone https://github.com/cisagov/packages
pushd packages
find . -maxdepth 1 -mindepth 1 -type d -exec cat \{\}/zkg.index >>allCISAzeekpackage.txt \;
#find . -maxdepth 1 -mindepth 1 -type d -exec cat \{\}/zkg.index \; >>allcisaZeekPackagesClones.txt
cat allCISAzeekpackage.txt | while read line || [[ -n $line ]];
do
   # do something with $line here
   $zkgbin install $line --force
done
$zkgbin install --force
