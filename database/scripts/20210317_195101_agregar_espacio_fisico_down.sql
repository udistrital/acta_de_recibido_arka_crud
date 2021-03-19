ALTER TABLE acta_recibido.elemento DROP column espacio_fisico_id;
DELETE FROM acta_recibido.tipo_bien
    WHERE id = 4;
