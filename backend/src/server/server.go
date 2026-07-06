package server

import (
	"fmt"
	"maciek/src/config"
	"maciek/src/tag"

	"github.com/go-fuego/fuego"
	"gorm.io/gorm"
)

func New(conf config.Config, db *gorm.DB) *fuego.Server {
	s := fuego.NewServer(
		fuego.WithAddr(fmt.Sprintf("%s:%s", conf.Host, conf.Port)),
	)
	ts := &tag.Repository{DB: db}
	th := &tag.Handler{Tags: ts}

	fuego.Get(s, "/tags/{id}", th.GetTagById)
	return s
}
