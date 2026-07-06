package logger

import (
	"os"
	"time"

	charmlog "charm.land/log/v2"
	"github.com/charmbracelet/colorprofile"
)

// This logger is global package-wise
func New() *charmlog.Logger {
	logger := charmlog.NewWithOptions(os.Stdout, charmlog.Options{
		ReportTimestamp: true,
		TimeFormat:      time.DateTime,
		Level:           charmlog.InfoLevel,
	})
	logger.SetColorProfile(colorprofile.ANSI)

	return logger
}
