
FROM amazonlinux:latest
RUN yum update -y && \
    yum install -y httpd && \
    yum search wget && \
    yum install wget -y && \
    yum install unzip -y

RUN cd /var/www/html


COPY . /var/www/html
RUN npm install
EXPOSE 8000
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]