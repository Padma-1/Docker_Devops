FROM ubuntu:latest
LABEL "Author"="Padma"
LABEL "Project"="nano"
ENV DEBIAN_FRONTEND=noninteractive #to get noninteractive session while running docker build
#Every RUN instruction creates a layer, it's good to have less layers as possible by combining commands using &&
RUN apt update && apit install git -y
RUN apt install apache2 -y
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
#COPY nano.tar.gz /var/www/html
ADD nano.tar.gz /var/www/html #using ADD, so that it will untar and be in destination path
