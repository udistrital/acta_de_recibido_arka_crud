package routers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context/param"
)

func init() {

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ActaRecibidoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ActaRecibidoController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ActaRecibidoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ActaRecibidoController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ActaRecibidoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ActaRecibidoController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ActaRecibidoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ActaRecibidoController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ActaRecibidoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ActaRecibidoController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:DocumentoSoporteActaController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:DocumentoSoporteActaController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:DocumentoSoporteActaController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:DocumentoSoporteActaController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:DocumentoSoporteActaController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:DocumentoSoporteActaController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:DocumentoSoporteActaController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:DocumentoSoporteActaController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:DocumentoSoporteActaController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:DocumentoSoporteActaController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ElementoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ElementoController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ElementoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ElementoController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ElementoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ElementoController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ElementoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ElementoController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ElementoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:ElementoController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoActaRecibidoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoActaRecibidoController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoActaRecibidoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoActaRecibidoController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoActaRecibidoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoActaRecibidoController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoActaRecibidoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoActaRecibidoController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoActaRecibidoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoActaRecibidoController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoElementoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoElementoController"],
        beego.ControllerComments{
            Method: "Post",
            Router: `/`,
            AllowHTTPMethods: []string{"post"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoElementoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoElementoController"],
        beego.ControllerComments{
            Method: "GetAll",
            Router: `/`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoElementoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoElementoController"],
        beego.ControllerComments{
            Method: "GetOne",
            Router: `/:id`,
            AllowHTTPMethods: []string{"get"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoElementoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoElementoController"],
        beego.ControllerComments{
            Method: "Put",
            Router: `/:id`,
            AllowHTTPMethods: []string{"put"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

    beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoElementoController"] = append(beego.GlobalControllerRouter["github.com/ManuelMurillo/Acta_de_Recibido_CRUD/controllers:EstadoElementoController"],
        beego.ControllerComments{
            Method: "Delete",
            Router: `/:id`,
            AllowHTTPMethods: []string{"delete"},
            MethodParams: param.Make(),
            Filters: nil,
            Params: nil})

}
