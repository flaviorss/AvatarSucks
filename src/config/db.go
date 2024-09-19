package config

import (
    "database/sql"
    _ "github.com/godror/godror"
)

var db *sql.DB

func InitDB(dataSourceName string) (*sql.DB, error) {
    var err error
    db, err = sql.Open("godror", dataSourceName)
    if err != nil {
        return nil, err
    }
    return db, nil
}

func GetDB() *sql.DB {
    return db
}

