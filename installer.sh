#!/bin/bash

USER=`whoami`
if [[ $USER != "root" ]]
  then echo "please run this script as root"
  exit 0
fi

function installer () {
for i in "tm*.sh"
  do cp -v $i /usr/local/bin
  chmod -v 755 /usr/local/bin/$i
done
cp tmsessions /usr/local/bin/

grep tmsessions /etc/bash.bashrc -q
if [[ $? == 1 ]]
 then echo "we'll configure /etc/bash.bashrc"
 echo "source /usr/local/bin/tmsessions" >> /etc/bash.bashrc
fi
}

echo "Do you want to install yatmow? [N/y]"
read install

if [[ $install == "y" ]]
  then installer
fi
