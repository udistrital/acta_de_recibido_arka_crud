-- Diff code generated with pgModeler (PostgreSQL Database Modeler)
-- pgModeler version: 0.9.1
-- Diff date: 2021-12-28 12:42:26
-- Source model: postgres
-- Database: postgres
-- PostgreSQL version: 10.0

-- [ Diff summary ]
-- Dropped objects: 9
-- Created objects: 0
-- Changed objects: 0
-- Truncated tables: 0

--SET search_path=public,pg_catalog,acta_recibido;
-- ddl-end --


-- [ Dropped objects ] --
ALTER TABLE acta_recibido.elemento_campo DROP CONSTRAINT IF EXISTS fk_elemento_campo_campo CASCADE;
-- ddl-end --
ALTER TABLE acta_recibido.elemento_campo DROP CONSTRAINT IF EXISTS fk_elemento_campo_elemento CASCADE;
-- ddl-end --
DROP TABLE IF EXISTS acta_recibido.campo CASCADE;
-- ddl-end --
DROP SEQUENCE IF EXISTS acta_recibido.campo_id_seq CASCADE;
-- ddl-end --
DROP TABLE IF EXISTS acta_recibido.elemento_campo CASCADE;
-- ddl-end --
DROP SEQUENCE IF EXISTS acta_recibido.elemento_campo_id_seq CASCADE;
-- ddl-end --
-- DROP TABLE IF EXISTS public.migrations CASCADE;
-- -- ddl-end --
-- DROP SEQUENCE IF EXISTS public.migrations_id_migration_seq CASCADE;
-- -- ddl-end --
-- DROP TYPE IF EXISTS public.migrations_status CASCADE;
-- -- ddl-end --
