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

-- Historico
--
ALTER TABLE acta_recibido.historico_acta
    ADD COLUMN IF NOT EXISTS proveedor_id INTEGER,
    ADD COLUMN IF NOT EXISTS ubicacion_id INTEGER,
    ADD COLUMN IF NOT EXISTS revisor_id INTEGER,
    ADD COLUMN IF NOT EXISTS persona_asignada_id INTEGER,
    ADD COLUMN IF NOT EXISTS observaciones CHARACTER varying(300),
    ADD COLUMN IF NOT EXISTS fecha_visto_bueno DATE;

UPDATE acta_recibido.historico_acta ha
SET   (ubicacion_id, revisor_id, persona_asignada_id,
        proveedor_id, observaciones, fecha_visto_bueno)
    = ( COALESCE(ar.ubicacion_id, 0),
        COALESCE(ar.revisor_id, 0),
        COALESCE(ar.persona_asignada, 0),
        COALESCE(ar.proveedor_id, NULL),
        COALESCE(ar.observaciones, NULL),
        COALESCE(ar.fecha_visto_bueno, NULL)
      )
FROM (
   SELECT 
    ar.id,
    ar.ubicacion_id,
    ar.revisor_id,
    ar.persona_asignada,
    ar.observaciones,
    ar.fecha_visto_bueno,
    sa.proveedor_id
   FROM  
    acta_recibido.acta_recibido ar,
    acta_recibido.historico_acta ha,
    acta_recibido.soporte_acta sa
    WHERE ha.acta_recibido_id = ar.id
    AND sa.acta_recibido_id = ar.id
   ) ar
WHERE ar.id = ha.acta_recibido_id;

ALTER TABLE acta_recibido.historico_acta
    ALTER COLUMN revisor_id SET NOT NULL,
    ALTER COLUMN persona_asignada_id SET NOT NULL;

