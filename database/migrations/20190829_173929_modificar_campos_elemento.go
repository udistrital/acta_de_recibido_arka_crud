package main

import (
	"github.com/astaxie/beego/migration"
)

// DO NOT MODIFY
type ModificarCamposElemento_20190829_173929 struct {
	migration.Migration
}

// DO NOT MODIFY
func init() {
	m := &ModificarCamposElemento_20190829_173929{}
	m.Created = "20190829_173929"

	migration.Register("ModificarCamposElemento_20190829_173929", m)
}

// Run the migrations
func (m *ModificarCamposElemento_20190829_173929) Up() {
	// use m.SQL("CREATE TABLE ...") to make schema update
	m.SQL("ALTER TABLE acta_recibido.elemento ALTER COLUMN valor_unitario TYPE numeric(20,7);")
	m.SQL("ALTER TABLE acta_recibido.elemento ALTER COLUMN valor_total TYPE numeric(20,7);")
	m.SQL("ALTER TABLE acta_recibido.elemento ALTER COLUMN subtotal TYPE numeric(20,7);")
	m.SQL("ALTER TABLE acta_recibido.elemento ALTER COLUMN descuento TYPE numeric(20,7);")
	m.SQL("ALTER TABLE acta_recibido.elemento ALTER COLUMN valor_final TYPE numeric(20,7);")
	m.SQL("ALTER TABLE acta_recibido.elemento ALTER COLUMN valor_iva TYPE numeric(20,7);")
}

// Reverse the migrations
func (m *ModificarCamposElemento_20190829_173929) Down() {
	// use m.SQL("DROP TABLE ...") to reverse schema update
	m.SQL("ALTER TABLE acta_recibido.elemento ALTER COLUMN valor_unitario TYPE integer;")
	m.SQL("ALTER TABLE acta_recibido.elemento ALTER COLUMN valor_total TYPE integer;")
	m.SQL("ALTER TABLE acta_recibido.elemento ALTER COLUMN subtotal TYPE integer;")
	m.SQL("ALTER TABLE acta_recibido.elemento ALTER COLUMN descuento TYPE integer;")
	m.SQL("ALTER TABLE acta_recibido.elemento ALTER COLUMN valor_final TYPE integer;")
	m.SQL("ALTER TABLE acta_recibido.elemento ALTER COLUMN valor_iva TYPE integer;")

}
