echo "gui autologin"
sudo cp -f lightdm.conf /etc/lightdm/lightdm.conf
sudo cp -f firmware.desktop /etc/xdg/autostart/firmware.desktop
sudo echo "pi ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

cd /home/pi
read -p "Enter Card Code : " card_code
echo "$card_code" >> id.txt

cp ./opich/run.sh ./run.sh
chmod 777 ./run.sh

cd opich
./firmware.exe

echo "do not forget to hide task bar now"
