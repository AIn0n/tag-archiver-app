package config

import (
	"os"

	"maciek/src/logger"

	"github.com/joho/godotenv"
)

type Config struct {
	Port             string
	Host             string
	PostgresUser     string
	PostgresPassword string
	PostgresDB       string
	PostgresPort     string
	PostgresHost     string
}

var log = logger.New()

func Load() Config {
	err := godotenv.Load()
	if err != nil {
		log.Warn("No .env file found")
	}
	return Config{
		getEnv("PORT"),
		getEnv("HOST"),
		getEnv("POSTGRES_USER"),
		getEnv("POSTGRES_PASSWORD"),
		getEnv("POSTGRES_DB"),
		getEnv("POSTGRES_PORT"),
		getEnv("POSTGRES_HOST"),
	}
}

func getEnv(name string) string {
	v := os.Getenv(name)
	if v == "" {
		log.Errorf("Missing required environment variable: %s!", name)
	}
	return v
}
