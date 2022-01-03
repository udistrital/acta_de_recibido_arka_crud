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
DROP TABLE IF EXISTS public.migrations CASCADE;
-- ddl-end --
DROP SEQUENCE IF EXISTS public.migrations_id_migration_seq CASCADE;
-- ddl-end --
DROP TYPE IF EXISTS public.migrations_status CASCADE;
-- ddl-end --
