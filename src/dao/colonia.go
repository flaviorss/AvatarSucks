package dao

import (
	"Avatar_Sucks/config" // import the config package to access DB
)

type Colonia struct {
	Id      int    `json:"ID"`
	Empresa string `json:"Empresa"`
}

func ListColonias() ([]Colonia, error) {
	db := config.GetDB()
	rows, err := db.Query("SELECT Id, Empresa FROM colonia")
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var colonias []Colonia
	for rows.Next() {
		var colonia Colonia
		if err := rows.Scan(&colonia.Id, &colonia.Empresa); err != nil {
			return nil, err
		}
		colonias = append(colonias, colonia)
	}
	return colonias, nil
}
