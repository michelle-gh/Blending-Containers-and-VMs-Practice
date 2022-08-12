# Firecracker

## Acomodar el ambiente

Para descargar firecracker, una imagen de ubuntu compatible y el sistema de archivos correspondiente ejecutar una vez:

    make setup

o directamente ejecutar el script:

    ./Setup.sh

## Dispositivo de internet para firecracker

Por defecto firecracker no viene con ningún dispositivo de puente de internet, ejecute el siguiente script para acomodar un puente de internet (utiliza la misma interfaz de docker, por lo que requiere docker instalado)

    make net

o directamente ejecutar el script:

    sudo ./Setup-network.sh

## Lanzar firecracker

    make run

o directamente ejecutar el script:

    sudo ./Start.sh

## Dentro del contenedor de Firecracker lanza este comando para tener acceso a internet: (Requiere haber ejecutado Setup-network.sh con aterioridad)

    ip addr add dev eth0 172.17.100.1/16 && ip route add default via 172.17.0.1 && echo "nameserver 8.8.8.8" > /etc/resolv.conf
