#!/bin/bash

# Изменение области видимости сервера MySQL

# Замена значения bind-address в строке № 31 файла
sudo sed -i '31 s/127.0.0.1/192.168.50.11/' /etc/mysql/mysql.conf.d/mysqld.cnf
  
# Перезапуск mysql
sudo systemctl restart mysql
