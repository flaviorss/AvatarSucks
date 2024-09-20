package dao

import (
	"Avatar_Sucks/config"
	"fmt"
	"log"
)

type Militar struct {
    ID        int     `json:"ID"`
	Salario   float32 `json:"Salario"`
	Nome      string  `json:"Nome"`
	Genero    string  `json:"Genero"`
	IDColonia string  `json:"IDColonia"`
    Patente   string  `json:"Patente"`

}

func (m *Militar) Create() error {
    db := config.GetDB()
    _,err := db.Exec(
        "INSERT INTO humano (Salario, Nome, Genero, IDColonia, Cargo) VALUES (:1, :2, :3, :4, 'Militar')",
        m.Salario, m.Nome, m.Genero, m.IDColonia,)


    if err != nil {
        return fmt.Errorf("Error inserting into humano tables: %v", err)
    }

    err = db.QueryRow(
        "SELECT ID FROM humano ORDER BY ID DESC FETCH FIRST ROW ONLY",
        ).Scan(&m.ID)

        log.Println("Value: ")
        log.Println(m.ID)
    _, err = db.Exec(`
        INSERT INTO militar (ID, Patente)
        VALUES (:1, :2)`,
        m.ID, m.Patente)

    return err
}

func (m *Militar) Retrieve(id int) error {
    db := config.GetDB()
    return db.QueryRow(
        "SELECT ID, Salario, Nome, Genero, IDColoniam, Patente FROM militar WHERE ID = :1",
        id,
    ).Scan(&m.ID, &m.Salario, &m.Nome, &m.Genero, &m.IDColonia, &m.Patente)
}

func (m *Militar) Update() error {
    db := config.GetDB()
    _, err := db.Exec(
        "UPDATE militar SET Salario = :1, Nome = :2, Genero = :3, IDColonia = :4, Patente = :5 WHERE ID = :6",
        m.Salario, m.Nome, m.Genero, m.IDColonia, m.ID,
    )
    return err
}

func (m *Militar) Delete(id int) error {
    db := config.GetDB()
    _, err := db.Exec(
        "DELETE FROM militar WHERE ID = :1",
        id,
    )
    _, err = db.Exec(
        "DELETE FROM humano WHERE ID = :1",
        id,
    )
    return err
}

func ListMilitares() ([]Militar, error) {
    db := config.GetDB()
    rows, err := db.Query("SELECT m.ID, m.Patente, h.Salario, h.Nome, h.Genero, h.IDColonia FROM militar m LEFT JOIN humano h ON m.ID = h.ID ")
    if err != nil {
        return nil, err
    }
    defer rows.Close()

    var militares []Militar
    for rows.Next() {
        var militar Militar
        if err := rows.Scan(&militar.ID, &militar.Patente, &militar.Salario, &militar.Nome, &militar.Genero, &militar.IDColonia); err != nil {
            return nil, err
        }
        militares = append(militares, militar)
    }
    return militares, nil
}

