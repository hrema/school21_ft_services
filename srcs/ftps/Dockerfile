# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrema <hrema@student.21-school.ru>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/04 19:06:39 by hrema             #+#    #+#              #
#    Updated: 2020/12/04 19:56:26 by hrema            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

RUN 	apk update && \
        apk add openrc 

WORKDIR /srcs

RUN	apk add vsftpd && \
        apk add openssl

RUN     openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
        -subj '/C=RU/ST=Moscow/L=Moscow/O=42/OU=21/CN=hrema' \
        -keyout /etc/ssl/private/vsftpd.key \
        -out /etc/ssl/certs/vsftpd.crt

RUN     adduser -D -h /var/ftp hrema; echo "hrema:pass" | chpasswd

RUN     mkdir -p /var/ftp

COPY    vsftpd.conf /etc/vsftpd/vsftpd.conf

EXPOSE  20 21 30000

CMD     ["vsftpd", "/etc/vsftpd/vsftpd.conf"]
