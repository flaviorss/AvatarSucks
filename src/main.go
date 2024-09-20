package main

import (
	"Avatar_Sucks/config"
	"Avatar_Sucks/routes"
	"fmt"
	"log"

	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
)

func main() {
	// Initialize database
	//db, err := config.InitDB("C##JAKE/123@localhost:1521/FREEPDB1")
	db, err := config.InitDB("JAKE SULLY/root@localhost:1521/XEPDB1")
	if err != nil {
		log.Fatalf("Failed to connect to database: %v", err)
	}
	defer db.Close()

	err = db.Ping()
	if err != nil {
		fmt.Println("Oracle Instant Client não reconhecido:", err)
	} else {
		fmt.Println("Oracle Instant Client reconhecido!")
	}

	// Setup routes and start server
	router := gin.Default()
	router.Use(cors.New(cors.Config{
		AllowAllOrigins: true, // Allows all origins
		// Alternatively, specify allowed origins:
		// AllowOrigins: []string{"http://example.com"},
		AllowMethods:     []string{"GET", "POST", "PUT", "DELETE"},
		AllowHeaders:     []string{"Origin", "Content-Type", "Authorization"},
		ExposeHeaders:    []string{"Content-Length"},
		AllowCredentials: true,
	}))
	routes.SetupRoutes(router)
	if err := router.Run(":8080"); err != nil {
		log.Fatalf("Failed to start server: %v", err)
	}
}
