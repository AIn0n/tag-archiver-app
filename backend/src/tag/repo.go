package tag

import (
	"context"
	"errors"
	"fmt"
	"maciek/src/model"

	"gorm.io/gorm"
)

var ErrTagNotFound = errors.New("tag not found")

type Repository struct {
	DB *gorm.DB
}

func (r *Repository) getById(id string, ctx context.Context) (*model.Tag, error) {
	found, err := gorm.G[model.Tag](r.DB).
		Where("img_path = ?", fmt.Sprintf("/%s", id)).
		First(ctx)

	if errors.Is(err, gorm.ErrRecordNotFound) {
		return nil, ErrTagNotFound
	}
	if err != nil {
		return nil, err
	}

	return &found, nil
}
