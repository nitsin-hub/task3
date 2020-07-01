#!/bin/sh

if [ $(ls -1 *.php 2>/dev/null | wc -l) != 0 ]
then
	mkdir php 2>/dev/null
	cp $(ls *.php) php 2>/dev/null
       # docker run -itd -v /root/DevOps_AL/code_detect/php:/var/www/html -p 8001:80 --name php_cont vimal13/apache-webserver-php 2>/dev/null
        kubectl apply -f php_test_deployment.yml
        
fi

if [ $(ls -1 *.html 2>/dev/null | wc -l) != 0 ]
then
	mkdir html 2>/dev/null
	cp $(ls *.html) html  2>/dev/null
       # docker run -itd -v /root/DevOps_AL/code_detect/html:/usr/local/apache2/htdocs -p 8002:80 --name http_cont httpd 2>/dev/null
fi

<< 'MULTILINE-COMMENT'

if [ $(ls -1 *.py 2>/dev/null | wc -l) != 0 ]
then
	mkdir py 2>/dev/null
	cp $(ls *.py) py 2>/dev/null
fi

if [ $(ls -1 *.js 2>/dev/null | wc -l) != 0 ]
then
	mkdir js 2>/dev/null
	cp $(ls *.js) js 2>/dev/null
fi


mkdir other 2>/dev/null
cp $(ls -I "*.html" -I "*.php" -I "*.js" -I "*.py") other 2>/dev/null


MULTILINE-COMMENT

