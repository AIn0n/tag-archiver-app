package tag

import (
	"errors"
	"fmt"

	"maciek/src/logger"

	"github.com/go-fuego/fuego"
	"github.com/go-fuego/fuego/option"
)

var log = logger.New()

type handler struct {
	tags *repository
}

func NewHandler(tags *repository) *handler {
	return &handler{tags}
}

func (h *handler) RegisterRoutes(s *fuego.Server) {
	fuego.Get(
		s, "/tags/{id}", h.getTagById,
		option.AddResponse(404, "Not Found", fuego.Response{Type: errTagNotFound}),
	)
}

func (h *handler) getTagById(c fuego.ContextNoBody) (*Tag, error) {
	id := c.PathParam("id")

	found, err := h.tags.getById(id, c.Context())
	if errors.Is(err, errTagNotFound) {
		return nil, fuego.NotFoundError{Detail: fmt.Sprintf("Tag of id '%s' not found.", id), Err: errTagNotFound}
	}
	if err != nil {
		log.Error("Unexpected error: %s", err)
		return nil, fuego.InternalServerError{Detail: "Unexpected error", Err: err}
	}

	return found, nil
}
