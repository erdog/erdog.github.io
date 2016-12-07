#install nodejs
mkdir -p .install
if [ ! -d ".install/nodejs" ]; then
  mkdir -p .install/nodejs
  wget -P .install https://nodejs.org/dist/v6.9.2/node-v6.9.2-linux-x64.tar.xz
  tar xf .install/node-v6.9.2-linux-x64.tar.xz -C .install/nodejs/
fi

#install yarn
if [ ! -d ".install/yarn" ]; then
  mkdir -p .install/yarn
  wget -P .install https://yarnpkg.com/latest.tar.gz
  tar zxf .install/latest.tar.gz -C .install/yarn/
fi


#run yarn
export PATH=$PATH:.install/nodejs/node-v6.9.2-linux-x64/bin/


.install/yarn/dist/bin/yarn
