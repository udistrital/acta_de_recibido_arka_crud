// @APIVersion 1.0.0
// @Title beego Test API
// @Description beego has a very cool tools to autogenerate documents for your API
// @Contact astaxie@gmail.com
// @TermsOfServiceUrl http://beego.me/
// @License Apache 2.0
// @LicenseUrl http://www.apache.org/licenses/LICENSE-2.0.html
package routers

import (
	"github.com/udistrital/acta_recibido_crud/controllers"

	"github.com/astaxie/beego"
)

func init() {
	ns := beego.NewNamespace("/v1",

		beego.NSNamespace("/estado_elemento",
			beego.NSInclude(
				&controllers.EstadoElementoController{},
			),
		),

		beego.NSNamespace("/soporte_acta",
			beego.NSInclude(
				&controllers.SoporteActaController{},
			),
		),

		beego.NSNamespace("/elemento",
			beego.NSInclude(
				&controllers.ElementoController{},
			),
		),

		beego.NSNamespace("/acta_recibido",
			beego.NSInclude(
				&controllers.ActaRecibidoController{},
			),
		),

		beego.NSNamespace("/estado_acta",
			beego.NSInclude(
				&controllers.EstadoActaController{},
			),
		),

		beego.NSNamespace("/historico_acta",
			beego.NSInclude(
				&controllers.HistoricoActaController{},
			),
		),

		beego.NSNamespace("/transaccion_acta_recibido",
			beego.NSInclude(
				&controllers.TransaccionActaRecibidoController{},
			),
		),

		beego.NSNamespace("/tipo_acta",
			beego.NSInclude(
				&controllers.TipoActaController{},
			),
		),
	)
	beego.AddNamespace(ns)
}
