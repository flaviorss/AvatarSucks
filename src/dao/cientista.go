package dao

import (
	"Avatar_Sucks/config"
	"fmt"
	"log"
)

type Cientista struct {
	ID          int     `json:"ID"`
	Salario     float32 `json:"Salario"`
	Nome        string  `json:"Nome"`
	Genero      string  `json:"Genero"`
	IDColonia   string  `json:"IDColonia"`
	AreaAtuacao string  `json:"AreaAtuacao"`
}

func (c *Cientista) Create() error {
	db := config.GetDB()
	_, err := db.Exec(
		"INSERT INTO humano (Salario, Nome, Genero, IDColonia, Cargo) VALUES (:1, :2, :3, :4, 'Cientista')",
		c.Salario, c.Nome, c.Genero, c.IDColonia)

	if err != nil {
		return fmt.Errorf("Error inserting into humano tables: %v", err)
	}

	err = db.QueryRow(
		"SELECT ID FROM humano ORDER BY ID DESC FETCH FIRST ROW ONLY",
	).Scan(&c.ID)

	log.Println("Value: ")
	log.Println(c.ID)
	_, err = db.Exec(`
        INSERT INTO cientista (ID, AreaAtuacao)
        VALUES (:1, :2)`,
		c.ID, c.AreaAtuacao)

	return err
}

func (c *Cientista) Retrieve(id int) error {
	db := config.GetDB()
	return db.QueryRow(
		"SELECT ID, Salario, Nome, Genero, IDColoniam, AreaAtuacao FROM cientista WHERE ID = :1",
		id,
	).Scan(&c.ID, &c.Salario, &c.Nome, &c.Genero, &c.IDColonia, &c.AreaAtuacao)
}

func (c *Cientista) Update() error {
	db := config.GetDB()
	_, err := db.Exec(
		"UPDATE humano SET Salario = :1, Nome = :2, Genero = :3, IDColonia = :4 WHERE ID = :5",
		c.Salario, c.Nome, c.Genero, c.IDColonia, c.ID,
	)
	_, err = db.Exec(
		"UPDATE cientista SET AreaAtuacao = :1 WHERE ID = :2",
		c.AreaAtuacao, c.ID,
	)
	return err
}

func (c *Cientista) Delete(id int) error {
	db := config.GetDB()
	_, err := db.Exec(
		"DELETE FROM cientista WHERE ID = :1",
		id,
	)
	_, err = db.Exec(
		"DELETE FROM humano WHERE ID = :1",
		id,
	)
	return err
}

func ListCientistas() ([]Cientista, error) {
	db := config.GetDB()
	rows, err := db.Query("SELECT c.ID, c.AreaAtuacao, h.Salario, h.Nome, h.Genero, h.IDColonia FROM cientista c LEFT JOIN humano h ON c.ID = h.ID ORDER BY ID ASC")
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var cientistas []Cientista
	for rows.Next() {
		var cientista Cientista
		if err := rows.Scan(&cientista.ID, &cientista.AreaAtuacao, &cientista.Salario, &cientista.Nome, &cientista.Genero, &cientista.IDColonia); err != nil {
			return nil, err
		}
		cientistas = append(cientistas, cientista)
	}
	return cientistas, nil
}
