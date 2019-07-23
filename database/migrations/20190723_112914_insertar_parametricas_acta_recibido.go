package main

import (

	"fmt"
	"io/ioutil"
	"strings"

	"github.com/astaxie/beego/migration"
)

// DO NOT MODIFY
type InsertarParametricasActaRecibido_20190723_112914 struct {
	migration.Migration
}

// DO NOT MODIFY
func init() {
	m := &InsertarParametricasActaRecibido_20190723_112914{}
	m.Created = "20190723_112914"

	migration.Register("InsertarParametricasActaRecibido_20190723_112914", m)
}

// Run the migrations
func (m *InsertarParametricasActaRecibido_20190723_112914) Up() {
	// use m.SQL("CREATE TABLE ...") to make schema update
	file, err := ioutil.ReadFile("../scripts/20190723_112914_insertar_parametricas_up.sql")

	if err != nil {
		// handle error
		fmt.Println(err)
	}

	requests := strings.Split(string(file), ";\n")

	for _, request := range requests {
		fmt.Println(request)
		m.SQL(request)
		// do whatever you need with result and error
	}

}

// Reverse the migrations
func (m *InsertarParametricasActaRecibido_20190723_112914) Down() {
	// use m.SQL("DROP TABLE ...") to reverse schema update
	file, err := ioutil.ReadFile("../scripts/20190723_112914_insertar_parametricas_down.sql")

	if err != nil {
		// handle error
		fmt.Println(err)
	}

	requests := strings.Split(string(file), ";\n")

	for _, request := range requests {
		fmt.Println(request)
		m.SQL(request)
		// do whatever you need with result and error
	}

}
