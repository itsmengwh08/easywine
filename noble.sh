echo "Preparing"
sudo dpkg --add-architecture i386
echo "Adding key of official Wine repo"
sudo mkdir -pm755 /etc/apt/keyrings
wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo gpg --dearmor -o /etc/apt/keyrings/winehq-archive.key -
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/noble/winehq-noble.sources
echo "Updating packages"
sudo apt update -y && sudo apt upgrade -y
echo "Installing Wine"
sudo apt install --install-recommends winehq-stable -y
