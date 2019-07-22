package routers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context/param"
)

func init() {

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ActaRecibidoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ActaRecibidoController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ActaRecibidoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ActaRecibidoController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ActaRecibidoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ActaRecibidoController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ActaRecibidoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ActaRecibidoController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ActaRecibidoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ActaRecibidoController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ElementoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ElementoController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ElementoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ElementoController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ElementoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ElementoController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ElementoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ElementoController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ElementoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:ElementoController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoActaController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoActaController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoActaController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoActaController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoActaController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoActaController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoActaController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoActaController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoActaController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoActaController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoElementoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoElementoController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoElementoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoElementoController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoElementoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoElementoController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoElementoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoElementoController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoElementoController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:EstadoElementoController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:HistoricoActaController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:HistoricoActaController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:HistoricoActaController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:HistoricoActaController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:HistoricoActaController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:HistoricoActaController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:HistoricoActaController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:HistoricoActaController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:HistoricoActaController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:HistoricoActaController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:SoporteActaController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:SoporteActaController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:SoporteActaController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:SoporteActaController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:SoporteActaController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:SoporteActaController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:SoporteActaController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:SoporteActaController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:SoporteActaController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:SoporteActaController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:TipoBienController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:TipoBienController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:TipoBienController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:TipoBienController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:TipoBienController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:TipoBienController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:TipoBienController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:TipoBienController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:TipoBienController"] = append(beego.GlobalControllerRouter["github.com/udistrital/acta_de_recibido_arka_crud/controllers:TipoBienController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

}
