package routes

import (
	"Avatar_Sucks/dao"
	"net/http"
	"strconv"
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
        jazida.Latitude = latitude
        jazida.Longitude = longitude
        if err := jazida.Update(); err != nil {
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

    router.GET("/humanos", func(c *gin.Context) {
        Humanos, err := dao.ListHumanos()
        if err != nil {
            c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
            return
        }
        c.JSON(http.StatusOK, Humanos)
    })

    router.POST("/humanos", func(c *gin.Context) {
        var humano dao.Humano
        if err := c.BindJSON(&humano); err != nil {
            c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
            return
        }
        if err := humano.Create(); err != nil {
            c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
            return
        }
        c.JSON(http.StatusCreated, humano)
    })

    router.GET("/humanos/:id", func(c *gin.Context) {
        id, _ := strconv.Atoi(c.Param("id"))
        var humano dao.Humano
        if err := humano.Retrieve(id); err != nil {
            c.JSON(http.StatusNotFound, gin.H{"error": "humano not found"})
            return
        }
        c.JSON(http.StatusOK, humano)
    })

    router.PUT("/humanos/:id", func(c *gin.Context) {
        id, _ := strconv.Atoi(c.Param("id"))
        var humano dao.Humano
        if err := c.BindJSON(&humano); err != nil {
            c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
            return
        }
        humano.ID = id
        if err := humano.Update(); err != nil {
            c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
            return
        }
        c.JSON(http.StatusOK, humano)
    })

}

