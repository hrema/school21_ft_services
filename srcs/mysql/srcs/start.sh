# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrema <hrema@student.21-school.ru>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/07 14:13:48 by hrema             #+#    #+#              #
#    Updated: 2020/12/08 13:20:08 by hrema            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

openrc default
/etc/init.d/mariadb setup
rc-service mariadb start
mysql -u root mysql < createdb.sql
mysql -u root hrema < hrema_db.sql
rc-service mariadb stop
/usr/bin/mysqld_safe --datadir='/var/lib/mysql'