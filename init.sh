sudo apt update && sudo apt -y upgrade
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt update && sudo apt -y upgrade
sudo apt install -y zsh wget build-essential libtool autotools-dev automake
sudo apt install -y pkg-config bsdmainutils curl git nsis g++-mingw-w64-x86-64
sudo apt install -y gcc make perl dkms libssl-dev libevent-dev
sudo apt install -y libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev libboost-all-dev
sudo apt install -y software-properties-common libdb4.8-dev libdb4.8++-dev libminiupnpc-dev libzmq3-dev
sudo apt install -y libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools
sudo apt install -y libprotobuf-dev protobuf-compiler libqt4-dev openssl1.0
sudo apt install -y libssl1.0-dev
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sudo update-alternatives --config x86_64-w64-mingw32-g++
git clone https://github.com/litecoin-project/litecoin.git
cd litecoin
PATH=$(echo "$PATH" | sed -e 's/:\/mnt.*//g')
cd depends
make HOST=x86_64-w64-mingw32
cd ..
./autogen.sh
CONFIG_SITE=$PWD/depends/x86_64-w64-mingw32/share/config.site ./configure --prefix=/
make