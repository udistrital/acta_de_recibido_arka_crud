ALTER TABLE acta_recibido.elemento DROP COLUMN IF EXISTS tipo_bien_id;
DROP TABLE IF EXISTS acta_recibido.tipo_bien CASCADE;
