package dao

type DAO interface {
	Create() error
	Retrieve(id int) error
	Update() error
	Delete(id int) error
}
