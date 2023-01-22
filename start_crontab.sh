sudo yum install cronie
sudo systemctl start crond
sudo systemctl status crond
sudo systemctl enable crond
sudo mkdir -p scripts/status_apache



echo "Tudo instalado agora crie os scripts .sh para statuscheck em: scripts/"
