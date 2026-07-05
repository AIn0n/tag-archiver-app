package server

import (
	"fmt"
	"maciek/src/config"

	"github.com/go-fuego/fuego"
)

func NewServer() *fuego.Server {
	conf := config.Config
	s := fuego.NewServer(
		fuego.WithAddr(fmt.Sprintf("%s:%s", conf.HOST, conf.PORT)),
	)
	fuego.Get(s, "/{name}", helloWorld)
	return s
}
