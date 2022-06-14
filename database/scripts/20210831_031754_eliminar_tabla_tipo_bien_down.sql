CREATE TABLE IF NOT EXISTS acta_recibido.tipo_bien (
	id serial NOT NULL,
	nombre character varying(20) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_tipo_bien PRIMARY KEY (id)
);

ALTER TABLE acta_recibido.elemento ADD COLUMN IF NOT EXISTS tipo_bien_id INTEGER;

ALTER TABLE acta_recibido.elemento ADD CONSTRAINT fk_elemento_tipo_bien FOREIGN KEY (tipo_bien_id)
REFERENCES acta_recibido.tipo_bien (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
