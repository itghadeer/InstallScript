FROM odoo:16.0
WORKDIR /opt/odoo
COPY . /opt/odoo
CMD ["./odoo-bin", "-c", "/etc/odoo/odoo.conf"]
