# Автоконфигуратор сервера для CS-Cart и Multi-Vendor

Сценарий автоматически настроит сервер для CS-Cart и Multi-Vendor. Работает в Ubuntu 14.04+ и CentOS 6.6.

[![Туториал](https://img.youtube.com/vi/Z_iVBRcmlaA/0.jpg)](https://www.youtube.com/watch?v=Z_iVBRcmlaA)

## Использование

 1. Установите зависимости 

		curl -Ls https://gist.githubusercontent.com/gongled/a524d42d4a4ad8551756/raw/67b60412995b0c3ef442953ad5b8199fe9d42979/gistfile1.sh | /bin/bash

 2. Исправьте конфиг *group_vars/all*.

         stores:
           mystore.com:
             storefronts: ['mystorefront.com']
             adminpanel: "secureadmin.php"
             pool: "www"
             root: "/var/www/html"

 3. Запустите настройку для установки LEMP

         ansible-playbook lemp.yml -c local

    или для LEMH

         ansible-playbook lemh.yml -c local

 Учтите, что для HHVM потребуется 64-разрядная Ubuntu 14.04.

 **Готово.**
