ALTER TABLE acta_recibido.elemento_campo
    DROP COLUMN IF EXISTS valor CASCADE;

ALTER TABLE acta_recibido.elemento_campo
    ADD COLUMN valor varchar(200);

ALTER TABLE acta_recibido.campo
    DROP COLUMN IF EXISTS metadato CASCADE;
