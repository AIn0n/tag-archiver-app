package main

import (
	"maciek/src/config"
	"maciek/src/server"

	"maciek/src/database"
)

func main() {
	config.Config = config.LoadConfig()
	database.DB = database.NewDB()
	err := server.NewServer().Run()
	if err != nil {
		panic(err)
	}
}
