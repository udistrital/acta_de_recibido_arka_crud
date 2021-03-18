ALTER TABLE acta_recibido.elemento ADD column espacio_fisico_id INTEGER;
INSERT INTO acta_recibido.tipo_bien (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	VALUES (4, 'Inmueble', 'Bien de tipo inmueble', 'Inmueble', true, 4, now(), now());
COMMENT ON COLUMN acta_recibido.elemento.espacio_fisico_id IS 'Hace referencia al id en la tabla espacio_físico en el api oikos_crud, en caso de que el elemento sea de tipo bien inmueble';
