#!/bin/bash

echo "===== inicio do script para dio linux experience ======"
echo "criando diretorios..."

mkdir /tmp/dioLinuxExperience/publico -p
mkdir /tmp/dioLinuxExperience/adm -p
mkdir /tmp/dioLinuxExperience/ven -p
mkdir /tmp/dioLinuxExperience/sec -p

echo "criando grupo de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123P) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "adicionando donos e  permissoes aos diretorios..."

chown root:GRP_ADM /tmp/dioLinuxExperience/adm
chown root:GRP_VEN /tmp/dioLinuxExperience/ven
chown root:GRP_SEC /tmp/dioLinuxExperience/sec

chmod 777 /tmp/dioLinuxExperience/publico
chmod 770 /tmp/dioLinuxExperience/adm
chmod 770 /tmp/dioLinuxExperience/ven
chmod 770 /tmp/dioLinuxExperience/sec

echo "===== fim do script dio ====="
