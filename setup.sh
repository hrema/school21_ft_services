# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrema <hrema@student.21-school.ru>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/04 19:05:15 by hrema             #+#    #+#              #
#    Updated: 2020/12/07 14:53:15 by hrema            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

minikube start --vm-driver=virtualbox

eval $(minikube -p minikube docker-env)

minikube dashboard &

minikube addons enable metallb
kubectl apply -f ./srcs/metallb.yaml

# Nginx
docker build -t nginx ./srcs/nginx/
kubectl apply -f ./srcs/nginx/nginx.yaml

# MySQL
docker build -t mysql ./srcs/mysql/
kubectl apply -f ./srcs/mysql/mysql.yaml

# PHPMyAdmin
docker build -t phpmyadmin ./srcs/phpmyadmin/
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin.yaml

#WordPress
docker build -t wordpress ./srcs/wordpress/
kubectl apply -f ./srcs/wordpress/wordpress.yaml

#InfluxDB
docker build -t influxdb ./srcs/influxdb
kubectl apply -f ./srcs/influxdb/influxdb.yaml

# Telegraf
docker build -t telegraf ./srcs/telegraf
kubectl apply -f ./srcs/telegraf/telegraf.yaml

# Grafana
docker build -t grafana ./srcs/grafana
kubectl apply -f ./srcs/grafana/grafana.yaml

# Ftps
docker build -t ftps ./srcs/ftps
kubectl apply -f ./srcs/ftps/ftps.yaml
