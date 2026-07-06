package tag

import (
	"errors"
	"fmt"
	"maciek/src/model"

	"github.com/charmbracelet/log"
	"github.com/go-fuego/fuego"
)

type Handler struct {
	Tags *Repository
}

func (h *Handler) GetTagById(c fuego.ContextNoBody) (*model.Tag, error) {
	id := c.PathParam("id")

	found, err := h.Tags.getById(id, c.Context())
	if errors.Is(err, ErrTagNotFound) {
		return nil, fuego.NotFoundError{Detail: fmt.Sprintf("Tag of id '%s' not found.", id)}
	}
	if err != nil {
		log.Error("Unexpected error: %s", err)
		return nil, fuego.InternalServerError{Detail: "Unexpected error"}
	}

	return found, nil
}
