cp test.conf /etc/nginx/conf.d/
rm -rf /etc/nginx/conf.d/default.conf

mkdir /etc/nginx/html
cp index.html /etc/nginx/html/

echo $HOSTNAME >> /etc/nginx/html/index.html

nginx