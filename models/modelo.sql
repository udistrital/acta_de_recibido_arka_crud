-- Diff code generated with pgModeler (PostgreSQL Database Modeler)
-- pgModeler version: 0.9.1
-- Diff date: 2022-01-10 23:46:11
-- Source model: postgres
-- Database: postgres
-- PostgreSQL version: 10.0

-- [ Diff summary ]
-- Dropped objects: 5
-- Created objects: 1
-- Changed objects: 1
-- Truncated tables: 0

SET search_path=public,pg_catalog,acta_recibido;
-- ddl-end --


-- [ Dropped objects ] --
DROP TABLE IF EXISTS public.migrations CASCADE;
-- ddl-end --
DROP SEQUENCE IF EXISTS public.migrations_id_migration_seq CASCADE;
-- ddl-end --
DROP TYPE IF EXISTS public.migrations_status CASCADE;
-- ddl-end --
DROP FUNCTION IF EXISTS pg_catalog.trigger_set_fecha_creacion() CASCADE;
-- ddl-end --
DROP FUNCTION IF EXISTS pg_catalog.trigger_set_fecha_modificacion() CASCADE;
-- ddl-end --


-- [ Created objects ] --
-- object: metadato | type: COLUMN --
-- ALTER TABLE acta_recibido.campo DROP COLUMN IF EXISTS metadato CASCADE;
ALTER TABLE acta_recibido.campo ADD COLUMN metadato jsonb;
-- ddl-end --




-- [ Changed objects ] --
ALTER TABLE acta_recibido.elemento_campo ALTER COLUMN valor TYPE jsonb;
-- ddl-end --
ALTER TABLE acta_recibido.elemento_campo ALTER COLUMN valor SET NOT NULL;
-- ddl-end --


-- [ Created permissions ] --
-- object: grant_ca2744739f | type: PERMISSION --
GRANT CREATE,USAGE
   ON SCHEMA acta_recibido
   TO postgres;
-- ddl-end --

-- object: grant_333fb019d2 | type: PERMISSION --
GRANT SELECT,INSERT,UPDATE,DELETE,TRUNCATE,REFERENCES,TRIGGER
   ON TABLE acta_recibido.acta_recibido
   TO postgres;
-- ddl-end --

-- object: grant_063e260b60 | type: PERMISSION --
GRANT SELECT,INSERT,UPDATE,DELETE,TRUNCATE,REFERENCES,TRIGGER
   ON TABLE acta_recibido.elemento
   TO postgres;
-- ddl-end --

-- object: grant_b2fd53dd62 | type: PERMISSION --
GRANT SELECT,INSERT,UPDATE,DELETE,TRUNCATE,REFERENCES,TRIGGER
   ON TABLE acta_recibido.estado_acta
   TO postgres;
-- ddl-end --

-- object: grant_bdbd76a9ad | type: PERMISSION --
GRANT SELECT,INSERT,UPDATE,DELETE,TRUNCATE,REFERENCES,TRIGGER
   ON TABLE acta_recibido.estado_elemento
   TO postgres;
-- ddl-end --

-- object: grant_fcea6505ac | type: PERMISSION --
GRANT SELECT,INSERT,UPDATE,DELETE,TRUNCATE,REFERENCES,TRIGGER
   ON TABLE acta_recibido.soporte_acta
   TO postgres;
-- ddl-end --

-- object: grant_13e597aa55 | type: PERMISSION --
GRANT SELECT,INSERT,UPDATE,DELETE,TRUNCATE,REFERENCES,TRIGGER
   ON TABLE acta_recibido.historico_acta
   TO postgres;
-- ddl-end --

