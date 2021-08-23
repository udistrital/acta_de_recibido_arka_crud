-- Elemento

ALTER TABLE acta_recibido.elemento
    ADD COLUMN IF NOT EXISTS acta_recibido_id INTEGER;

UPDATE acta_recibido.elemento
    SET acta_recibido_id = COALESCE(soporte_acta_id);
--
ALTER TABLE acta_recibido.elemento
    DROP COLUMN IF EXISTS verificado;
--
ALTER TABLE acta_recibido.elemento
    DROP COLUMN IF EXISTS soporte_acta_id;
--
ALTER TABLE acta_recibido.elemento
    ALTER COLUMN acta_recibido_id SET NOT NULL;
--
ALTER TABLE acta_recibido.elemento
    ADD CONSTRAINT fk_elemento_acta_recibido FOREIGN KEY (acta_recibido_id)
    REFERENCES acta_recibido.acta_recibido (id) MATCH FULL
    ON DELETE RESTRICT ON UPDATE CASCADE;

