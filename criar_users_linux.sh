#!/bin/bash


echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

useradd leandro -m -s /bin/bash -p $ (openssl passwd -crypt Senha123) -G GRP_ADM
useradd aparecida -m -s /bin/bash -p $ (openssl passwd -crypt Senha123) -G GRP_ADM
useradd deusina -m -s /bin/bash -p $ (openssl passwd -crypt Senha123) -G GRP_ADM

useradd victor -m -s /bin/bash -p $ (openssl passwd -crypt Senha123) -G GRP_VEN
useradd kaleb -m -s /bin/bash -p $ (openssl passwd -crypt Senha123) -G GRP_VEN
useradd jose -m -s /bin/bash -p $ (openssl passdw -crypt Senha123) -G GRP_VEN

useradd ambrosina -m -s /bin/bash -p $ (openssl passdw -crypt Senha123) -G GRP_SEC
useradd rodrigo -m -s /bin/bash -p $ (openssl passdw -crypt Senha123) -G GRP_SEC
useradd eduardo -m -s /bin/bash -p $ (openssl passdw -crypt Senha123) -G GRP_SEC

echo "Especificando permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
