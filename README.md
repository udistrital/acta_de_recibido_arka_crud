# Acta de Recibido ARKA II CRUD

acta_recibido_crud : API CRUD para el consumo de datos para el modulo de acta de recibido de la plataforma ARKA II, 
referente al modelo de negocio de inventarios de la Universidad Distrital. 
El proyecto está escrito en el lenguaje Go, generado mediante el **[framework beego](https://beego.me/)**.

## Modelo de Datos

### SQL del Modelo de datos: 

https://drive.google.com/open?id=1axnn6JPRVDLtPF9qunibtwKkFzn4M6oh

### Imagen del Modelo de Datos

https://drive.google.com/open?id=12zD-XDVDQ_iG9nFZM-vMbjOP_f47GVml

![image](acta_recibidov3_revision.png).


# Instalación
Para instalar el proyecto de debe relizar lo siguientes pasos:

## Opción 1

Ejecutar desde la terminal 'go get repositorio':
```shell 
go get github.com/udistrital/acta_recibido_crud.git
```

## Opción 2

1. Clonar en el proyecto en la carpeta local: go/src/github.com/udistrital:
```shell
cd ~go/src/github.com/udistrital 
```

2. Ejecutar:

```shell 
git clone https://github.com/udistrital/acta_recibido_crud.git
```

3. Ir a la carpeta del proyecto
```shell 
cd acta_de_recibido_crud
```

4. Instalar dependencias del proyecto:
```shell 
go get
```
# Variables de Entorno

Definir los valores de las siguientes variables de entorno:

 - `API_ACTA_RECIBIDO_HTTP_PORT`: Puerto asignado para la ejecución del API
 - `ACTA_RECIBIDO_CRUD__PGUSER`: Usuario de la base de datos
 - `ACTA_RECIBIDO_CRUD__PGPASS`: Clave del usuario para la conexión a la base de datos  
 - `ACTA_RECIBIDO_CRUD__PGURLS`: Host de conexión
 - `ACTA_RECIBIDO_CRUD__PGDB`: Nombre de la base de datos
 - `ACTA_RECIBIDO_CRUD__SCHEMA`: Esquema a utilizar en la base de datos
 - `ACTA_RECIBIDO_CRUD__LOG`: Archivo para logs
 - `RUN_MODE`: Modo de ejecución del api.

## Ejemplo: 

 - `API_ACTA_RECIBIDO_HTTP_PORT`: 8080
 - `ACTA_RECIBIDO_CRUD__PGUSER`: postgres
 - `ACTA_RECIBIDO_CRUD__PGPASS`: 
 - `ACTA_RECIBIDO_CRUD__PGURLS`: 127.0.0.1
 - `ACTA_RECIBIDO_CRUD__PGDB`: arka
 - `ACTA_RECIBIDO_CRUD__SCHEMA`: acta_recibido
 - `ACTA_RECIBIDO_CRUD__LOG`:
 - `RUN_MODE`: dev

# Ejecución del proyecto
Ubicado en la raíz del proyecto,
```shell 
cd ~/go/src/github.com/udistrital/acta_recibido_crud
```
A travez de un archivo con extension .sh se deben escribir las variables de entorno separadas con un espacio y seguidas del comando para la ejecucuin del proyecto

- Ejecutar: 
```shell 
API_ACTA_RECIBIDO_HTTP_PORT=8080 ACTA_RECIBIDO_CRUD__PGUSER=postgres ACTA_RECIBIDO_CRUD__PGPASS= ACTA_RECIBIDO_CRUD__PGURLS=127.0.0.1 ACTA_RECIBIDO_CRUD__PGDB=arka ACTA_RECIBIDO_CRUD__SCHEMA=acta_recibido RUN_MODE=dev bee run
```
- O si se quiere ejecutar el swager:

```shell 
API_ACTA_RECIBIDO_HTTP_PORT=8080 ACTA_RECIBIDO_CRUD__PGUSER=postgres ACTA_RECIBIDO_CRUD__PGPASS= ACTA_RECIBIDO_CRUD__PGURLS=127.0.0.1 ACTA_RECIBIDO_CRUD__PGDB=arka ACTA_RECIBIDO_CRUD__SCHEMA=acta_recibido RUN_MODE=dev bee run -downdoc=true -gendoc=true
```

# Endpoint

## Ejemplo

* para este caso, el servidor se expone en el puerto: 127.0.0.1:8080 

* Para ver la documentación de swagger: [127.0.0.1:8080/swagger/](http://127.0.0.1:8080/swagger/)
