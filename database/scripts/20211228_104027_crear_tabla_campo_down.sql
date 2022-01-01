ALTER TABLE acta_recibido.elemento_campo DROP CONSTRAINT IF EXISTS fk_elemento_campo_campo CASCADE;

ALTER TABLE acta_recibido.elemento_campo DROP CONSTRAINT IF EXISTS fk_elemento_campo_elemento CASCADE;

DROP TABLE IF EXISTS acta_recibido.campo CASCADE;

DROP SEQUENCE IF EXISTS acta_recibido.campo_id_seq CASCADE;

DROP TABLE IF EXISTS acta_recibido.elemento_campo CASCADE;

DROP SEQUENCE IF EXISTS acta_recibido.elemento_campo_id_seq CASCADE;
