package main

import (
	"maciek/src/config"
	"maciek/src/server"

	"github.com/charmbracelet/log"
	"github.com/muesli/termenv"

	"maciek/src/database"
)

func main() {
	log.SetLevel(log.DebugLevel)
	log.SetColorProfile(termenv.ANSI)
	conf := config.Load()

	db, err := database.New(conf)
	if err != nil {
		log.Fatal(err)
	}
	log.Infof("Connected to database: %s", db.Dialector.Name())

	err = server.New(conf, db).Run()
	if err != nil {
		log.Fatal(err)
	}
}
