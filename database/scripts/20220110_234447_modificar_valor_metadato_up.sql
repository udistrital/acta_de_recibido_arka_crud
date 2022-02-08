ALTER TABLE acta_recibido.campo
    ADD COLUMN metadato jsonb;

-- ADVERTENCIA: Las 2 sentencias SQL siguientes implican
-- una POSIBLE PÉRDIDA DE DATOS.
-- Se recomienda mejorar las dos líneas siguientes para que en
-- vez de simplemente eliminar y volver a agregar la columna,
-- se transformen los valores que estaban antes
ALTER TABLE acta_recibido.elemento_campo
    DROP COLUMN IF EXISTS valor CASCADE;
ALTER TABLE acta_recibido.elemento_campo
    ADD COLUMN valor jsonb;
