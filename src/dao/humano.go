package dao

import (
	"Avatar_Sucks/config" // import the config package to access DB
)

type Humano struct {
	ID        int     `json:"ID"`
	Salario   float32 `json:"Salario"`
	Nome      string  `json:"Nome"`
	Genero    string  `json:"Genero"`
	IDColonia string  `json:"IDColonia"`
	Cargo     string  `json:"Cargo"`
}

func (h *Humano) Create() error {
	db := config.GetDB()
	_, err := db.Exec(
		"INSERT INTO humano (Salario, Nome, Genero, IDColonia, Cargo) VALUES (:1, :2, :3, :4, 'Outro')",
		h.Salario, h.Nome, h.Genero, h.IDColonia,
	)
	return err
}

func (h *Humano) Retrieve(id int) error {
	db := config.GetDB()
	return db.QueryRow(
		"SELECT ID, Salario, Nome, Genero, IDColonia FROM humano WHERE ID = :1",
		id,
	).Scan(&h.ID, &h.Salario, &h.Nome, &h.Genero, &h.IDColonia)
}

func (h *Humano) Update() error {
	db := config.GetDB()
	_, err := db.Exec(
		"UPDATE humano SET Salario = :1, Nome = :2, Genero = :3, IDColonia = :4 WHERE ID = :5",
		h.Salario, h.Nome, h.Genero, h.IDColonia, h.ID,
	)
	return err
}

func (h *Humano) Delete(id int) error {
	db := config.GetDB()
	_, err := db.Exec(
		"DELETE FROM humano WHERE ID = :1",
		id,
	)
	return err
}

func ListHumanos() ([]Humano, error) {
	db := config.GetDB()
	rows, err := db.Query("SELECT ID, Salario, Nome, Genero, IDColonia, Cargo FROM humano ORDER BY ID ASC")
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var humanos []Humano
	for rows.Next() {
		var humano Humano
		if err := rows.Scan(&humano.ID, &humano.Salario, &humano.Nome, &humano.Genero, &humano.IDColonia, &humano.Cargo); err != nil {
			return nil, err
		}
		humanos = append(humanos, humano)
	}
	return humanos, nil
}
