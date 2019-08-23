package controllers

import (
	"encoding/json"
	"github.com/udistrital/acta_recibido_crud/models"
	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego"
)

// operations for TransaccionActaRecibido
type TransaccionActaRecibidoController struct {
	beego.Controller
}

func (c *TransaccionActaRecibidoController) URLMapping() {
	c.Mapping("Post", c.Post)
}



// @Title PostTransaccionActaRecibido
// @Description create the TransaccionActaRecibido
// @Param	body		body 	models.TransaccionActaRecibido	true	"body for TransaccionActaRecibido content"
// @Success 201 {int} models.TransaccionActaRecibido
// @Failure 400 the request contains incorrect syntax
// @router / [post]
func (c *TransaccionActaRecibidoController) Post() {
	var v models.TransaccionActaRecibido
	if err := json.Unmarshal(c.Ctx.Input.RequestBody, &v); err == nil {
		if err := models.AddTransaccionActaRecibido(&v); err == nil {
			c.Ctx.Output.SetStatus(201)
			c.Data["json"] = v
		} else {
			logs.Error(err)
			//c.Data["development"] = map[string]interface{}{"Code": "000", "Body": err.Error(), "Type": "error"}
			c.Data["system"] = err
			c.Abort("400")
		}
	} else {
		logs.Error(err)
		//c.Data["development"] = map[string]interface{}{"Code": "000", "Body": err.Error(), "Type": "error"}
		c.Data["system"] = err
		c.Abort("400")
	}
	c.ServeJSON()
}
