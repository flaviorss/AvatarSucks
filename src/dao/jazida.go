package dao

import (
	"Avatar_Sucks/config" // import the config package to access DB
)

type Jazida struct {
	Latitude  string  `json:"Latitude"`
	Longitude string  `json:"Longitude"`
	Altura    float32 `json:"Altura"`
	Base      float32 `json:"Base"`
	Nome      string  `json:"Nome"`
	IDRegiao  string  `json:"IDRegiao"`
}

func (j *Jazida) Create() error {
	db := config.GetDB()
	_, err := db.Exec(
		"INSERT INTO jazida (Latitude, Longitude, Altura, Base, Nome, IDRegiao) VALUES (:1, :2, :3, :4, :5, :6)",
		j.Latitude, j.Longitude, j.Altura, j.Base, j.Nome, j.IDRegiao,
	)
	return err
}

func (j *Jazida) Retrieve(Latitude string, Longitude string) error {
	db := config.GetDB()
	return db.QueryRow(
		"SELECT Latitude, Longitude, Altura, Base, Nome, IDRegiao FROM jazida WHERE Latitude = :1 AND Longitude = :2",
		Latitude, Longitude,
	).Scan(&j.Latitude, &j.Longitude, &j.Altura, &j.Base, &j.Nome, &j.IDRegiao)
}

func (j *Jazida) Update(Latitude string, Longitude string) error {
	db := config.GetDB()
	_, err := db.Exec(
		"UPDATE jazida SET Latitude = :1, Longitude = :2, Altura = :3, Base = :4, Nome = :5, IDRegiao = :6 WHERE Latitude = :7 AND Longitude = :8",
		j.Latitude, j.Longitude, j.Altura, j.Base, j.Nome, j.IDRegiao, Latitude, Longitude,
	)
	return err
}

func (j *Jazida) Delete(Latitude string, Longitude string) error {
	db := config.GetDB()
	_, err := db.Exec(
		"DELETE FROM jazida WHERE Latitude = :1 AND Longitude = :2",
		Latitude, Longitude,
	)
	return err
}

func ListJazidas() ([]Jazida, error) {
	db := config.GetDB()
	rows, err := db.Query("SELECT Latitude, Longitude, Nome, Base, Altura, IDRegiao FROM jazida ORDER BY Nome ASC")
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var jazidas []Jazida
	for rows.Next() {
		var jazida Jazida
		if err := rows.Scan(&jazida.Latitude, &jazida.Longitude, &jazida.Nome, &jazida.Base, &jazida.Altura, &jazida.IDRegiao); err != nil {
			return nil, err
		}
		jazidas = append(jazidas, jazida)
	}
	return jazidas, nil
}
