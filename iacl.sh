#!/bin/bash

echo "Criação de diretórios: "

mkdir /adm
mkdir /sec
mkdir /ven
mkdir /public

echo "Criando grupos de usuários: "

groupadd grupo_ADM
groupadd grupo_SEC
groupadd grupo_VEN


echo "Criando usuários: "

useradd ian -m -s /bin/bash -p $(openssl passwd Senha123) -G grupo_ADM
useradd bruna -m -s /bin/bash -p $(openssl passwd Senha123) -G grupo_ADM
useradd paulo -m -s /bin/bash -p $(openssl passwd Senha123) -G grupo_ADM

useradd joana -m -s /bin/bash -p $(openssl passwd Senha123) -G grupo_SEC
useradd pedro -m -s /bin/bash -p $(openssl passwd Senha123) -G grupo_SEC
useradd marcos -m -s /bin/bash -p $(openssl passwd Senha123) -G grupo_SEC

useradd beatriz -m -s /bin/bash -p $(openssl passwd Senha123) -G grupo_VEN
useradd henrique -m -s /bin/bash -p $(openssl passwd Senha123) -G grupo_VEN
useradd luana -m -s /bin/bash -p $(openssl passwd Senha123) -G grupo_VEN

echo "Especificando permissões para diretórios: "

chown root:grupo_ADM /adm
chown root:grupo_SEC /sec
chown root:grupo_VEN /ven

chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777 /public

echo "Fim."
