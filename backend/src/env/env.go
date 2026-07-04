package env

import (
	"log"
	"os"

	"github.com/joho/godotenv"
)

var (
	PORT string
)

func LoadEnv() {
	if err := godotenv.Load(); err != nil {
		log.Fatalf("Fatal error when loading env: %s", err.Error())
	}
	PORT = os.Getenv("PORT")
}