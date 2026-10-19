echo "=== 1. Comprobación de sintaxis de ficheros ==="
named-checkconf /etc/bind/named.conf.options && echo "[OK] named.conf.options"
named-checkzone ignacio.test /var/lib/bind/ignacio.test.dns && echo "[OK] Zona directa"
named-checkzone 56.168.192.in-addr.arpa /var/lib/bind/ignacio.test.rev && echo "[OK] Zona inversa"

echo "=== 2. Comprobación de resolución ==="
dig @127.0.0.1 web.ignacio.test CNAME +short
dig @127.0.0.1 ignacio.test TXT +short
dig @127.0.0.1 -x 192.168.56.10 +short