package models

import (
	"fmt"
	"github.com/astaxie/beego/orm"
)

type TransaccionActaRecibido struct {
	ActaRecibido            *ActaRecibido
	SoportesActa			*[]TransaccionSoporteActa
}

// AddTransaccionActaRecibido Transacción para registrar toda la información del Acta de Recibido
func AddTransaccionActaRecibido(m *TransaccionActaRecibido) (err error) {
	o := orm.NewOrm()
	err = o.Begin()
	
	if idActa, errTr := o.Insert(m.ActaRecibido); errTr == nil {
		fmt.Println(idActa)

		for _, v := range *m.SoportesActa {

			v.SoporteActa.ActaRecibidoId.Id = int(idActa)

			if idSoporte, errTr := o.Insert(v.SoporteActa); errTr == nil {
				fmt.Println(idSoporte)

				for _, w := range *v.Elementos {

					w.SoporteActaId.Id = int(idSoporte)

					if _, errTr = o.Insert(&w); errTr != nil {
						err = errTr
						fmt.Println(err)
						_ = o.Rollback()
						return
					}

				}

			} else {
				err = errTr
				fmt.Println(err)
				_ = o.Rollback()
			}
		}
		_ = o.Commit()
	} else {
		err = errTr
		fmt.Println(err)
		_ = o.Rollback()
	}
	return
}
