package tag

import (
	"context"
	"errors"
	"fmt"

	"gorm.io/gorm"
)

var errTagNotFound = errors.New("tag not found")

type repository struct {
	db *gorm.DB
}

func NewRepository(db *gorm.DB) *repository {
	return &repository{db}
}

func (r *repository) getById(id string, ctx context.Context) (*Tag, error) {
	found, err := gorm.G[Tag](r.db).
		Where("img_path = ?", fmt.Sprintf("/%s", id)).
		First(ctx)
	
	if errors.Is(err, gorm.ErrRecordNotFound) {
		return nil, errTagNotFound
	}
	if err != nil {
		return nil, err
	}

	return &found, nil
}
