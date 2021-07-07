# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrema <hrema@student.21-school.ru>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/07 14:20:10 by hrema             #+#    #+#              #
#    Updated: 2020/12/07 14:20:11 by hrema            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/sh

rc default

mkdir www/phpmyadmin/tmp

chmod 777 www/phpmyadmin/tmp

mkdir /run/nginx

chmod 744 /run/nginx

/usr/bin/supervisord -c /etc/supervisord.conf
