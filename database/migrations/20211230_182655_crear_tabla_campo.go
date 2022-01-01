package main

import (
	"github.com/astaxie/beego/migration"
)

// DO NOT MODIFY
type CrearTablaCampo_20211230_182655 struct {
	migration.Migration
}

// DO NOT MODIFY
func init() {
	m := &CrearTablaCampo_20211230_182655{}
	m.Created = "20211230_182655"

	migration.Register("CrearTablaCampo_20211230_182655", m)
}

// Run the migrations
func (m *CrearTablaCampo_20211230_182655) Up() {
	// use m.SQL("CREATE TABLE ...") to make schema update

}

// Reverse the migrations
func (m *CrearTablaCampo_20211230_182655) Down() {
	// use m.SQL("DROP TABLE ...") to reverse schema update

}
