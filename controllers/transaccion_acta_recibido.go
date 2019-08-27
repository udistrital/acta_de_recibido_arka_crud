package controllers

import (
	"encoding/json"
	"github.com/udistrital/acta_recibido_crud/models"
	"github.com/astaxie/beego/logs"
	"github.com/astaxie/beego"
	"strconv"
)

// operations for TransaccionActaRecibido
type TransaccionActaRecibidoController struct {
	beego.Controller
}

func (c *TransaccionActaRecibidoController) URLMapping() {
	c.Mapping("Post", c.Post)
}


// GetAllByPersona ...
// @Title Get All By id
// @Description get TransaccionActaRecibidoController
// @Param	id		path 	string	true		"id"
// @Success 200 {object} models.TransaccionActaRecibidoController
// @Failure 404 not found resource
// @router /:id [get]
func (c *TransaccionActaRecibidoController) GetAllById() {
	idPersonaStr := c.Ctx.Input.Param(":id")
	id, _ := strconv.Atoi(idPersonaStr)
	l, err := models.GetTransaccionActaRecibido(id)
	if err != nil {
		logs.Error(err)
		//c.Data["development"] = map[string]interface{}{"Code": "000", "Body": err.Error(), "Type": "error"}
		c.Data["system"] = err
		c.Abort("404")
	} else {
		if l == nil {
			l = append(l, map[string]interface{}{})
		}
		c.Data["json"] = l
	}
	c.ServeJSON()
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

// Put ...
// @Title Put
// @Description update the TransaccionActaRecibido
// @Param	id		path 	string	true		"The id you want to update"
// @Param	body		body 	models.TransaccionActaRecibido	true		"body for TransaccionActaRecibido content"
// @Success 200 {object} models.TransaccionActaRecibido
// @Failure 400 the request contains incorrect syntax
// @router /:id [put]
func (c *TransaccionActaRecibidoController) Put() {
	idStr := c.Ctx.Input.Param(":id")
	id, _ := strconv.Atoi(idStr)
	var v models.TransaccionActaRecibido
	if err := json.Unmarshal(c.Ctx.Input.RequestBody, &v); err == nil {
		v.ActaRecibido.Id = id
		if err := models.UpdateTransaccionActaRecibido(&v); err == nil {
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