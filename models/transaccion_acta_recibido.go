package models

import (
	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego/orm"
)

type TransaccionActaRecibido struct {
	ActaRecibido *ActaRecibido
	UltimoEstado *HistoricoActa
	SoportesActa *[]SoporteActa
	Elementos    *[]Elemento
}

// GetTransaccionActaRecibido Obtener transacción con la información de un Acta de Recibido
func GetTransaccionActaRecibido(id int, getElementos bool) (v TransaccionActaRecibido, err error) {
	o := orm.NewOrm()
	var acta ActaRecibido

	if _, err := o.QueryTable(new(ActaRecibido)).RelatedSel().Filter("Id", id).All(&acta); err == nil {
		v.ActaRecibido = &acta

		var ultimoEstado HistoricoActa

		if _, err := o.QueryTable(new(HistoricoActa)).RelatedSel().Filter("ActaRecibidoId__Id", id).Filter("Activo", true).All(&ultimoEstado); err == nil {
			v.UltimoEstado = &ultimoEstado

			var soportes []SoporteActa

			if _, err := o.QueryTable(new(SoporteActa)).RelatedSel().Filter("ActaRecibidoId__Id", id).Filter("Activo", true).All(&soportes); err == nil {
				v.SoportesActa = &soportes

				if getElementos {

					var elementos []Elemento

					if _, err := o.QueryTable(new(Elemento)).RelatedSel().Filter("ActaRecibidoId__Id", id).Filter("Activo", true).All(&elementos); err == nil {

						v.Elementos = &elementos

						return v, nil
					}
				}
			}
		}
	}
	return v, err
}

// AddTransaccionActaRecibido Registrar transacción con toda la información del Acta de Recibido
func AddTransaccionActaRecibido(m *TransaccionActaRecibido) (err error) {
	o := orm.NewOrm()
	err = o.Begin()

	if err != nil {
		return
	}

	defer func() {
		if r := recover(); r != nil {
			o.Rollback()
			logs.Error(r)
		} else {
			o.Commit()
		}
	}()

	if idActa, err := o.Insert(m.ActaRecibido); err == nil {
		m.UltimoEstado.ActaRecibidoId.Id = int(idActa)
		m.UltimoEstado.Activo = true

		if _, err := o.Insert(m.UltimoEstado); err == nil {

			for _, v := range *m.SoportesActa {
				v.ActaRecibidoId.Id = int(idActa)

				if _, err = o.Insert(&v); err != nil {
					panic(err.Error())
				}
			}

			for _, w := range *m.Elementos {

				w.ActaRecibidoId.Id = int(idActa)

				if _, err = o.Insert(&w); err != nil {
					panic(err.Error())
				}

			}

		} else {
			panic(err.Error())
		}
	} else {
		panic(err.Error())
	}
	return
}

// UpdateTransaccionActaRecibido Actualiza información de un Acta de recibido
func UpdateTransaccionActaRecibido(m *TransaccionActaRecibido) (err error) {
	o := orm.NewOrm()
	err = o.Begin()

	if err != nil {
		return
	}

	defer func() {
		if r := recover(); r != nil {
			o.Rollback()
			logs.Error(r)
		} else {
			o.Commit()
		}
	}()

	v := ActaRecibido{Id: m.ActaRecibido.Id}
	if err = o.Read(&v); err == nil {

		var actaRecibido_ ActaRecibido

		if err = o.QueryTable(new(ActaRecibido)).RelatedSel().Filter("Activo", true).Filter("Id", m.ActaRecibido.Id).One(&actaRecibido_); err == nil {
			actaRecibido_.UnidadEjecutoraId = m.ActaRecibido.UnidadEjecutoraId

			if _, err = o.Update(&actaRecibido_); err != nil {
				panic(err.Error())
			}
		}

		var Historico_ HistoricoActa

		if err = o.QueryTable(new(HistoricoActa)).RelatedSel().Filter("Activo", true).Filter("ActaRecibidoId__Id", m.ActaRecibido.Id).One(&Historico_); err == nil {

			Historico_.Activo = false

			if _, err = o.Update(&Historico_, "Activo"); err == nil {

				m.UltimoEstado.Activo = true

				if _, err = o.Insert(m.UltimoEstado); err != nil {
					panic(err.Error())
				}
			} else {
				panic(err.Error())
			}
		} else {
			panic(err.Error())
		}

		var listSoportes orm.ParamsList

		if _, err = o.QueryTable(new(SoporteActa)).RelatedSel().Filter("ActaRecibidoId__Id", m.ActaRecibido.Id).Filter("Activo", true).ValuesFlat(&listSoportes, "Id"); err == nil {

			for _, soporte := range *m.SoportesActa {

				if soporte.Id > 0 {

					if i := findIdInArray(listSoportes, soporte.Id); i > -1 {
						listSoportes = append(listSoportes[:i], listSoportes[i+1:]...)

						if _, err = o.Update(&soporte); err != nil {
							panic(err.Error())
						}
					}
				} else {
					soporte.ActaRecibidoId.Id = m.ActaRecibido.Id
					if _, err = o.Insert(&soporte); err != nil {
						panic(err.Error())
					}
				}

			}

			for _, id := range listSoportes {
				id_, _ := id.(int64)
				soporteInactivo := SoporteActa{Id: int(id_), Activo: false}
				if _, err = o.Update(&soporteInactivo, "Activo"); err != nil {
					panic(err.Error())
				}
			}

		} else {
			panic(err.Error())
		}

		var listElementos orm.ParamsList

		if _, err = o.QueryTable(new(Elemento)).RelatedSel().Filter("ActaRecibidoId__Id", m.ActaRecibido.Id).Filter("Activo", true).ValuesFlat(&listElementos, "Id"); err == nil {

			for _, elemento := range *m.Elementos {
				if elemento.Id > 0 {

					if i := findIdInArray(listElementos, elemento.Id); i > -1 {
						listElementos = append(listElementos[:i], listElementos[i+1:]...)

						if _, err = o.Update(&elemento); err != nil {
							panic(err.Error())
						}
					}
				} else {
					elemento.ActaRecibidoId.Id = m.ActaRecibido.Id
					if _, err = o.Insert(&elemento); err != nil {
						panic(err.Error())
					}
				}
			}

			for _, id := range listElementos {
				id_, _ := id.(int64)
				elementoInactivo := Elemento{Id: int(id_), Activo: false}
				if _, err = o.Update(&elementoInactivo, "Activo"); err != nil {
					panic(err.Error())
				}
			}

		} else {
			panic(err.Error())
		}
	} else {
		panic(err.Error())
	}
	return
}

// findIdInArray Retorna la posicion en que se encuentra el id específicado
func findIdInArray(idsList orm.ParamsList, id int) (i int) {
	for i, id_ := range idsList {
		if id_ == int64(id) {
			return i
		}
	}
	return -1
}
