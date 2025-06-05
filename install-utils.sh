sudo apt install -y htop btop lsof ipcalc

mkdir -p ~/git/

echo "installing number converter toolbox"
git clone https://github.com/ChevalierSoft/bdh-quick-converter.git ~/git/

echo "installing pswdgen"
go install github.com/chevaliersoft/pswdgen@v1.0.0

echo "done"
