# Acta de Recibido ARKA II CRUD

acta_de_recibido_arka : API CRUD para el consumo de datos para el modulo de acta de recibido de la plataforma ARKA II, 
referente al modelo de negocio de inventarios de la Universidad Distrital. 
El proyecto está escrito en el lenguaje Go, generado mediante el **[framework beego](https://beego.me/)**.

### Modelo de Datos

Sql de la base de datos: ** **


# Instalación
Para instalar el proyecto de debe relizar lo siguientes pasos:

## Opción 1

Ejecutar desde la terminal 'go get repositorio':
```shell 
go get github.com/udistrital/acta_de_recibido_arka_crud.git
```

## Opción 2

1. Clonar en el proyecto en la carpeta local: go/src/github.com/udistrital:
```shell
cd ~go/src/github.com/udistrital 
```

2. Ejecutar:

```shell 
git clone https://github.com/udistrital/acta_de_recibido_arka_crud.git
```

3. Ir a la carpeta del proyecto
```shell 
cd acta_de_recibido_arka_crud
```

4. Instalar dependencias del proyecto:
```shell 
go get
```


# Ejecución del proyecto
Ubicado en la raíz del proyecto,
```shell 
cd ~/go/src/github.com/udistrital/acta_de_recibido_arka_crud
```

- Ejecutar: 
```shell 
bee run
```
- O si se quiere ejecutar el swager:

```shell 
bee run -downdoc=true -gendoc=true
```

### Puertos
* El servidor se expone en el puerto: 127.0.0.1:8080

* Para ver la documentación de swagger: [127.0.0.1:8080/swagger/](http://127.0.0.1:8080/swagger/)
