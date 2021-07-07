# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrema <hrema@student.21-school.ru>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/07 14:14:02 by hrema             #+#    #+#              #
#    Updated: 2020/12/07 14:49:29 by hrema            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

RUN 	apk update && \
		apk add openrc 

RUN		apk add nginx && \
		apk add supervisor

RUN		apk add openssl && \
		apk add openssh

RUN		adduser -D 'hrema'; echo "hrema:pass" | chpasswd;

RUN 	openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
		-subj '/C=RU/ST=Moscow/L=Moscow/O=42/OU=21/CN=hrema' \
		-keyout /etc/ssl/localhost.key \
		-out /etc/ssl/localhost.crt

RUN		mkdir www

COPY	./srcs/index.html /www/

COPY 	./srcs/nginx.conf /etc/nginx/conf.d/default.conf

COPY 	./srcs/supervisord.conf /etc/supervisord.conf

COPY 	./srcs/start.sh start.sh

RUN 	chmod 711 start.sh

EXPOSE	80 443 22

CMD		[ "sh", "start.sh" ]
