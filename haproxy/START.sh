for i in {1..3}
do
    podman run --rm -d -p 808$i:80 httpd:alpine3.17 sh -c "hostname > /usr/local/apache2/htdocs/index.html; httpd-foreground"
done

podman run --rm -d -p 8080:80 -v "haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg" haproxy:2.7.3