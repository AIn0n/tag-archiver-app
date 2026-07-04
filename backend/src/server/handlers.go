package server

import (
	"fmt"

	"github.com/go-fuego/fuego"
)

func helloWorld(c fuego.ContextNoBody) (string, error) {
	return fmt.Sprintf("Hello, %s!", c.PathParam("name")), nil
}
