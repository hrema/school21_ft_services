# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrema <hrema@student.21-school.ru>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/04 19:15:14 by hrema             #+#    #+#              #
#    Updated: 2020/12/07 12:44:41 by hrema            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	alpine

RUN 	apk update && \
        apk add openrc 

RUN     apk add grafana --repository=http://dl-3.alpinelinux.org/alpine/edge/testing/

COPY    srcs/grafana.ini /usr/share/grafana/conf/custom.ini

COPY    srcs/datasources.yaml /usr/share/grafana/conf/provisioning/datasources/influxdb.yaml

COPY    srcs/dashboards.yaml /usr/share/grafana/conf/provisioning/dashboards/influxdb.yaml

RUN     mkdir -p /var/lib/grafana_dashboards/

COPY    srcs/dashboard.json /var/lib/grafana_dashboards/

EXPOSE  3000

CMD     ["/usr/sbin/grafana-server",  "--homepath=/usr/share/grafana"]
