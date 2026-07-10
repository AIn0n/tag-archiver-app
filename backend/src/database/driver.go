package database

import (
	"fmt"
	"log/slog"
	"maciek/src/config"
	"maciek/src/logger"

	"maciek/src/tag"

	"gorm.io/driver/postgres"
	"gorm.io/gorm"
	gormlog "gorm.io/gorm/logger"
)

func New(conf config.Config) (*gorm.DB, error) {
	db, err := gorm.Open(
		postgres.Open(buildDSN(conf)),
		&gorm.Config{Logger: buildDBLogger()},
	)
	if err != nil {
		return nil, err
	}

	err = db.AutoMigrate(&tag.Tag{})
	if err != nil {
		return nil, err
	}

	return db, nil
}

func buildDSN(conf config.Config) string {
	return fmt.Sprintf(
		"host=%s user=%s password=%s dbname=%s port=%s sslmode=disable", // REMEMBER replace sslmode=disable
		conf.PostgresHost, conf.PostgresUser, conf.PostgresPassword, conf.PostgresDB, conf.PostgresPort,
	)
}

func buildDBLogger() gormlog.Interface {
	return gormlog.NewSlogLogger(
		slog.New(logger.New()),
		gormlog.Config{LogLevel: gormlog.Silent},
	)
}
