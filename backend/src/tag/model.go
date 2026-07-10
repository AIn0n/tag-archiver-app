package tag

type Tag struct {
	ID      uint `gorm:"primaryKey"`
	ImgPath string
	Lat     float64
	Long    float64
}