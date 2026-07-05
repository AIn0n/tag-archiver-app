package database

import (
	"fmt"
	"maciek/src/config"

	"github.com/charmbracelet/log"

	"gorm.io/driver/postgres"
	"gorm.io/gorm"
)

type database struct {
	*gorm.DB
}

var DB database

func NewDB() database {
	conf := config.Config
	db, err := gorm.Open(postgres.Open(fmt.Sprintf(
		"user=%s password=%s dbname=%s port=%s host=postgres sslmode=disable TimeZone=Europe/Warsaw",
		conf.POSTGRES_USER, conf.POSTGRES_PASSWORD, conf.POSTGRES_DB, conf.POSTGRES_PORT,
	)))
	if err != nil {
		log.Errorf("TODO unhandled db connection error: %s", err.Error())
		return database{}
	}
	log.Infof("Successfully connected to database: %s", db.Dialector.Name())
	return database{db}
}
