FROM odoo:16.0
RUN apt-get update && apt-get install -y git build-essential
WORKDIR /opt/odoo
COPY . /opt/odoo
CMD ["./odoo-bin", "-c", "/etc/odoo/odoo.conf"]
