-- Elemento

ALTER TABLE acta_recibido.elemento
    ADD COLUMN IF NOT EXISTS acta_recibido_id INTEGER;

-- UPDATE acta_recibido.elemento
--     SET acta_recibido_id = COALESCE(soporte_acta_id);
--
ALTER TABLE acta_recibido.elemento
    DROP COLUMN IF EXISTS verificado;
--
ALTER TABLE acta_recibido.elemento
    DROP COLUMN IF EXISTS soporte_acta_id;
--
-- ALTER TABLE acta_recibido.elemento
--     ALTER COLUMN acta_recibido_id SET NOT NULL;
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

-- Soporte

ALTER TABLE acta_recibido.soporte_acta
    DROP COLUMN IF EXISTS proveedor_id;

-- Tipo Acta

CREATE TABLE acta_recibido.tipo_acta (
	id SERIAL NOT NULL,
	nombre CHARACTER varying(20) NOT NULL,
	descripcion CHARACTER varying(250),
	codigo_abreviacion CHARACTER varying(20),
	activo BOOLEAN NOT NULL,
	fecha_creacion TIMESTAMP NOT NULL,
	fecha_modificacion TIMESTAMP NOT NULL,
	CONSTRAINT pk_tipo_acta PRIMARY KEY (id)
);

INSERT INTO acta_recibido.tipo_acta (id, nombre, descripcion, codigo_abreviacion, activo, fecha_creacion, fecha_modificacion) 
	VALUES (1, 'Regular', 'Acta para registrar elementos con factura de compra', 'REG', true, now(), now());
INSERT INTO acta_recibido.tipo_acta (id, nombre, descripcion, codigo_abreviacion, activo, fecha_creacion, fecha_modificacion) 
	VALUES (2, 'Especial', 'Acta para registrar elementos sin factura de compra', 'VER', true, now(), now());
INSERT INTO acta_recibido.tipo_acta (id, nombre, descripcion, codigo_abreviacion, activo, fecha_creacion, fecha_modificacion) 
	VALUES (3, 'Inmueble', 'Acta para registrar bienes inmuebles', 'INM', true, now(), now());

-- Acta Recibido

ALTER TABLE acta_recibido.acta_recibido
    ADD COLUMN IF NOT EXISTS tipo_acta_id INTEGER NOT NULL DEFAULT 1,
    DROP COLUMN IF EXISTS ubicacion_id,
    DROP COLUMN IF EXISTS revisor_id,
    DROP COLUMN IF EXISTS persona_asignada,
    DROP COLUMN IF EXISTS observaciones,
    DROP COLUMN IF EXISTS fecha_visto_bueno;

ALTER TABLE acta_recibido.acta_recibido
    ADD CONSTRAINT fk_acta_recibido_tipo_acta FOREIGN KEY (tipo_acta_id)
    REFERENCES acta_recibido.tipo_Acta (id) MATCH FULL
    ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE acta_recibido.acta_recibido
    ALTER COLUMN tipo_acta_id DROP DEFAULT;
