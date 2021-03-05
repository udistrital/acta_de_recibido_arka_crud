# acta_recibido_crud

API CRUD para el consumo de datos del módulo de acta de recibido de la plataforma ARKA II,
referente al modelo de negocio de inventarios de la Universidad Distrital.

## Especificaciones Técnicas

### Tecnologías Implementadas y Versiones
* [Golang](https://github.com/udistrital/introduccion_oas/blob/master/instalacion_de_herramientas/golang.md)
* [BeeGo](https://github.com/udistrital/introduccion_oas/blob/master/instalacion_de_herramientas/beego.md)
* [Docker](https://docs.docker.com/engine/install/ubuntu/)
* [Docker Compose](https://docs.docker.com/compose/)

### Variables de Entorno
```shell
API_ACTA_RECIBIDO_HTTP_PORT=[Puerto asignado para la ejecución del API]
ACTA_RECIBIDO_CRUD__PGUSER=[Usuario de la base de datos]
ACTA_RECIBIDO_CRUD__PGPASS=[Clave del usuario para la conexión a la base de datos]
ACTA_RECIBIDO_CRUD__PGURLS=[Host de conexión]
ACTA_RECIBIDO_CRUD__PGDB=[Nombre de la base de datos]
ACTA_RECIBIDO_CRUD__SCHEMA=[Esquema a utilizar en la base de datos]
ACTA_RECIBIDO_CRUD__LOG=[Archivo para logs]
RUN_MODE=[Modo de ejecución del api]

# Ejemplo
API_ACTA_RECIBIDO_HTTP_PORT=8080
ACTA_RECIBIDO_CRUD__PGUSER=postgres
ACTA_RECIBIDO_CRUD__PGPASS=****
ACTA_RECIBIDO_CRUD__PGURLS=127.0.0.1
ACTA_RECIBIDO_CRUD__PGDB=arka
ACTA_RECIBIDO_CRUD__SCHEMA=public
ACTA_RECIBIDO_CRUD__LOG=
RUN_MODE=dev
```
**NOTA:** Las variables se pueden ver en el fichero conf/app.conf y están identificadas con ACTA_RECIBIDO_CRUD__  
Para definir puertos, dns y configuraciones internas dentro del archivo **.env**  
Para definir conexiones externas a otros apis se debe crear el archivo **custom.env** en la raiz del proyecto  


### Ejecución del Proyecto
```shell
#1. Obtener el repositorio con Go
go get github.com/udistrital/acta_recibido_crud

#2. Moverse a la carpeta del repositorio
cd $GOPATH/src/github.com/udistrital/acta_recibido_crud

# 3. Moverse a la rama **develop**
git pull origin develop && git checkout develop

# 4. alimentar todas las variables de entorno que utiliza el proyecto.
ACTA_RECIBIDO_CRUD__PORT=8080 ACTA_RECIBIDO_CRUD__PGURLS=127.0.0.1:27017 ACTA_RECIBIDO_CRUD__SOME_VARIABLE=some_value bee run
```

### Ejecución Dockerfile
```shell
# docker build --tag=acta_recibido_crud . --no-cache
# docker run -p 80:80 acta_recibido_crud
```

### Ejecución docker-compose
```shell
#1. Clonar el repositorio
git clone -b develop https://github.com/udistrital/acta_recibido_crud

#2. Moverse a la carpeta del repositorio
cd acta_recibido_crud

#3. Crear un fichero con el nombre **custom.env**
# En windows ejecutar:* ` ni custom.env`
touch custom.env

#4. Crear la network **back_end** para los contenedores
docker network create back_end

#5. Ejecutar el compose del contenedor
docker-compose up --build

#6. Comprobar que los contenedores estén en ejecución
docker ps
```

### Ejecución Pruebas

Pruebas unitarias
```shell
# Not Data
```
## Estado CI

| Develop | Relese 0.0.1 | Master |
| -- | -- | -- |
| [![Build Status](https://hubci.portaloas.udistrital.edu.co/api/badges/udistrital/acta_recibido_crud/status.svg?ref=refs/heads/develop)](https://hubci.portaloas.udistrital.edu.co/udistrital/acta_recibido_crud) | [![Build Status](https://hubci.portaloas.udistrital.edu.co/api/badges/udistrital/acta_recibido_crud/status.svg?ref=refs/heads/release/0.0.1)](https://hubci.portaloas.udistrital.edu.co/udistrital/acta_recibido_crud) | [![Build Status](https://hubci.portaloas.udistrital.edu.co/api/badges/udistrital/acta_recibido_crud/status.svg)](https://hubci.portaloas.udistrital.edu.co/udistrital/acta_recibido_crud) |


## Modelo de Datos

![Modelo de Datos](https://drive.google.com/drive/u/2/folders/1S3kFMd43jjnfc5VSK7EQipw99cf9zuM2)

## Licencia

This file is part of acta_recibido_crud.

acta_recibido_crud is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

acta_recibido_crud is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with acta_recibido_crud. If not, see https://www.gnu.org/licenses/.
