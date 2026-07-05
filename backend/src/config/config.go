package config

import (
	"fmt"
	"log/slog"
	"os"

	"github.com/joho/godotenv"
)

type config struct {
	PORT string
	HOST string
}

var Config config

func LoadConfig() config {
	err := godotenv.Load()
	if err != nil {
		slog.Error(fmt.Sprintf("Fatal error when loading env: %s", err.Error()))
	}
	return config{
		getEnv("PORT"),
		getEnv("HOST"),
	}
}

func getEnv(name string) string {
	v := os.Getenv(name)
	if v == "" {
		slog.Warn(fmt.Sprintf("Missing environment variable: %s!", name))
	}
	return v
}
