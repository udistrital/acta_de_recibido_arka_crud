-- Datos para tabla parametrica de estado_acta

insert into acta_recibido.estado_acta (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (1, 'Registrada', 'Estado de generación de registro', 'Reg', true, 1, now(), now());
insert into acta_recibido.estado_acta (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (2, 'En Elaboracion', 'Estado de elaboración de acta por auxiliar a cargo', 'Elab', true, 1, now(), now());
insert into acta_recibido.estado_acta (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (3, 'En Modificacion', 'Estado de modificacion del acta por profesional a cargo', 'Mod', true, 1, now(), now());
insert into acta_recibido.estado_acta (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (4, 'En verificacion', 'Estado de verificacion del acta por el jefe de area a cargo', 'Verif', true, 1, now(), now());
insert into acta_recibido.estado_acta (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (5, 'Aceptada', 'Estado del cata ya verificada y lista para una nueva entrada', 'Acep', true, 1, now(), now());
insert into acta_recibido.estado_acta (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (6, 'Anulada', 'Estado del acta para el cual el registro no sirve', 'Anul', true, 1, now(), now());

-- Datos para tabla parametrica de estado_elemento

insert into acta_recibido.estado_elemento (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (1, 'Registrado', 'Elemento registrado', 'Reg', true, 2, now(), now());

-- Datos para tabla parametrica de tipo_bien

insert into acta_recibido.tipo_bien (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (1, 'Consumo', 'Elemento designado como bien de consumo', 'Cons', true, 1, now(), now());
insert into acta_recibido.tipo_bien (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (2, 'Consumo Controlado', 'Elemento designado como bien de consumo controlado', 'ConsCon', true, 2, now(), now());
insert into acta_recibido.tipo_bien (id, nombre, descripcion, codigo_abreviacion, activo, numero_orden, fecha_creacion, fecha_modificacion) 
	values (3, 'Devolutivo', 'Elemento designado como bien devolutivo', 'Devol', true, 3, now(), now());

