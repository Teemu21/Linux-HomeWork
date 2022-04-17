apache2:
  pkg.installed

a2enmod userdir:
 cmd.run:
   - creates: /etc/apache2/mods-enabled/userdir.conf

apache2.service:
 service.running:
   - watch:
     - cmd: 'a2enmod userdir'



