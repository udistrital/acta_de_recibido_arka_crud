-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.2-beta
-- PostgreSQL version: 9.5
-- Project Site: pgmodeler.io
-- Model Author: ---


-- Database creation must be done outside a multicommand file.
-- These commands were put in this file only as a convenience.
-- -- object: new_database | type: DATABASE --
-- -- DROP DATABASE IF EXISTS new_database;
-- CREATE DATABASE new_database;
-- -- ddl-end --
-- 

-- object: acta_recibido | type: SCHEMA --
-- DROP SCHEMA IF EXISTS acta_recibido CASCADE;
CREATE SCHEMA acta_recibido;
-- ddl-end --
COMMENT ON SCHEMA acta_recibido IS 'Esquema para la gestión de actas de recibido';
-- ddl-end --

-- SET search_path TO pg_catalog,public,acta_recibido;
-- ddl-end --

-- object: acta_recibido.acta_recibido | type: TABLE --
-- DROP TABLE IF EXISTS acta_recibido.acta_recibido CASCADE;
CREATE TABLE acta_recibido.acta_recibido (
	id serial NOT NULL,
	ubicacion_id integer NOT NULL,
	fecha_visto_bueno date,
	revisor_id integer NOT NULL,
	observaciones character varying(300),
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_acta_recibido PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE acta_recibido.acta_recibido IS 'tabla para guardar informacion del acta recibido';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.acta_recibido.id IS 'campo para guardar identificador del acta recibido';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.acta_recibido.revisor_id IS 'campo para guardar el usuario del revisor que genera el acta recibido';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.acta_recibido.observaciones IS 'campo para guardar las observaciones del acta recibidio';
-- ddl-end --

-- object: acta_recibido.elemento | type: TABLE --
-- DROP TABLE IF EXISTS acta_recibido.elemento CASCADE;
CREATE TABLE acta_recibido.elemento (
	id serial NOT NULL,
	nombre character varying(300) NOT NULL,
	cantidad integer NOT NULL,
	marca character varying(50),
	serie character varying(100),
	unidad_medida integer NOT NULL,
	valor_unitario integer NOT NULL,
	subtotal integer,
	descuento integer,
	valor_total integer,
	porcentaje_iva_id integer NOT NULL,
	valor_iva integer,
	valor_final integer,
	subgrupo_catalogo_id integer NOT NULL,
	verificado boolean NOT NULL,
	tipo_bien_id integer NOT NULL,
	estado_elemento_id integer NOT NULL,
	soporte_acta_id integer NOT NULL,
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_elemento PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE acta_recibido.elemento IS 'tabla para guardar los elementos de acta recibido por contrato';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.id IS 'identificador para acta recibido elemento por contratos';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.nombre IS 'campo para guardar elemento acta recibido';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.cantidad IS 'campo para cantidad de elemento acta';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.marca IS 'campo para guardar marca del elemento acta recibido';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.serie IS 'campo para guardar serie elemento acta recibido';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.unidad_medida IS 'campo para guardar el tipo de unidad del elemento acta recibido,  se consume a través de Agora';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.valor_unitario IS 'campo que hace referencia al valor del elemento po unidad';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.subtotal IS 'Elemento que hace referencia al valor unitario por la cantidad de elementos del mismo ejemplar en el acta
';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.descuento IS 'Hace referencia al valor de descuento del subtotal
';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.valor_total IS 'Hace referencia al valor despues de descuento al que se le toman impuestos';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.porcentaje_iva_id IS 'Hace referencia al porcentaje de impuesto IVA del valor despues de descuento';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.valor_iva IS 'Hace referencia al valor de IVA tomado despues de restar los descuentos';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.valor_final IS 'Hace referencia al valor final despues de descuentos e impuestos del elemento ';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.subgrupo_catalogo_id IS 'foranea para relacionar subgrupo de inventarios con tabla de rompimiento contrato elemento y acta recibido';
-- ddl-end --

-- object: acta_recibido.estado_acta | type: TABLE --
-- DROP TABLE IF EXISTS acta_recibido.estado_acta CASCADE;
CREATE TABLE acta_recibido.estado_acta (
	id serial NOT NULL,
	nombre character varying(20) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_estado_acta PRIMARY KEY (id)
	 WITH (FILLFACTOR = 100)

);
-- ddl-end --
COMMENT ON TABLE acta_recibido.estado_acta IS 'tabla para almacenar los estados de acta recibido';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.estado_acta.id IS 'campo serial para estado acta recibido';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.estado_acta.nombre IS 'campo para almacenar campo nombre estado';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.estado_acta.descripcion IS 'campo para almacenar descripcion estado';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.estado_acta.codigo_abreviacion IS 'campo que indica la abreviaicion de estado acta recibido';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.estado_acta.activo IS 'campo que indica el estado para estado acta';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.estado_acta.numero_orden IS 'campo que indica el orden en ser mostrado el estado acta recibido';
-- ddl-end --

-- object: acta_recibido.estado_elemento | type: TABLE --
-- DROP TABLE IF EXISTS acta_recibido.estado_elemento CASCADE;
CREATE TABLE acta_recibido.estado_elemento (
	id serial NOT NULL,
	nombre character varying(20) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_estado_elemento PRIMARY KEY (id)

);
-- ddl-end --

-- object: acta_recibido.soporte_acta | type: TABLE --
-- DROP TABLE IF EXISTS acta_recibido.soporte_acta CASCADE;
CREATE TABLE acta_recibido.soporte_acta (
	id serial NOT NULL,
	consecutivo character varying(100) NOT NULL,
	proveedor_id integer NOT NULL,
	fecha_soporte date NOT NULL,
	acta_recibido_id integer NOT NULL,
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_soporte_acta PRIMARY KEY (id),
	CONSTRAINT uq_consecutivo UNIQUE (consecutivo)

);
-- ddl-end --
COMMENT ON COLUMN acta_recibido.soporte_acta.consecutivo IS 'Hace referencia al numero de factura o soporte que debe ser de caracter unico';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.soporte_acta.proveedor_id IS 'hace referencia al proveedro del documento de soporte o factura';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.soporte_acta.fecha_soporte IS 'hace referencia a la fecha de creacion o expedicion de la factura o soporte del acta de recibido';
-- ddl-end --

-- object: acta_recibido.tipo_bien | type: TABLE --
-- DROP TABLE IF EXISTS acta_recibido.tipo_bien CASCADE;
CREATE TABLE acta_recibido.tipo_bien (
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
-- ddl-end --

-- object: acta_recibido.historico_acta | type: TABLE --
-- DROP TABLE IF EXISTS acta_recibido.historico_acta CASCADE;
CREATE TABLE acta_recibido.historico_acta (
	id serial NOT NULL,
	acta_recibido_id integer NOT NULL,
	estado_acta_id integer NOT NULL,
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_historico_acta PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE acta_recibido.historico_acta IS 'tabla de rompimiento para la relacion de los estados del acta y el acta de recibido ';
-- ddl-end --

-- object: fk_elemento_estado_elemento | type: CONSTRAINT --
-- ALTER TABLE acta_recibido.elemento DROP CONSTRAINT IF EXISTS fk_elemento_estado_elemento CASCADE;
ALTER TABLE acta_recibido.elemento ADD CONSTRAINT fk_elemento_estado_elemento FOREIGN KEY (estado_elemento_id)
REFERENCES acta_recibido.estado_elemento (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_soporte_acta_acta_recibido | type: CONSTRAINT --
-- ALTER TABLE acta_recibido.soporte_acta DROP CONSTRAINT IF EXISTS fk_soporte_acta_acta_recibido CASCADE;
ALTER TABLE acta_recibido.soporte_acta ADD CONSTRAINT fk_soporte_acta_acta_recibido FOREIGN KEY (acta_recibido_id)
REFERENCES acta_recibido.acta_recibido (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_elemento_soporte_acta | type: CONSTRAINT --
-- ALTER TABLE acta_recibido.elemento DROP CONSTRAINT IF EXISTS fk_elemento_soporte_acta CASCADE;
ALTER TABLE acta_recibido.elemento ADD CONSTRAINT fk_elemento_soporte_acta FOREIGN KEY (soporte_acta_id)
REFERENCES acta_recibido.soporte_acta (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_elemento_tipo_bien | type: CONSTRAINT --
-- ALTER TABLE acta_recibido.elemento DROP CONSTRAINT IF EXISTS fk_elemento_tipo_bien CASCADE;
ALTER TABLE acta_recibido.elemento ADD CONSTRAINT fk_elemento_tipo_bien FOREIGN KEY (tipo_bien_id)
REFERENCES acta_recibido.tipo_bien (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_acta_recibido | type: CONSTRAINT --
-- ALTER TABLE acta_recibido.historico_acta DROP CONSTRAINT IF EXISTS fk_acta_recibido CASCADE;
ALTER TABLE acta_recibido.historico_acta ADD CONSTRAINT fk_acta_recibido FOREIGN KEY (acta_recibido_id)
REFERENCES acta_recibido.acta_recibido (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_estado_acta | type: CONSTRAINT --
-- ALTER TABLE acta_recibido.historico_acta DROP CONSTRAINT IF EXISTS fk_estado_acta CASCADE;
ALTER TABLE acta_recibido.historico_acta ADD CONSTRAINT fk_estado_acta FOREIGN KEY (estado_acta_id)
REFERENCES acta_recibido.estado_acta (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- Permisos de usuario
GRANT USAGE ON SCHEMA acta_recibido TO test;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA acta_recibido TO test;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA acta_recibido TO test;

-- Permisos de usuario
GRANT USAGE ON SCHEMA acta_recibido TO desarrollooas;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA acta_recibido TO desarrollooas;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA acta_recibido TO desarrollooas;
