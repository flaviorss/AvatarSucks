package dao

import (
	"Avatar_Sucks/config"
	"fmt"
	"log"
)

type Minerador struct {
    ID        int     `json:"ID"`
	Salario   float32 `json:"Salario"`
	Nome      string  `json:"Nome"`
	Genero    string  `json:"Genero"`
	IDColonia string  `json:"IDColonia"`
    Especialidade   string  `json:"Especialidade"`

}

func (m *Minerador) Create() error {
    db := config.GetDB()
    _,err := db.Exec(
        "INSERT INTO humano (Salario, Nome, Genero, IDColonia, Cargo) VALUES (:1, :2, :3, :4, 'Minerador')",
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
        INSERT INTO minerador (ID, Especialidade)
        VALUES (:1, :2)`,
        m.ID, m.Especialidade)

    return err
}

func (m *Minerador) Retrieve(id int) error {
    db := config.GetDB()
    return db.QueryRow(
        "SELECT ID, Salario, Nome, Genero, IDColoniam, Especialidade FROM minerador WHERE ID = :1",
        id,
    ).Scan(&m.ID, &m.Salario, &m.Nome, &m.Genero, &m.IDColonia, &m.Especialidade)
}

func (m *Minerador) Update() error {
    db := config.GetDB()
    _, err := db.Exec(
        "UPDATE minerador SET Salario = :1, Nome = :2, Genero = :3, IDColonia = :4, Especialidade = :5 WHERE ID = :6",
        m.Salario, m.Nome, m.Genero, m.IDColonia, m.ID,
    )
    return err
}

func (m *Minerador) Delete(id int) error {
    db := config.GetDB()
    _, err := db.Exec(
        "DELETE FROM minerador WHERE ID = :1",
        id,
    )
    _, err = db.Exec(
        "DELETE FROM humano WHERE ID = :1",
        id,
    )
    return err
}

func ListMineradores() ([]Minerador, error) {
    db := config.GetDB()
    rows, err := db.Query("SELECT m.ID, m.Especialidade, h.Salario, h.Nome, h.Genero, h.IDColonia FROM minerador m LEFT JOIN humano h ON m.ID = h.ID ")
    if err != nil {
        return nil, err
    }
    defer rows.Close()

    var mineradores []Minerador
    for rows.Next() {
        var minerador Minerador
        if err := rows.Scan(&minerador.ID, &minerador.Especialidade, &minerador.Salario, &minerador.Nome, &minerador.Genero, &minerador.IDColonia); err != nil {
            return nil, err
        }
        mineradores = append(mineradores, minerador)
    }
    return mineradores, nil
}

