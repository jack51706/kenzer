mkdir resources
git clone https://github.com/ARPSyndicate/kenzerdb.git
cd resources
if getopts "binaries:" arg; then
  git clone https://github.com/ARPSyndicate/kenzer-bin.git
fi
git clone https://github.com/ARPSyndicate/kenzer-templates.git
sudo cp kenzer-bin/* /usr/bin/
cd ..
pip3 install -U -r requirements.txt
sudo python3 -m spacy download en
mkdir ~/.config
mkdir ~/.config/subfinder
mkdir ~/.gf
#sudo pacman -S nmap xsltproc chromium-browser
sudo apt install nmap xsltproc chromium-browser
cp configs/subfinder.yaml ~/.config/subfinder/config.yaml
cp resources/kenzer-templates/gf/* ~/.gf/
./run.sh