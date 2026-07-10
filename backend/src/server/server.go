package server

import (
	"fmt"
	"log/slog"
	"maciek/src/config"
	"maciek/src/logger"
	"maciek/src/tag"

	"github.com/go-fuego/fuego"
	"gorm.io/gorm"
)

func New(conf config.Config, db *gorm.DB) *fuego.Server {
	s := fuego.NewServer(
		fuego.WithAddr(fmt.Sprintf("%s:%s", conf.Host, conf.Port)),
		fuego.WithLogHandler(slog.New(logger.New()).Handler()),
	)

	tr := tag.NewRepository(db)
	th := tag.NewHandler(tr)

	th.RegisterRoutes(s)

	return s
}
