CREATE TABLE acta_recibido.elemento_campo(
	id serial NOT NULL,
	elemento_id integer NOT NULL,
	campo_id integer NOT NULL,
	valor varchar(200),
	activo boolean NOT NULL,
	fecha_creacion timestamp with time zone NOT NULL,
	fecha_modificacion timestamp with time zone NOT NULL,
	CONSTRAINT pk_elemento_campo PRIMARY KEY (id)
);

CREATE TABLE acta_recibido.campo(
	id serial NOT NULL,
	nombre varchar(20),
	sigla varchar(10),
	descripcion varchar(100),
	activo boolean NOT NULL,
	fecha_creacion timestamp with time zone NOT NULL,
	fecha_modificacion timestamp with time zone NOT NULL,
	CONSTRAINT pk_campo PRIMARY KEY (id)
);

ALTER TABLE acta_recibido.elemento_campo ADD CONSTRAINT fk_elemento_campo_elemento FOREIGN KEY (elemento_id)
REFERENCES acta_recibido.elemento (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE acta_recibido.elemento_campo ADD CONSTRAINT fk_elemento_campo_campo FOREIGN KEY (campo_id)
REFERENCES acta_recibido.campo (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
