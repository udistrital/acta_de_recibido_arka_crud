-- Elemento

ALTER TABLE acta_recibido.elemento
    DROP COLUMN IF EXISTS acta_recibido_id INTEGER;

ALTER TABLE acta_recibido.elemento
    ADD COLUMN IF NOT EXISTS soporte_acta_id;

ALTER TABLE acta_recibido.elemento
    ADD COLUMN IF NOT EXISTS verificado BOOLEAN;

ALTER TABLE acta_recibido.elemento
    ADD CONSTRAINT fk_elemento_soporte_acta FOREIGN KEY (soporte_acta_id)
    REFERENCES acta_recibido.soporte_acta (id) MATCH FULL
    ON DELETE RESTRICT ON UPDATE CASCADE;

