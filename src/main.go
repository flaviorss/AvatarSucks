package main

import (
    "github.com/gin-gonic/gin"
    "github.com/gin-contrib/cors"
    "log"
    "Avatar_Sucks/config"
    "Avatar_Sucks/routes"
)

func main() {
    // Initialize database
    db, err := config.InitDB("C##JAKE/123@localhost:1521/FREEPDB1")
    if err != nil {
        log.Fatalf("Failed to connect to database: %v", err)
    }
    defer db.Close()

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

