echo "Preparing"
sudo dpkg --add-architecture i386
sudo apt update -y && sudo apt upgrade -y
echo "Installing Wine"
sudo apt install wine wine:i386 libwine libwine:i386 exe-thubnailer icoextract-thumbnailer icoextract -y
