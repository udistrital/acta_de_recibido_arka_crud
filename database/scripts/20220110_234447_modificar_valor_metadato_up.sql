ALTER TABLE acta_recibido.campo
    ADD COLUMN metadato jsonb;

ALTER TABLE acta_recibido.elemento_campo
    DROP COLUMN IF EXISTS valor CASCADE;

ALTER TABLE acta_recibido.elemento_campo
    ADD COLUMN valor jsonb;
