-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.3
-- PostgreSQL version: 13.0
-- Project Site: pgmodeler.io
-- Model Author: ---

-- Database creation must be performed outside a multi lined SQL file. 
-- These commands were put in this file only as a convenience.
-- 
-- object: postgres | type: DATABASE --
-- DROP DATABASE IF EXISTS postgres;
CREATE DATABASE postgres
	ENCODING = 'UTF8'
	LC_COLLATE = 'en_US.UTF-8'
	LC_CTYPE = 'en_US.UTF-8'
	TABLESPACE = pg_default
	OWNER = postgres;
-- ddl-end --
COMMENT ON DATABASE postgres IS E'default administrative connection database';
-- ddl-end --


-- object: acta_recibido | type: SCHEMA --
-- DROP SCHEMA IF EXISTS acta_recibido CASCADE;
CREATE SCHEMA acta_recibido;
-- ddl-end --
ALTER SCHEMA acta_recibido OWNER TO postgres;
-- ddl-end --
COMMENT ON SCHEMA acta_recibido IS E'Esquema para la gestión de actas de recibido';
-- ddl-end --

SET search_path TO pg_catalog,public,acta_recibido;
-- ddl-end --

-- object: acta_recibido.acta_recibido_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS acta_recibido.acta_recibido_id_seq CASCADE;
CREATE SEQUENCE acta_recibido.acta_recibido_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE acta_recibido.acta_recibido_id_seq OWNER TO postgres;
-- ddl-end --

-- object: acta_recibido.acta_recibido | type: TABLE --
-- DROP TABLE IF EXISTS acta_recibido.acta_recibido CASCADE;
CREATE TABLE acta_recibido.acta_recibido (
	id integer NOT NULL DEFAULT nextval('acta_recibido.acta_recibido_id_seq'::regclass),
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	tipo_acta_id integer NOT NULL,
	CONSTRAINT pk_acta_recibido PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE acta_recibido.acta_recibido IS E'tabla para guardar informacion del acta recibido';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.acta_recibido.id IS E'campo para guardar identificador del acta recibido';
-- ddl-end --
ALTER TABLE acta_recibido.acta_recibido OWNER TO postgres;
-- ddl-end --

-- object: acta_recibido.elemento_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS acta_recibido.elemento_id_seq CASCADE;
CREATE SEQUENCE acta_recibido.elemento_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE acta_recibido.elemento_id_seq OWNER TO postgres;
-- ddl-end --

-- object: acta_recibido.elemento | type: TABLE --
-- DROP TABLE IF EXISTS acta_recibido.elemento CASCADE;
CREATE TABLE acta_recibido.elemento (
	id integer NOT NULL DEFAULT nextval('acta_recibido.elemento_id_seq'::regclass),
	nombre text NOT NULL,
	cantidad integer NOT NULL,
	marca character varying(50),
	serie character varying(100),
	unidad_medida integer NOT NULL,
	valor_unitario numeric(20,7) NOT NULL,
	subtotal numeric(20,7),
	descuento numeric(20,7),
	valor_total numeric(20,7),
	porcentaje_iva_id integer NOT NULL,
	valor_iva numeric(20,7),
	valor_final numeric(20,7),
	subgrupo_catalogo_id integer,
	estado_elemento_id integer NOT NULL,
	placa character varying(100),
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	espacio_fisico_id integer,
	acta_recibido_id integer NOT NULL,
	CONSTRAINT pk_elemento PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE acta_recibido.elemento IS E'tabla para guardar los elementos de acta recibido por contrato';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.id IS E'identificador para acta recibido elemento por contratos';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.nombre IS E'campo para guardar elemento acta recibido';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.cantidad IS E'campo para cantidad de elemento acta';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.marca IS E'campo para guardar marca del elemento acta recibido';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.serie IS E'campo para guardar serie elemento acta recibido';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.unidad_medida IS E'campo para guardar el tipo de unidad del elemento acta recibido,  se consume a través de Agora';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.valor_unitario IS E'campo que hace referencia al valor del elemento po unidad';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.subtotal IS E'Elemento que hace referencia al valor unitario por la cantidad de elementos del mismo ejemplar en el acta';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.descuento IS E'Hace referencia al valor de descuento del subtotal';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.valor_total IS E'Hace referencia al valor despues de descuento al que se le toman impuestos';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.porcentaje_iva_id IS E'Hace referencia al porcentaje de impuesto IVA del valor despues de descuento';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.valor_iva IS E'Hace referencia al valor de IVA tomado despues de restar los descuentos';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.valor_final IS E'Hace referencia al valor final despues de descuentos e impuestos del elemento';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.subgrupo_catalogo_id IS E'foranea para relacionar subgrupo de inventarios con tabla de rompimiento contrato elemento y acta recibido';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.placa IS E'Hace referencia a la placa del elemento para uso futuro en el modulo de salidas';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.elemento.espacio_fisico_id IS E'Hace referencia al id en la tabla espacio_físico en el api oikos_crud, en caso de que el elemento sea de tipo bien inmueble';
-- ddl-end --
ALTER TABLE acta_recibido.elemento OWNER TO postgres;
-- ddl-end --

-- object: acta_recibido.estado_acta_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS acta_recibido.estado_acta_id_seq CASCADE;
CREATE SEQUENCE acta_recibido.estado_acta_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE acta_recibido.estado_acta_id_seq OWNER TO postgres;
-- ddl-end --

-- object: acta_recibido.estado_acta | type: TABLE --
-- DROP TABLE IF EXISTS acta_recibido.estado_acta CASCADE;
CREATE TABLE acta_recibido.estado_acta (
	id integer NOT NULL DEFAULT nextval('acta_recibido.estado_acta_id_seq'::regclass),
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
COMMENT ON TABLE acta_recibido.estado_acta IS E'tabla para almacenar los estados de acta recibido';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.estado_acta.id IS E'campo serial para estado acta recibido';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.estado_acta.nombre IS E'campo para almacenar campo nombre estado';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.estado_acta.descripcion IS E'campo para almacenar descripcion estado';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.estado_acta.codigo_abreviacion IS E'campo que indica la abreviaicion de estado acta recibido';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.estado_acta.activo IS E'campo que indica el estado para estado acta';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.estado_acta.numero_orden IS E'campo que indica el orden en ser mostrado el estado acta recibido';
-- ddl-end --
ALTER TABLE acta_recibido.estado_acta OWNER TO postgres;
-- ddl-end --

-- object: acta_recibido.estado_elemento_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS acta_recibido.estado_elemento_id_seq CASCADE;
CREATE SEQUENCE acta_recibido.estado_elemento_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE acta_recibido.estado_elemento_id_seq OWNER TO postgres;
-- ddl-end --

-- object: acta_recibido.estado_elemento | type: TABLE --
-- DROP TABLE IF EXISTS acta_recibido.estado_elemento CASCADE;
CREATE TABLE acta_recibido.estado_elemento (
	id integer NOT NULL DEFAULT nextval('acta_recibido.estado_elemento_id_seq'::regclass),
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
ALTER TABLE acta_recibido.estado_elemento OWNER TO postgres;
-- ddl-end --

-- object: acta_recibido.soporte_acta_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS acta_recibido.soporte_acta_id_seq CASCADE;
CREATE SEQUENCE acta_recibido.soporte_acta_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE acta_recibido.soporte_acta_id_seq OWNER TO postgres;
-- ddl-end --

-- object: acta_recibido.soporte_acta | type: TABLE --
-- DROP TABLE IF EXISTS acta_recibido.soporte_acta CASCADE;
CREATE TABLE acta_recibido.soporte_acta (
	id integer NOT NULL DEFAULT nextval('acta_recibido.soporte_acta_id_seq'::regclass),
	consecutivo character varying(100),
	fecha_soporte date,
	acta_recibido_id integer NOT NULL,
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	documento_id integer,
	CONSTRAINT pk_soporte_acta PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON COLUMN acta_recibido.soporte_acta.consecutivo IS E'Hace referencia al numero de factura o soporte que debe ser de caracter unico';
-- ddl-end --
COMMENT ON COLUMN acta_recibido.soporte_acta.fecha_soporte IS E'hace referencia a la fecha de creacion o expedicion de la factura o soporte del acta de recibido';
-- ddl-end --
ALTER TABLE acta_recibido.soporte_acta OWNER TO postgres;
-- ddl-end --

-- object: acta_recibido.historico_acta_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS acta_recibido.historico_acta_id_seq CASCADE;
CREATE SEQUENCE acta_recibido.historico_acta_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE acta_recibido.historico_acta_id_seq OWNER TO postgres;
-- ddl-end --

-- object: acta_recibido.historico_acta | type: TABLE --
-- DROP TABLE IF EXISTS acta_recibido.historico_acta CASCADE;
CREATE TABLE acta_recibido.historico_acta (
	id integer NOT NULL DEFAULT nextval('acta_recibido.historico_acta_id_seq'::regclass),
	acta_recibido_id integer NOT NULL,
	estado_acta_id integer NOT NULL,
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	proveedor_id integer,
	ubicacion_id integer,
	revisor_id integer NOT NULL,
	persona_asignada_id integer NOT NULL,
	observaciones text,
	fecha_visto_bueno date,
	CONSTRAINT pk_historico_acta PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE acta_recibido.historico_acta IS E'tabla de rompimiento para la relacion de los estados del acta y el acta de recibido';
-- ddl-end --
ALTER TABLE acta_recibido.historico_acta OWNER TO postgres;
-- ddl-end --

-- object: acta_recibido.tipo_acta_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS acta_recibido.tipo_acta_id_seq CASCADE;
CREATE SEQUENCE acta_recibido.tipo_acta_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE acta_recibido.tipo_acta_id_seq OWNER TO postgres;
-- ddl-end --

-- object: acta_recibido.tipo_acta | type: TABLE --
-- DROP TABLE IF EXISTS acta_recibido.tipo_acta CASCADE;
CREATE TABLE acta_recibido.tipo_acta (
	id integer NOT NULL DEFAULT nextval('acta_recibido.tipo_acta_id_seq'::regclass),
	nombre character varying(20) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_tipo_acta PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE acta_recibido.tipo_acta OWNER TO postgres;
-- ddl-end --

-- object: acta_recibido.elemento_campo_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS acta_recibido.elemento_campo_id_seq CASCADE;
CREATE SEQUENCE acta_recibido.elemento_campo_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE acta_recibido.elemento_campo_id_seq OWNER TO postgres;
-- ddl-end --

-- object: acta_recibido.elemento_campo | type: TABLE --
-- DROP TABLE IF EXISTS acta_recibido.elemento_campo CASCADE;
CREATE TABLE acta_recibido.elemento_campo (
	id integer NOT NULL DEFAULT nextval('acta_recibido.elemento_campo_id_seq'::regclass),
	elemento_id integer NOT NULL,
	campo_id integer NOT NULL,
	activo boolean NOT NULL,
	fecha_creacion timestamp with time zone NOT NULL,
	fecha_modificacion timestamp with time zone NOT NULL,
	valor jsonb,
	CONSTRAINT pk_elemento_campo PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE acta_recibido.elemento_campo OWNER TO postgres;
-- ddl-end --

-- object: acta_recibido.campo_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS acta_recibido.campo_id_seq CASCADE;
CREATE SEQUENCE acta_recibido.campo_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;

-- ddl-end --
ALTER SEQUENCE acta_recibido.campo_id_seq OWNER TO postgres;
-- ddl-end --

-- object: acta_recibido.campo | type: TABLE --
-- DROP TABLE IF EXISTS acta_recibido.campo CASCADE;
CREATE TABLE acta_recibido.campo (
	id integer NOT NULL DEFAULT nextval('acta_recibido.campo_id_seq'::regclass),
	nombre character varying(20),
	sigla character varying(10),
	descripcion character varying(100),
	activo boolean NOT NULL,
	fecha_creacion timestamp with time zone NOT NULL,
	fecha_modificacion timestamp with time zone NOT NULL,
	metadato jsonb,
	CONSTRAINT pk_campo PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE acta_recibido.campo OWNER TO postgres;
-- ddl-end --

-- object: fk_acta_recibido_tipo_acta | type: CONSTRAINT --
-- ALTER TABLE acta_recibido.acta_recibido DROP CONSTRAINT IF EXISTS fk_acta_recibido_tipo_acta CASCADE;
ALTER TABLE acta_recibido.acta_recibido ADD CONSTRAINT fk_acta_recibido_tipo_acta FOREIGN KEY (tipo_acta_id)
REFERENCES acta_recibido.tipo_acta (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_elemento_estado_elemento | type: CONSTRAINT --
-- ALTER TABLE acta_recibido.elemento DROP CONSTRAINT IF EXISTS fk_elemento_estado_elemento CASCADE;
ALTER TABLE acta_recibido.elemento ADD CONSTRAINT fk_elemento_estado_elemento FOREIGN KEY (estado_elemento_id)
REFERENCES acta_recibido.estado_elemento (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_elemento_acta_recibido | type: CONSTRAINT --
-- ALTER TABLE acta_recibido.elemento DROP CONSTRAINT IF EXISTS fk_elemento_acta_recibido CASCADE;
ALTER TABLE acta_recibido.elemento ADD CONSTRAINT fk_elemento_acta_recibido FOREIGN KEY (acta_recibido_id)
REFERENCES acta_recibido.acta_recibido (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_soporte_acta_acta_recibido | type: CONSTRAINT --
-- ALTER TABLE acta_recibido.soporte_acta DROP CONSTRAINT IF EXISTS fk_soporte_acta_acta_recibido CASCADE;
ALTER TABLE acta_recibido.soporte_acta ADD CONSTRAINT fk_soporte_acta_acta_recibido FOREIGN KEY (acta_recibido_id)
REFERENCES acta_recibido.acta_recibido (id) MATCH FULL
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

-- object: fk_elemento_campo_elemento | type: CONSTRAINT --
-- ALTER TABLE acta_recibido.elemento_campo DROP CONSTRAINT IF EXISTS fk_elemento_campo_elemento CASCADE;
ALTER TABLE acta_recibido.elemento_campo ADD CONSTRAINT fk_elemento_campo_elemento FOREIGN KEY (elemento_id)
REFERENCES acta_recibido.elemento (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_elemento_campo_campo | type: CONSTRAINT --
-- ALTER TABLE acta_recibido.elemento_campo DROP CONSTRAINT IF EXISTS fk_elemento_campo_campo CASCADE;
ALTER TABLE acta_recibido.elemento_campo ADD CONSTRAINT fk_elemento_campo_campo FOREIGN KEY (campo_id)
REFERENCES acta_recibido.campo (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


