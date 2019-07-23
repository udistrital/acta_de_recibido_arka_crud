-- Datos para tabla parametrica de estado_acta

insert into acta_recibido.estado_acta (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (1, 'Autor principal', 'Autor que registra la producción', 'AutPrin', true, 1, now(), now());
insert into acta_recibido.estado_acta (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (2, 'Autor principal', 'Autor que registra la producción', 'AutPrin', true, 1, now(), now());
insert into acta_recibido.estado_acta (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (3, 'Autor principal', 'Autor que registra la producción', 'AutPrin', true, 1, now(), now());

-- Datos para tabla parametrica de estado_elemento

insert into acta_recibido.estado_elemento (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (1, 'Autor confirmado', 'Autor que confirma que pertenece a la producción', 'AutConf', true, 2, now(), now());
insert into acta_recibido.estado_elemento (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (2, 'Autor confirmado', 'Autor que confirma que pertenece a la producción', 'AutConf', true, 2, now(), now());
insert into acta_recibido.estado_elemento (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (3, 'Autor confirmado', 'Autor que confirma que pertenece a la producción', 'AutConf', true, 2, now(), now());

-- Datos para tabla parametrica de tipo_bien

insert into acta_recibido.tipo_bien (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (1, 'Consumo', 'Tipo de bien de consumo', 'AutSinConf', true, 1, now(), now());
insert into acta_recibido.tipo_bien (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (2, 'Consumo Controlado', 'Tipo de bien de consumo controlado', 'AutSinConf', true, 2, now(), now());
insert into acta_recibido.tipo_bien (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (3, 'Devolutivo', 'Tipo de bien devolutivo', 'AutSinConf', true, 3, now(), now());

