# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrema <hrema@student.21-school.ru>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/07 14:23:19 by hrema             #+#    #+#              #
#    Updated: 2020/12/07 14:23:20 by hrema            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/sh

rc default

mkdir /run/nginx

chmod 744 /run/nginx

/usr/bin/supervisord -c /etc/supervisord.conf