package dao

import (
    "Avatar_Sucks/config" // import the config package to access DB
)

type Regiao struct {
    Id               int64        `json:"IDRegiao"`
    Area             float32      `json:"Area"`
    Topografia       string       `json:"Topografia"`
}

func ListRegioes() ([]Regiao, error) {
    db := config.GetDB()
    rows, err := db.Query("SELECT Id, Area, Topografia FROM regiao")
    if err != nil {
        return nil, err
    }
    defer rows.Close()

    var regioes []Regiao
    for rows.Next() {
        var regiao Regiao
        if err := rows.Scan(&regiao.Id, &regiao.Area, &regiao.Topografia); err != nil {
            return nil, err
        }
        regioes = append(regioes, regiao)
    }
    return regioes, nil
}
