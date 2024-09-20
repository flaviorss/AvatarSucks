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

	router.DELETE("/humanos/:id", func(c *gin.Context) {
		id, _ := strconv.Atoi(c.Param("id"))
		var humano dao.Humano
		if err := humano.Delete(id); err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.Status(http.StatusNoContent)
	})

	router.GET("/colonias", func(c *gin.Context) {
		Colonias, err := dao.ListColonias()
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.JSON(http.StatusOK, Colonias)
	})

	router.GET("/militares", func(c *gin.Context) {
		Militares, err := dao.ListMilitares()
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.JSON(http.StatusOK, Militares)
	})

	router.POST("/militares", func(c *gin.Context) {
		var militar dao.Militar
		if err := c.BindJSON(&militar); err != nil {
			c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
			return
		}
		if err := militar.Create(); err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.JSON(http.StatusCreated, militar)
	})

	router.GET("/militares/:id", func(c *gin.Context) {
		id, _ := strconv.Atoi(c.Param("id"))
		var militar dao.Militar
		if err := militar.Retrieve(id); err != nil {
			c.JSON(http.StatusNotFound, gin.H{"error": "humano not found"})
            return
		}
		c.JSON(http.StatusOK, militar)
	})

	router.PUT("/militares/:id", func(c *gin.Context) {
		id, _ := strconv.Atoi(c.Param("id"))
		var militar dao.Militar
		if err := c.BindJSON(&militar); err != nil {
			c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
			return
		}
		militar.ID = id
		if err := militar.Update(); err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.JSON(http.StatusOK, militar)
	})

	router.DELETE("/militares/:id", func(c *gin.Context) {
		id, _ := strconv.Atoi(c.Param("id"))
		var militar dao.Militar
		if err := militar.Delete(id); err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.Status(http.StatusNoContent)
	})

	router.GET("/cientistas", func(c *gin.Context) {
		Cientistas, err := dao.ListCientistas()
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.JSON(http.StatusOK, Cientistas)
	})

	router.POST("/cientistas", func(c *gin.Context) {
		var cientista dao.Cientista
		if err := c.BindJSON(&cientista); err != nil {
			c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
			return
		}
		if err := cientista.Create(); err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.JSON(http.StatusCreated, cientista)
	})

	router.GET("/cientistas/:id", func(c *gin.Context) {
		id, _ := strconv.Atoi(c.Param("id"))
		var cientista dao.Cientista
		if err := cientista.Retrieve(id); err != nil {
			c.JSON(http.StatusNotFound, gin.H{"error": "humano not found"})
			return
		}
		c.JSON(http.StatusOK, cientista)
	})

	router.PUT("/cientistas/:id", func(c *gin.Context) {
		id, _ := strconv.Atoi(c.Param("id"))
		var cientista dao.Cientista
		if err := c.BindJSON(&cientista); err != nil {
			c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
			return
		}
		cientista.ID = id
		if err := cientista.Update(); err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.JSON(http.StatusOK, cientista)
	})

	router.DELETE("/cientistas/:id", func(c *gin.Context) {
		id, _ := strconv.Atoi(c.Param("id"))
		var cientista dao.Cientista
		if err := cientista.Delete(id); err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.Status(http.StatusNoContent)
	})

	router.GET("/mineradores", func(c *gin.Context) {
		Mineradores, err := dao.ListMineradores()
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.JSON(http.StatusOK, Mineradores)
	})

	router.POST("/mineradores", func(c *gin.Context) {
		var minerador dao.Minerador
		if err := c.BindJSON(&minerador); err != nil {
			c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
			return
		}
		if err := minerador.Create(); err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.JSON(http.StatusCreated, minerador)
	})

	router.GET("/mineradores/:id", func(c *gin.Context) {
		id, _ := strconv.Atoi(c.Param("id"))
		var minerador dao.Minerador
		if err := minerador.Retrieve(id); err != nil {
			c.JSON(http.StatusNotFound, gin.H{"error": "humano not found"})
            return
		}
		c.JSON(http.StatusOK, minerador)
	})

	router.PUT("/mineradores/:id", func(c *gin.Context) {
		id, _ := strconv.Atoi(c.Param("id"))
		var minerador dao.Minerador
		if err := c.BindJSON(&minerador); err != nil {
			c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
			return
		}
		minerador.ID = id
		if err := minerador.Update(); err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.JSON(http.StatusOK, minerador)
	})

	router.DELETE("/mineradores/:id", func(c *gin.Context) {
		id, _ := strconv.Atoi(c.Param("id"))
		var minerador dao.Minerador
		if err := minerador.Delete(id); err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		c.Status(http.StatusNoContent)
	})

    router.GET("/relatorio", func(c *gin.Context) {
        results, err := dao.GetRelatorio()
        if err != nil {
            c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
            return
        }
        c.JSON(http.StatusOK, results)
    })
}
