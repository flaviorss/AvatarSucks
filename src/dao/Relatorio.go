package dao

import (
    "Avatar_Sucks/config"
    "fmt"
)

type Relatorio struct {
    IDColonia        int     `json:"IDColonia"`
    EmpresaColonia   string  `json:"EmpresaColonia"`
    LatitudeJazida   string `json:"LatitudeJazida"`
    LongitudeJazida  string `json:"LongitudeJazida"`
    SiglaRes         string  `json:"SiglaRes"`
    NomeRes          string  `json:"NomeRes"`
    SiglaDep         string  `json:"SiglaDep"`
    NomeDep          string  `json:"NomeDep"`
    SiglaLab         string  `json:"SiglaLab"`
    NomeLab          string  `json:"NomeLab"`
    IDHumano         int     `json:"IDHumano"`
    NomeHumano       string  `json:"NomeHumano"`
    CargoHumano      string  `json:"CargoHumano"`
    NomePesquisa      string  `json:"NomePesquisa"`
    NomeEquipamento  string  `json:"NomeEquipamento"`
    UtilidadeEquipamento string `json:"UtilidadeEquipamento"`
    IDCaminhao       string     `json:"IDCaminhao"`
    IDEscavadeira    string     `json:"IDEscavadeira"`
}

func GetRelatorio() ([]Relatorio, error) {
    db := config.GetDB()
    rows, err := db.Query(`
         SELECT 
             c.ID AS IDColonia, 
             c.Empresa AS EmpresaColonia,
             c.jazidalatitude AS LatitudeJazida,
             c.jazidalongitude AS LongitudeJazida,
             cr.Sigla AS SiglaRes, cr.Nome AS NomeRes,
             cd.Sigla AS SiglaDep, cd.Nome AS NomeDep,
             cl.Sigla AS SiglaLab, cl.Nome AS NomeLab,
             h.ID AS IDHumano, h.Nome AS NomeHumano, h.Cargo AS CargoHumano,
             p.Nome AS NomePesquisa, e.Nome AS NomeEquipamento, e.Utilidade AS UtilidadeEquipamento,
             cam.idcaminhao AS IDCaminhao,
             esc.idescavadeira AS IDEscavadeira
             FROM 
             Colonia c
             LEFT JOIN ContResidencia cr ON c.ID = cr.IDColonia
             LEFT JOIN ContDeposito cd ON c.ID = cd.IDColonia
             LEFT JOIN ContLaboratorio cl ON c.ID = cl.IDColonia
             LEFT JOIN Humano h ON c.ID = h.IDColonia
             LEFT JOIN Pesquisa p ON cl.Sigla = p.IDLab
             LEFT JOIN Utilizacao u ON p.ID = u.IDPesquisa
             LEFT JOIN Equipamento e ON u.NumSerie = e.NumSerie
             LEFT JOIN ExploracaoCaminhao cam ON c.jazidalatitude = cam.jazidalatitude
             LEFT JOIN ExploracaoEscavadeira esc ON c.jazidalatitude = esc.jazidalatitude
             `)

    if err != nil {
        return nil, fmt.Errorf("error querying data: %v", err)
    }
    defer rows.Close()

    var results []Relatorio
    for rows.Next() {
        var result Relatorio
        if err := rows.Scan(&result.IDColonia, &result.EmpresaColonia, &result.LatitudeJazida,
        &result.LongitudeJazida, &result.SiglaRes, &result.NomeRes,
        &result.SiglaDep, &result.NomeDep, &result.SiglaLab, &result.NomeLab,
        &result.IDHumano, &result.NomeHumano, &result.CargoHumano,
        &result.NomePesquisa, &result.NomeEquipamento, &result.UtilidadeEquipamento,
        &result.IDCaminhao, &result.IDEscavadeira); err != nil {
            return nil, fmt.Errorf("error scanning row: %v", err)
        }
        results = append(results, result)
    }

    return results, nil
}
