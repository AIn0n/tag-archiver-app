package database

import (
	"fmt"
	"maciek/src/config"
	"maciek/src/model"

	"gorm.io/driver/postgres"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

func New(conf config.Config) (*gorm.DB, error) {
	db, err := gorm.Open(
		postgres.Open(fmt.Sprintf(
			"host=%s user=%s password=%s dbname=%s port=%s sslmode=disable",
			conf.PostgresHost, conf.PostgresUser, conf.PostgresPassword, conf.PostgresDB, conf.PostgresPort,
		)),
		&gorm.Config{
			Logger: logger.Default.LogMode(logger.Silent),
		},
	)
	if err != nil {
		return nil, err
	}

	err = db.AutoMigrate(&model.Tag{})
	if err != nil {
		return nil, err
	}

	return db, nil
}
