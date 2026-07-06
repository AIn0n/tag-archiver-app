package main

import (
	"maciek/src/config"
	"maciek/src/database"
	"maciek/src/logger"
	"maciek/src/server"
)

var log = logger.New()

func main() {
	conf := config.Load()

	db, err := database.New(conf)
	if err != nil {
		log.Fatal(err)
	}
	log.Infof("Connected to database: %s", db.Migrator().CurrentDatabase())

	err = server.New(conf, db).Run()
	if err != nil {
		log.Fatal(err)
	}
}
