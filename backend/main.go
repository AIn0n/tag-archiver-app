package main

import (
	"github.com/AIn0n/tag-archiver-app/src/env"
	"github.com/AIn0n/tag-archiver-app/src/server"
)

func main() {
	env.LoadEnv()
	err := server.NewServer().Run()
	if err != nil {
		panic(err)
	}
}
