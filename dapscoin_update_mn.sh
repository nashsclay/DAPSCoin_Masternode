systemctl stop DAPSCoin.service
clear

echo "This script was forked from CryptoNeverSleeps"
echo "Ubuntu 16.04 is the recommended opearting system for this install."
echo

cd /usr/local/bin/
sudo apt-get install unzip
echo "Script may appear frozen for a few seconds. This is normal."
wget -c https://github.com/DAPSCoin/DAPSCoin/releases/download/1.0.1/master_linux-v1.0.1.3.zip
sudo rm dapscoind dapscoin-cli dapscoin-tx
sudo unzip master_linux-v1.0.1.3.zip
cd master_linux-v1.0.1.3
sudo rm ../master_linux-v1.0.1.3.zip
sudo mv dapscoind dapscoin-cli dapscoin-tx /usr/local/bin
cd /usr/local/bin/
chmod +x dapscoind dapscoin-cli dapscoin-tx
systemctl start DAPSCoin.service
cd ~
echo "Masternode restarted. Any errors about files not existing is ok."
echo
echo "Please wait at least 1 min before checking any commands as it may be reindexing and reconfiguring"
