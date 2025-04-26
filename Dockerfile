FROM odoo:16.0

RUN sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirrors.ubuntu.com/g' /etc/apt/sources.list && \
    apt-get clean && \
    apt-get update && \
    apt-get install -y git build-essential

WORKDIR /opt/odoo

COPY . /opt/odoo

CMD ["./odoo-bin", "-c", "/etc/odoo/odoo.conf"]
