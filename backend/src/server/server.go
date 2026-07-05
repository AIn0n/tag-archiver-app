package server

import (
	"fmt"
	"maciek/src/config"

	"github.com/go-fuego/fuego"
)

var conf = config.Config

func NewServer() *fuego.Server {
	s := fuego.NewServer(
		fuego.WithAddr(fmt.Sprintf("%s:%s", conf.HOST, conf.PORT)),
	)
	fuego.Get(s, "/{name}", helloWorld)
	return s
}
