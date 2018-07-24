FROM python:latest

EXPOSE 80 443 3000 35729 8080

RUN pip install django

ADD start.sh /scripts/start.sh
RUN chmod +x /scripts/start.sh
RUN echo "    IdentityFile ~/.ssh/id_rsa" >> /etc/ssh/ssh_config
CMD ["/scripts/start.sh"]
