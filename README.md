# Practica-dns
# Configuracion de un Servidor DNS Paso a Paso

**Autor:** Ignacio
**Repositorio:** Practica-dns

Este repositorio tiene la configuracion de un servidor DNS BIND9 en Debian con Vagrant, incluye la resolución de zonas directa e inversa, registros de ampliación (CNAME, TXT, PTR) y un script de autocomprobacion(`test.sh`).

## Estructura del Repositorio
* `files/`: Ficheros de configuración de BIND9 y zonas DNS (`named.conf.options`, `named.conf.local`, `ignacio.test.dns`, `ignacio.test.rev`).
* `config/`: Scripts de aprovisionamiento de Vagrant (`provision.sh`).
* `doc/`: Documentación del proceso y capturas de pantalla de las pruebas.
* `test.sh`: Script de autocomprobación del servidor DNS.
* `Vagrantfile`: Fichero de despliegue de la infraestructura como código.