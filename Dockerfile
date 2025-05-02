# Usar una imagen base de Linux
FROM ubuntu:latest

# Instalar bash y cualquier dependencia necesaria
RUN apt-get update && apt-get install -y bash

# Copiar el script al contenedor
COPY ejercicio6.sh /usr/local/bin/ejercicio6.sh

# Dar permisos de ejecución al script
RUN chmod +x /usr/local/bin/ejercicio6.sh

# Establecer el script como el comando predeterminado
CMD ["/usr/local/bin/ejercicio6.sh"]
