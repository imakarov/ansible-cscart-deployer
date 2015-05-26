# Автоконфигуратор сервера для CS-Cart и Multi-Vendor
Сценарии за 10 минут помогут сконфигурировать сервер для магазинов CS-Cart и Multi-Vendor. Поддерживается установка LEMP в Ubuntu 14.04 и CentOS 6, и LEMH в Ubuntu 14.04 x64 на чистом сервере; работа на ранее настроенном сервере не гарантируется.  
На сервере настраивается NGINX 1.8.0,PHP 5.6 или HHVM 3.6.0 с поддержкой Redis и APCu,MySQL 5.5, а также Redis 2.3.0 для хранения кеша и сессий. Параметры оптимальны для работы в 5-долларовом дроплете Digital Ocean.  

[![Туториал](https://img.youtube.com/vi/Z_iVBRcmlaA/0.jpg)](https://www.youtube.com/watch?v=Z_iVBRcmlaA)

## **Установка**
Установите Ansible.<pre>sudo apt-get update  
sudo apt-get -y install git python-pip python-dev  
sudo pip install ansible</pre>Загрузите сценарии.<pre>

    sudo -i
    mkdir /srv/ansible
    cd /srv/ansible
    git clone https://github.com/gongled/ansible-cscart-deployer.git .
</pre>

## **Использование**
Исправьте конфиг**group_vars/all.**  
<pre>

    stores:
      mystore.com:
        storefronts: ['mystorefront.com']
        adminpanel: "secureadmin.php"
        pool: "www"
        root: "/var/www/html"
</pre>Запустите настройку.  
  
LAMP:<pre>ansible-playbook lemp.yml -c local</pre>LEMH:<pre>ansible-playbook lemh.yml -c local</pre>Готово.  
  
**
**
