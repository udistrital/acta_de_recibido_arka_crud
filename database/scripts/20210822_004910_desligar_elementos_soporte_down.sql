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

-- Historico

ALTER TABLE acta_recibido.historico_acta
    DROP COLUMN IF EXISTS proveedor_id,
    DROP COLUMN IF EXISTS ubicacion_id,
    DROP COLUMN IF EXISTS revisor_id,
    DROP COLUMN IF EXISTS persona_asignada_id,
    DROP COLUMN IF EXISTS observaciones,
    DROP COLUMN IF EXISTS fecha_visto_bueno;

-- Soporte

ALTER TABLE acta_recibido.soporte_acta
    ADD COLUMN IF NOT EXISTS proveedor_id INTEGER;

-- Tipo Acta

DROP TABLE IF EXISTS acta_recibido.tipo_acta;

