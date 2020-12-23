ALTER TABLE acta_recibido.soporte_acta
    DROP CONSTRAINT uq_consecutivo;
ALTER TABLE acta_recibido.soporte_acta
    ALTER COLUMN consecutivo DROP NOT NULL;
ALTER TABLE acta_recibido.soporte_acta
    ALTER COLUMN fecha_soporte DROP NOT NULL;
ALTER TABLE acta_recibido.soporte_acta
    ALTER COLUMN proveedor_id DROP NOT NULL;