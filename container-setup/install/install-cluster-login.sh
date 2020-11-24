#!/bin/bash

pip3 install requests-html
pyppeteer-install

OLD_SCRIPT_NAME=srelogin

mkdir /usr/local/cluster-login;
pushd /usr/local/cluster-login;

wget https://raw.githubusercontent.com/mbarnes/work-environment/master/files/bin/${OLD_SCRIPT_NAME};
chmod +x ${OLD_SCRIPT_NAME};
mv ${OLD_SCRIPT_NAME} cluster-login;
ln -s /usr/local/cluster-login/cluster-login /usr/local/bin/cluster-login;
popd;
