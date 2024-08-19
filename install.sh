#!/bin/bash

# Limpiar pantalla
clear

# Actualizar el sistema
echo "Actualizando el sistema..."
apt update -y && apt upgrade -y

# Instalar Python y pip
echo "Instalando Python y pip..."
apt install -y python3 python3-pip

# Instalar las librerías necesarias para el script
echo "Instalando librerías de Python..."
pip3 install requests

# Descargar el script desde GitHub usando wget
echo "Descargando el script desde GitHub..."
wget -O /usr/local/bin/myscript.py https://github.com/usuario/repositorio/raw/main/script.py

# Dar permisos de ejecución al script
echo "Asignando permisos de ejecución al script..."
chmod +x /usr/local/bin/myscript.py

# Ejecutar el script descargado
echo "Ejecutando el script descargado..."
/usr/local/bin/myscript.py

# Confirmar instalación
echo "La instalación se completó exitosamente y el script ha sido ejecutado."
