INSERT INTO acta_recibido.campo (
    nombre,
    sigla,
    descripcion,
    activo,
    fecha_creacion,
    fecha_modificacion)
VALUES (
    'Cuentas entrada',
    'CC_ENT',
    'Cuentas contables para el movimiento de la entrada.',
    true,
    now(),
    now());

INSERT INTO acta_recibido.campo (
    nombre,
    sigla,
    descripcion,
    activo,
    fecha_creacion,
    fecha_modificacion)
VALUES (
    'Cuentas mediciones',
    'CC_MED',
    'Cuentas contables para las mediciones posteriores.',
    true,
    now(),
    now());
