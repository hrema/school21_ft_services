# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrema <hrema@student.21-school.ru>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/07 14:17:17 by hrema             #+#    #+#              #
#    Updated: 2020/12/07 14:17:18 by hrema            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/sh

rc default

mkdir /run/nginx
mkdir /run/sshd
chmod 744 /run/nginx
chmod 744 /run/sshd

rc-service sshd start
ssh-keygen -A
rc-service sshd stop

/usr/bin/supervisord -c /etc/supervisord.conf