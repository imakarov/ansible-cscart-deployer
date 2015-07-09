# Автоконфигуратор сервера для CS-Cart и Multi-Vendor

Сценарий автоматически настроит сервер для CS-Cart и Multi-Vendor. Работает в Ubuntu 14.04+, Debian 6/7 и CentOS 6/7.

[![Туториал](https://img.youtube.com/vi/Z_iVBRcmlaA/0.jpg)](https://www.youtube.com/watch?v=Z_iVBRcmlaA)

## Использование

 1. Установите зависимости 

		cd /tmp
		curl -sL https://gist.github.com/gongled/a524d42d4a4ad8551756/raw/ansible-bootstrap.sh | /bin/bash
		cd ansible

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
