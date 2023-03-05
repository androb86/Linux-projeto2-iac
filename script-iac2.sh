#!/bin/bash


echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y

echo "Fazendo Instalacao necessarias apche,unzip"
apt-get install apache -y
apt-get install unzip -y

echo "Acessando diretorio"
cd /tmp

echo "Baixando arquivos do github"
wget https://github.com/denilsonbonatti/linux-projeto2-iac.git

echo "Descompactando arquivos"
unzip main.zip

echo "Acessando diretorio"
cd linux-site-dio-main

echo "copiando para o diretorio Apche padrao"
cp -R * /var/www/html/ 


