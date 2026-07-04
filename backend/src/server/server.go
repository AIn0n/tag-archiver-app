package server

import (
	"fmt"

	"github.com/AIn0n/tag-archiver-app/src/env"
	"github.com/go-fuego/fuego"
)

func NewServer() *fuego.Server {
	s := fuego.NewServer(serverOptions()...)
	addRoutes(s)
	return s
}

func serverOptions() []fuego.ServerOption {
	return []fuego.ServerOption{
		fuego.WithAddr(fmt.Sprintf(":%s", env.PORT)),
	}
}

func addRoutes(s *fuego.Server) {
	fuego.Get(s, "/{name}", helloWorld)
}
