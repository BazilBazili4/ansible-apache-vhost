<VirtualHost 188.225.10.135:80>
	ServerName test2-realty.realtycrm.pro
	DocumentRoot /var/www/www-root/data/www/test-realty.realtycrm.pro/backend/web
	ServerAdmin webmaster@test-realty.realtycrm.pro
	AddDefaultCharset off
	SuexecUserGroup www-root www-root
	CustomLog /var/www/www-root/data/logs/test-realty.realtycrm.pro.access.log combined
	ErrorLog /var/www/www-root/data/logs//test-realty.realtycrm.pro.error.log
	<FilesMatch "\.ph(p[3-5]?|tml)$">
		SetHandler fcgid-script
		FCGIWrapper /var/www/php-bin-isp-php71/www-root/php
	</FilesMatch>
	ServerAlias www.test-realty.tw1.su
	DirectoryIndex index.php index.html
</VirtualHost>
<Directory /var/www/www-root/data/www/test2-realty.realtycrm.pro/backend/web>
	Options +Includes +ExecCGI
</Directory>
<Directory /var/www/www-root/data/www/test2-realty.realtycrm.pro>
	Options +Includes +ExecCGI
</Directory>