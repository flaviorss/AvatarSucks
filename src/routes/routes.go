package routes

import (
	"Avatar_Sucks/dao"
	"net/http"

	"github.com/gin-gonic/gin"
)

func SetupRoutes(router *gin.Engine) {
	router.GET("/jazidas", func(c *gin.Context) {
		Jazidas, err := dao.ListJazidas()
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.JSON(http.StatusOK, Jazidas)
	})

	router.POST("/jazidas", func(c *gin.Context) {
		var jazida dao.Jazida
		if err := c.BindJSON(&jazida); err != nil {
			c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
			return
		}
		if err := jazida.Create(); err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.JSON(http.StatusCreated, jazida)
	})

	router.GET("/jazidas/:Latitude/:Longitude", func(c *gin.Context) {
		latitude := c.Param("Latitude")
		longitude := c.Param("Longitude")
		var jazida dao.Jazida
		if err := jazida.Retrieve(latitude, longitude); err != nil {
			c.JSON(http.StatusNotFound, gin.H{"error": "jazida not found"})
			return
		}
		c.JSON(http.StatusOK, jazida)
	})

	router.PUT("/jazidas/:Latitude/:Longitude", func(c *gin.Context) {
		latitude := c.Param("Latitude")
		longitude := c.Param("Longitude")
		var jazida dao.Jazida
		if err := c.BindJSON(&jazida); err != nil {
			c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
			return
		}
		if err := jazida.Update(latitude, longitude); err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.JSON(http.StatusOK, jazida)
	})

	router.DELETE("/jazidas/:Latitude/:Longitude", func(c *gin.Context) {
		latitude := c.Param("Latitude")
		longitude := c.Param("Longitude")
		var jazida dao.Jazida
		if err := jazida.Delete(latitude, longitude); err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.Status(http.StatusNoContent)
	})

	router.GET("/regioes", func(c *gin.Context) {
		Regioes, err := dao.ListRegioes()
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.JSON(http.StatusOK, Regioes)
	})
}
