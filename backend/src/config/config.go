package config

import (
	"os"

	"github.com/charmbracelet/log"
	"github.com/joho/godotenv"
)

type config struct {
	PORT              string
	HOST              string
	POSTGRES_USER     string
	POSTGRES_PASSWORD string
	POSTGRES_DB       string
	POSTGRES_PORT     string
}

var Config config

func LoadConfig() config {
	err := godotenv.Load()
	if err != nil {
		log.Errorf("TODO unhandled error wen loading env: %s", err.Error())
	}
	return config{
		getEnv("PORT"),
		getEnv("HOST"),
		getEnv("POSTGRES_USER"),
		getEnv("POSTGRES_PASSWORD"),
		getEnv("POSTGRES_DB"),
		getEnv("POSTGRES_PORT"),
	}
}

func getEnv(name string) string {
	v := os.Getenv(name)
	if v == "" {
		log.Warnf("Missing environment variable: %s!", name)
	}
	return v
}
