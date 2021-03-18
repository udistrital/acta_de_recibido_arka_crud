ALTER TABLE acta_recibido.elemento DROP column espacio_fisico_id INTEGER
DELETE FROM acta_recibido.tipo_bien
    WHERE id = 4;
COMMENT ON COLUMN acta_recibido.elemento.espacio_fisico_id IS '';
