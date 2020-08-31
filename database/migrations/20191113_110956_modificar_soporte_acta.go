package main

import (
	"github.com/astaxie/beego/migration"
)

// DO NOT MODIFY
type ModificarSoporteActa_20191113_110956 struct {
	migration.Migration
}

// DO NOT MODIFY
func init() {
	m := &ModificarSoporteActa_20191113_110956{}
	m.Created = "20191113_110956"

	migration.Register("ModificarSoporteActa_20191113_110956", m)
}

// Run the migrations
func (m *ModificarSoporteActa_20191113_110956) Up() {
	// use m.SQL("CREATE TABLE ...") to make schema update
	m.SQL("ALTER TABLE acta_recibido.soporte_acta ADD COLUMN documento_id integer")

}

// Reverse the migrations
func (m *ModificarSoporteActa_20191113_110956) Down() {
	// use m.SQL("DROP TABLE ...") to reverse schema update
	m.SQL("ALTER TABLE acta_recibido.soporte_acta DROP COLUMN documento_id")

}
