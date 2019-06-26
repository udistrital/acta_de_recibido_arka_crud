// @APIVersion 1.0.0
// @Title beego Test API
// @Description beego has a very cool tools to autogenerate documents for your API
// @Contact astaxie@gmail.com
// @TermsOfServiceUrl http://beego.me/
// @License Apache 2.0
// @LicenseUrl http://www.apache.org/licenses/LICENSE-2.0.html
package routers

import (
	"github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers"

	"github.com/astaxie/beego"
)

func init() {
	ns := beego.NewNamespace("/v1",

		beego.NSNamespace("/estado_elemento",
			beego.NSInclude(
				&controllers.EstadoElementoController{},
			),
		),

		beego.NSNamespace("/estado_acta_recibido",
			beego.NSInclude(
				&controllers.EstadoActaRecibidoController{},
			),
		),

		beego.NSNamespace("/documento_soporte_acta",
			beego.NSInclude(
				&controllers.DocumentoSoporteActaController{},
			),
		),

		beego.NSNamespace("/acta_recibido",
			beego.NSInclude(
				&controllers.ActaRecibidoController{},
			),
		),

		beego.NSNamespace("/elemento",
			beego.NSInclude(
				&controllers.ElementoController{},
			),
		),
	)
	beego.AddNamespace(ns)
}
