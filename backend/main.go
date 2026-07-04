package main

import (
	"github.com/go-fuego/fuego"
	"fmt"
)

const (
	LOCAL_PORT = 9999
)

func main() {
	s := fuego.NewServer(
		fuego.WithAddr(fmt.Sprintf(":%d", LOCAL_PORT)),
	)

	fuego.Get(s, "/", func(c fuego.ContextNoBody) (string, error) {
		return "Hello, World!", nil
	})

	err := s.Run()
	if err != nil {
		fmt.Println(err.Error())
	}
}
