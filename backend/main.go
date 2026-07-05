package main

import (
	"maciek/src/config"
	"maciek/src/server"
)

func main() {
	config.Config = config.LoadConfig()
	err := server.NewServer().Run()
	if err != nil {
		panic(err)
	}
}
