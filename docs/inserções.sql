-- Inserções de Dados do BD

--Empresa
INSERT INTO Empresa (Licenca, NumColonias) VALUES ('LIC001', 2);
INSERT INTO Empresa (Licenca, NumColonias) VALUES ('LIC002', 1);
INSERT INTO Empresa (Licenca, NumColonias) VALUES ('LIC003', 1);
INSERT INTO Empresa (Licenca, NumColonias) VALUES ('LIC004', 1);
INSERT INTO Empresa (Licenca, NumColonias) VALUES ('LIC005', 2);
INSERT INTO Empresa (Licenca, NumColonias) VALUES ('LIC006', 1);
INSERT INTO Empresa (Licenca, NumColonias) VALUES ('LIC007', 1);
INSERT INTO Empresa (Licenca, NumColonias) VALUES ('LIC008', 1);
INSERT INTO Empresa (Licenca, NumColonias) VALUES ('LIC009', 1);
INSERT INTO Empresa (Licenca, NumColonias) VALUES ('LIC010', 1);

-- Regiao
INSERT INTO Regiao (ID, Area, Topografia) VALUES (1, 1500.45, 'Montanha');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (2, 780.34, 'Vale');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (3, 920.50, 'Planicie');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (4, 450.12, 'Montanha');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (5, 600.67, 'Vale');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (6, 1300.90, 'Planicie');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (7, 2000.12, 'Montanha');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (8, 1100.30, 'Vale');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (9, 540.45, 'Planicie');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (10, 970.67, 'Montanha');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (11, 1100.25, 'Montanha');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (12, 1600.45, 'Montanha');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (13, 900.80, 'Montanha');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (14, 1300.60, 'Montanha');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (15, 1500.85, 'Montanha');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (16, 650.40, 'Vale');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (17, 880.35, 'Vale');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (18, 720.55, 'Vale');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (19, 590.45, 'Vale');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (20, 800.20, 'Vale');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (21, 1030.60, 'Planicie');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (22, 1200.75, 'Planicie');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (23, 850.50, 'Planicie');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (24, 930.25, 'Planicie');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (25, 780.45, 'Planicie');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (26, 1400.20, 'Montanha');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (27, 1050.60, 'Vale');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (28, 1350.75, 'Planicie');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (29, 1550.85, 'Planicie');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (30, 850.25, 'Vale');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (31, 786.90, 'Outro');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (32, 140.75, 'Outro');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (33, 1330.35, 'Outro');
INSERT INTO Regiao (ID, Area, Topografia) VALUES (34, 890.25, 'Outro');

-- Jazida
INSERT INTO Jazida (Latitude, Longitude, Nome, Base, Altura, IDRegiao) VALUES ('12.97-Norte', '38.50-Leste', 'Veia Esmeralda', 500.20, 300.10, 1);
INSERT INTO Jazida (Latitude, Longitude, Nome, Base, Altura, IDRegiao) VALUES ('23.55-Norte', '146.63-Oeste', 'Fonte Azul', 620.30, 400.20, 21);
INSERT INTO Jazida (Latitude, Longitude, Nome, Base, Altura, IDRegiao) VALUES ('34.05-Norte', '118.24-Leste', 'Ninho de Cristal', 710.45, 350.15, 27);
INSERT INTO Jazida (Latitude, Longitude, Nome, Base, Altura, IDRegiao) VALUES ('40.71-Norte', '74.00-Oeste', 'Rio de Ouro', 450.10, 290.50, 9);
INSERT INTO Jazida (Latitude, Longitude, Nome, Base, Altura, IDRegiao) VALUES ('51.50-Norte', '12.12-Leste', 'Pedra Lunar', 520.40, 320.70, 5);
INSERT INTO Jazida (Latitude, Longitude, Nome, Base, Altura, IDRegiao) VALUES ('48.85-Sul', '62.35-Oeste', 'Coração de Eywa', 680.55, 450.90, 6);
INSERT INTO Jazida (Latitude, Longitude, Nome, Base, Altura, IDRegiao) VALUES ('35.68-Sul', '139.69-Leste', 'Tesouro Ancestral', 500.00, 300.00, 7);
INSERT INTO Jazida (Latitude, Longitude, Nome, Base, Altura, IDRegiao) VALUES ('33.86-Sul', '151.20-Oeste', 'Pedra Sagrada', 460.30, 280.80, 8);
INSERT INTO Jazida (Latitude, Longitude, Nome, Base, Altura, IDRegiao) VALUES ('81.75-Sul', '37.61-Leste', 'Caverna dos Espiritos', 520.60, 300.40, 15);
INSERT INTO Jazida (Latitude, Longitude, Nome, Base, Altura, IDRegiao) VALUES ('22.90-Sul', '43.17-Oeste', 'Veia de Fogo', 490.25, 350.75, 13);
INSERT INTO Jazida (Latitude, Longitude, Nome, Base, Altura, IDRegiao) VALUES ('66.55-Norte', '177.68-Leste', 'Montanha de Ferro',670.60, 387.40, 14);
INSERT INTO Jazida (Latitude, Longitude, Nome, Base, Altura, IDRegiao) VALUES ('42.76-Sul', '86.13-Oeste', 'Abismo de Terra', 470.25, 140.75, 10);

-- Colonia
INSERT INTO Colonia (ID, Pressurizada, Empresa, JazidaLatitude, JazidaLongitude) VALUES (1, 1, 'LIC001', '12.97-Norte', '38.50-Leste');
INSERT INTO Colonia (ID, Pressurizada, Empresa, JazidaLatitude, JazidaLongitude) VALUES (2, 0, 'LIC001', '23.55-Norte', '146.63-Oeste');
INSERT INTO Colonia (ID, Pressurizada, Empresa, JazidaLatitude, JazidaLongitude) VALUES (3, 1, 'LIC002', '34.05-Norte', '118.24-Leste');
INSERT INTO Colonia (ID, Pressurizada, Empresa, JazidaLatitude, JazidaLongitude) VALUES (4, 0, 'LIC007', '40.71-Norte', '74.00-Oeste');
INSERT INTO Colonia (ID, Pressurizada, Empresa, JazidaLatitude, JazidaLongitude) VALUES (5, 1, 'LIC003', '51.50-Norte', '12.12-Leste');
INSERT INTO Colonia (ID, Pressurizada, Empresa, JazidaLatitude, JazidaLongitude) VALUES (6, 0, 'LIC004', '51.50-Norte', '12.12-Leste');
INSERT INTO Colonia (ID, Pressurizada, Empresa, JazidaLatitude, JazidaLongitude) VALUES (7, 1, 'LIC005', '35.68-Sul', '139.69-Leste');
INSERT INTO Colonia (ID, Pressurizada, Empresa, JazidaLatitude, JazidaLongitude) VALUES (8, 0, 'LIC005', '33.86-Sul', '151.20-Oeste');
INSERT INTO Colonia (ID, Pressurizada, Empresa, JazidaLatitude, JazidaLongitude) VALUES (9, 1, 'LIC006', '81.75-Sul', '37.61-Leste');
INSERT INTO Colonia (ID, Pressurizada, Empresa, JazidaLatitude, JazidaLongitude) VALUES (10, 0, 'LIC008', '22.90-Sul', '43.17-Oeste');
INSERT INTO Colonia (ID, Pressurizada, Empresa, JazidaLatitude, JazidaLongitude) VALUES (11, 1, 'LIC009', '66.55-Norte', '177.68-Leste');
INSERT INTO Colonia (ID, Pressurizada, Empresa, JazidaLatitude, JazidaLongitude) VALUES (12, 0, 'LIC010', '42.76-Sul', '86.13-Oeste');

-- Caminhao
INSERT INTO Caminhao (NumFabrica, PesoOperacional, Potencia, CapacidadeCacamba) VALUES ('A123B', 25000, 450, 30.50);
INSERT INTO Caminhao (NumFabrica, PesoOperacional, Potencia, CapacidadeCacamba) VALUES ('B456C', 28000, 500, 32.75);
INSERT INTO Caminhao (NumFabrica, PesoOperacional, Potencia, CapacidadeCacamba) VALUES ('C789D', 26000, 480, 29.40);
INSERT INTO Caminhao (NumFabrica, PesoOperacional, Potencia, CapacidadeCacamba) VALUES ('D012E', 29000, 550, 35.60);
INSERT INTO Caminhao (NumFabrica, PesoOperacional, Potencia, CapacidadeCacamba) VALUES ('E345F', 27500, 470, 33.10);
INSERT INTO Caminhao (NumFabrica, PesoOperacional, Potencia, CapacidadeCacamba) VALUES ('F678G', 31000, 600, 40.50);
INSERT INTO Caminhao (NumFabrica, PesoOperacional, Potencia, CapacidadeCacamba) VALUES ('G901H', 24500, 440, 28.75);
INSERT INTO Caminhao (NumFabrica, PesoOperacional, Potencia, CapacidadeCacamba) VALUES ('H234I', 32000, 620, 42.80);
INSERT INTO Caminhao (NumFabrica, PesoOperacional, Potencia, CapacidadeCacamba) VALUES ('I567J', 28500, 510, 34.20);
INSERT INTO Caminhao (NumFabrica, PesoOperacional, Potencia, CapacidadeCacamba) VALUES ('J890K', 30000, 580, 38.90);

-- Escavadeira
INSERT INTO Escavadeira (NumFabrica, PesoOperacional, Potencia, CapacidadePa) VALUES ('K123L', 20000, 400, 12.50);
INSERT INTO Escavadeira (NumFabrica, PesoOperacional, Potencia, CapacidadePa) VALUES ('L456M', 22000, 420, 14.75);
INSERT INTO Escavadeira (NumFabrica, PesoOperacional, Potencia, CapacidadePa) VALUES ('M789N', 21000, 410, 13.40);
INSERT INTO Escavadeira (NumFabrica, PesoOperacional, Potencia, CapacidadePa) VALUES ('N012O', 24000, 450, 15.60);
INSERT INTO Escavadeira (NumFabrica, PesoOperacional, Potencia, CapacidadePa) VALUES ('O345P', 23000, 430, 14.10);
INSERT INTO Escavadeira (NumFabrica, PesoOperacional, Potencia, CapacidadePa) VALUES ('P678Q', 25000, 470, 16.50);
INSERT INTO Escavadeira (NumFabrica, PesoOperacional, Potencia, CapacidadePa) VALUES ('Q901R', 19000, 390, 11.75);
INSERT INTO Escavadeira (NumFabrica, PesoOperacional, Potencia, CapacidadePa) VALUES ('R234S', 26000, 480, 17.80);
INSERT INTO Escavadeira (NumFabrica, PesoOperacional, Potencia, CapacidadePa) VALUES ('S567T', 22500, 440, 15.20);
INSERT INTO Escavadeira (NumFabrica, PesoOperacional, Potencia, CapacidadePa) VALUES ('T890U', 24000, 460, 16.90);

-- Exploração Caminhão
INSERT INTO ExploracaoCaminhao (JazidaLatitude, JazidaLongitude, IDCaminhao) VALUES ('12.97-Norte', '38.50-Leste', 'A123B');
INSERT INTO ExploracaoCaminhao (JazidaLatitude, JazidaLongitude, IDCaminhao) VALUES ('23.55-Norte', '146.63-Oeste', 'B456C');
INSERT INTO ExploracaoCaminhao (JazidaLatitude, JazidaLongitude, IDCaminhao) VALUES ('34.05-Norte', '118.24-Leste', 'C789D');
INSERT INTO ExploracaoCaminhao (JazidaLatitude, JazidaLongitude, IDCaminhao) VALUES ('40.71-Norte', '74.00-Oeste', 'D012E');
INSERT INTO ExploracaoCaminhao (JazidaLatitude, JazidaLongitude, IDCaminhao) VALUES ('51.50-Norte', '12.12-Leste', 'E345F');
INSERT INTO ExploracaoCaminhao (JazidaLatitude, JazidaLongitude, IDCaminhao) VALUES ('48.85-Sul', '62.35-Oeste', 'F678G');
INSERT INTO ExploracaoCaminhao (JazidaLatitude, JazidaLongitude, IDCaminhao) VALUES ('35.68-Sul', '139.69-Leste', 'G901H');
INSERT INTO ExploracaoCaminhao (JazidaLatitude, JazidaLongitude, IDCaminhao) VALUES ('33.86-Sul', '151.20-Oeste', 'H234I');
INSERT INTO ExploracaoCaminhao (JazidaLatitude, JazidaLongitude, IDCaminhao) VALUES ('81.75-Sul', '37.61-Leste', 'I567J');
INSERT INTO ExploracaoCaminhao (JazidaLatitude, JazidaLongitude, IDCaminhao) VALUES ('22.90-Sul', '43.17-Oeste', 'J890K');

-- Exploração Escavadeira
INSERT INTO ExploracaoEscavadeira (JazidaLatitude, JazidaLongitude, IDEscavadeira) VALUES ('12.97-Norte', '38.50-Leste', 'K123L');
INSERT INTO ExploracaoEscavadeira (JazidaLatitude, JazidaLongitude, IDEscavadeira) VALUES ('23.55-Norte', '146.63-Oeste', 'L456M');
INSERT INTO ExploracaoEscavadeira (JazidaLatitude, JazidaLongitude, IDEscavadeira) VALUES ('34.05-Norte', '118.24-Leste', 'M789N');
INSERT INTO ExploracaoEscavadeira (JazidaLatitude, JazidaLongitude, IDEscavadeira) VALUES ('40.71-Norte', '74.00-Oeste', 'N012O');
INSERT INTO ExploracaoEscavadeira (JazidaLatitude, JazidaLongitude, IDEscavadeira) VALUES ('51.50-Norte', '12.12-Leste', 'O345P');
INSERT INTO ExploracaoEscavadeira (JazidaLatitude, JazidaLongitude, IDEscavadeira) VALUES ('48.85-Sul', '62.35-Oeste', 'P678Q');
INSERT INTO ExploracaoEscavadeira (JazidaLatitude, JazidaLongitude, IDEscavadeira) VALUES ('35.68-Sul', '139.69-Leste', 'Q901R');
INSERT INTO ExploracaoEscavadeira (JazidaLatitude, JazidaLongitude, IDEscavadeira) VALUES ('33.86-Sul', '151.20-Oeste', 'R234S');
INSERT INTO ExploracaoEscavadeira (JazidaLatitude, JazidaLongitude, IDEscavadeira) VALUES ('66.55-Norte', '177.68-Leste', 'S567T');
INSERT INTO ExploracaoEscavadeira (JazidaLatitude, JazidaLongitude, IDEscavadeira) VALUES ('42.76-Sul', '86.13-Oeste', 'T890U');

-- Humano
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (1, 'Alice Silva', 'F', 3000.00, 1, 'Militar');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (2, 'Bruno Oliveira', 'M', 2800.00, 1, 'Militar');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (3, 'Carla Santos', 'F', 3200.00, 1, 'Militar');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (4, 'Daniel Costa', 'M', 3500.00, 1, 'Militar');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (5, 'Eduarda Lima', 'F', 2900.00, 1, 'Militar');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (6, 'Fernando Almeida', 'M', 4000.00, 1, 'Militar');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (7, 'Gabriela Pereira', 'F', 3100.00, 1, 'Militar');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (8, 'Henrique Rodrigues', 'M', 3300.00, 2, 'Militar');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (9, 'Isabela Martins', 'F', 3600.00, 2, 'Militar');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (10, 'João Mendes', 'M', 2700.00, 2, 'Militar');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (11, 'Lucas Andrade', 'M', 3100.00, 2, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (12, 'Mariana Teixeira', 'F', 3200.00, 2, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (13, 'Nicolas Ferreira', 'M', 3400.00, 2, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (14, 'Olga Pires', 'F', 3500.00, 3, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (15, 'Paulo Nascimento', 'M', 2900.00, 4, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (16, 'Quiteria Campos', 'F', 2800.00, 4, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (17, 'Roberto Ribeiro', 'M', 3700.00, 4, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (18, 'Sofia Castro', 'F', 3000.00, 4, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (19, 'Tiago Silva', 'M', 4000.00, 5, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (20, 'Ursula Martins', 'F', 3600.00, 5, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (21, 'Victor Almeida', 'M', 3500.00, 5, 'Minerador');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (22, 'Wesley Costa', 'M', 3300.00, 5, 'Minerador');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (23, 'Yasmin Oliveira', 'F', 3100.00, 5, 'Minerador');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (24, 'Zé Carlos', 'M', 2900.00, 5, 'Minerador');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (25, 'Alan Gomes', 'M', 3700.00, 5, 'Minerador');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (26, 'Bianca Alves', 'F', 3400.00, 6, 'Minerador');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (27, 'Claudio Lima', 'M', 3200.00, 6, 'Minerador');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (28, 'Diana Mota', 'F', 3600.00, 6, 'Minerador');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (29, 'Emilio Soares', 'M', 3100.00, 7, 'Minerador');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (30, 'Fabiana Rocha', 'F', 3500.00, 7, 'Minerador');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (31, 'Ethan Carter', 'M', 9800.50, 8, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (32, 'Sofia Mendes', 'F', 10200.75, 9, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (33, 'Noah Brooks', 'M', 9500.00, 8, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (34, 'Isabela Vasquez', 'F', 11000.20, 9, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (35, 'Lucas Mori', 'M', 9300.45, 8, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (36, 'Emily Zhang', 'F', 9900.80, 9, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (37, 'Isaac Hoffman', 'M', 10500.60, 9, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (38, 'Ava Martins', 'F', 10750.30, 8, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (39, 'Oliver Reed', 'M', 9400.15, 10, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (40, 'Natalie Costa', 'F', 10100.90, 11, 'Cientista');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (41, 'John Smith', 'M', 8500.00, 11, 'Outro');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (42, 'Michael Johnson', 'M', 8700.50, 11, 'Outro');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (43, 'David Miller', 'M', 8900.75, 11, 'Outro');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (44, 'Emily Davis', 'F', 8100.60, 11, 'Outro');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (45, 'Jessica Wilson', 'F', 8300.45, 12, 'Outro');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (46, 'Christopher Brown', 'M', 8800.90, 12, 'Outro');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (47, 'Amanda White', 'F', 8000.35, 12, 'Outro');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (48, 'Daniel Harris', 'M', 8600.80, 12, 'Outro');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (49, 'Sarah Moore', 'F', 8200.20, 12, 'Outro');
INSERT INTO Humano (ID, Nome, Genero, Salario, IDColonia, Cargo) VALUES (50, 'James Taylor', 'M', 8700.65, 12, 'Outro');
INSERT INTO Humano (Nome, Genero, Salario, IDColonia, Cargo) VALUES ('Taylor Layt', 'F', 6700.65, 12, 'Outro');

-- Militar
INSERT INTO Militar (ID, Patente) VALUES (1, 'Tenente');
INSERT INTO Militar (ID, Patente) VALUES (2, 'Capitão');
INSERT INTO Militar (ID, Patente) VALUES (3, 'Major');
INSERT INTO Militar (ID, Patente) VALUES (4, 'Coronel');
INSERT INTO Militar (ID, Patente) VALUES (5, 'Sargento');
INSERT INTO Militar (ID, Patente) VALUES (6, 'Soldado');
INSERT INTO Militar (ID, Patente) VALUES (7, 'General');
INSERT INTO Militar (ID, Patente) VALUES (8, 'Comandante');
INSERT INTO Militar (ID, Patente) VALUES (9, 'Major');
INSERT INTO Militar (ID, Patente) VALUES (10, 'Capitão');

-- Cientista
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (11, 'Biologia');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (12, 'Química');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (13, 'Física');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (14, 'Geologia');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (15, 'Astronomia');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (16, 'Ecologia');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (17, 'Antropologia');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (18, 'Sociologia');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (19, 'Arqueologia');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (20, 'Engenharia');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (31, 'Neurociência e Controle de Avatares');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (32, 'Tecnologia de Transferência de Consciência para Avatares');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (33, 'Desenvolvimento de Avatares para Ambientes Alienígenas');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (34, 'Biotecnologia Aplicada em Avatares');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (35, 'Pesquisa sobre Integração Humano-Avatar');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (36, 'Genética e Modificação de Avatares');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (37, 'Engenharia Biomédica para Avatares');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (38, 'Estudo de Memória e Identidade em Avatares');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (39, 'Simulação de Comportamento Humano em Avatares');
INSERT INTO Cientista (ID, AreaAtuacao) VALUES (40, 'Fisiologia Comparada: Humanos e Avatares');

-- Minerador
INSERT INTO Minerador (ID, Especialidade) VALUES (21, 'Mineração de Ferro');
INSERT INTO Minerador (ID, Especialidade) VALUES (22, 'Mineração de Ouro');
INSERT INTO Minerador (ID, Especialidade) VALUES (23, 'Mineração de Carvão');
INSERT INTO Minerador (ID, Especialidade) VALUES (24, 'Mineração de Diamante');
INSERT INTO Minerador (ID, Especialidade) VALUES (25, 'Mineração de Cobre');
INSERT INTO Minerador (ID, Especialidade) VALUES (26, 'Mineração de Bauxita');
INSERT INTO Minerador (ID, Especialidade) VALUES (27, 'Mineração de Lítio');
INSERT INTO Minerador (ID, Especialidade) VALUES (28, 'Mineração de Níquel');
INSERT INTO Minerador (ID, Especialidade) VALUES (29, 'Mineração de Prata');
INSERT INTO Minerador (ID, Especialidade) VALUES (30, 'Mineração de Manganês');

-- Container Residencia
INSERT INTO ContResidencia (Sigla, Nome, QtdCamas, QtdBanheiros, IDColonia) VALUES ('RES-01', 'Residência A', 3, 2, 1);
INSERT INTO ContResidencia (Sigla, Nome, QtdCamas, QtdBanheiros, IDColonia) VALUES ('RES-02', 'Residência B', 4, 3, 2);
INSERT INTO ContResidencia (Sigla, Nome, QtdCamas, QtdBanheiros, IDColonia) VALUES ('RES-03', 'Residência C', 5, 4, 3);
INSERT INTO ContResidencia (Sigla, Nome, QtdCamas, QtdBanheiros, IDColonia) VALUES ('RES-04', 'Residência D', 2, 1, 4);
INSERT INTO ContResidencia (Sigla, Nome, QtdCamas, QtdBanheiros, IDColonia) VALUES ('RES-05', 'Residência E', 3, 2, 5);
INSERT INTO ContResidencia (Sigla, Nome, QtdCamas, QtdBanheiros, IDColonia) VALUES ('RES-06', 'Residência F', 4, 3, 6);
INSERT INTO ContResidencia (Sigla, Nome, QtdCamas, QtdBanheiros, IDColonia) VALUES ('RES-07', 'Residência G', 5, 4, 7);
INSERT INTO ContResidencia (Sigla, Nome, QtdCamas, QtdBanheiros, IDColonia) VALUES ('RES-08', 'Residência H', 2, 1, 8);
INSERT INTO ContResidencia (Sigla, Nome, QtdCamas, QtdBanheiros, IDColonia) VALUES ('RES-09', 'Residência I', 3, 2, 9);
INSERT INTO ContResidencia (Sigla, Nome, QtdCamas, QtdBanheiros, IDColonia) VALUES ('RES-10', 'Residência J', 4, 3, 10);
INSERT INTO ContResidencia (Sigla, Nome, QtdCamas, QtdBanheiros, IDColonia) VALUES ('RES-11', 'Residência K', 5, 4, 11);
INSERT INTO ContResidencia (Sigla, Nome, QtdCamas, QtdBanheiros, IDColonia) VALUES ('RES-12', 'Residência L', 2, 1, 12);

-- Container Deposito
INSERT INTO ContDeposito (Sigla, Nome, TipoDeposito, IDColonia) VALUES ('DEP-01', 'Depósito A', 'Minerais', 1);
INSERT INTO ContDeposito (Sigla, Nome, TipoDeposito, IDColonia) VALUES ('DEP-02', 'Depósito B', 'Equipamentos', 2);
INSERT INTO ContDeposito (Sigla, Nome, TipoDeposito, IDColonia) VALUES ('DEP-03', 'Depósito C', 'Materiais', 3);
INSERT INTO ContDeposito (Sigla, Nome, TipoDeposito, IDColonia) VALUES ('DEP-04', 'Depósito D', 'Suprimentos', 4);
INSERT INTO ContDeposito (Sigla, Nome, TipoDeposito, IDColonia) VALUES ('DEP-05', 'Depósito E', 'Químicos', 5);
INSERT INTO ContDeposito (Sigla, Nome, TipoDeposito, IDColonia) VALUES ('DEP-06', 'Depósito F', 'Resíduos', 6);
INSERT INTO ContDeposito (Sigla, Nome, TipoDeposito, IDColonia) VALUES ('DEP-07', 'Depósito G', 'Combustíveis', 7);
INSERT INTO ContDeposito (Sigla, Nome, TipoDeposito, IDColonia) VALUES ('DEP-08', 'Depósito H', 'Ferramentas', 8);
INSERT INTO ContDeposito (Sigla, Nome, TipoDeposito, IDColonia) VALUES ('DEP-09', 'Depósito I', 'Peças', 9);
INSERT INTO ContDeposito (Sigla, Nome, TipoDeposito, IDColonia) VALUES ('DEP-10', 'Depósito J', 'Alimentos', 10);
INSERT INTO ContDeposito (Sigla, Nome, TipoDeposito, IDColonia) VALUES ('DEP-11', 'Depósito K', 'Materiais de Construção', 11);
INSERT INTO ContDeposito (Sigla, Nome, TipoDeposito, IDColonia) VALUES ('DEP-12', 'Depósito L', 'Equipamentos Gerais', 12);

-- Container Laboratorio
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-01', 'Laboratório A', 'Pesquisa de Minerais', 1);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-02', 'Laboratório B', 'Análise Química', 2);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-03', 'Laboratório C', 'Testes de Materiais', 3);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-04', 'Laboratório D', 'Desenvolvimento de Equipamentos', 4);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-05', 'Laboratório E', 'Estudos de Ecologia', 5);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-06', 'Laboratório F', 'Análise de Resíduos', 6);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-07', 'Laboratório G', 'Pesquisas Biológicas', 7);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-08', 'Laboratório H', 'Testes de Segurança', 8);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-09', 'Laboratório I', 'Desenvolvimento de Químicos', 9);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-10', 'Laboratório J', 'Análise de Combustíveis', 10);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-11', 'Laboratório K', 'Testes de Ferramentas', 11);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-12', 'Laboratório L', 'Pesquisa de Novos Materiais', 12);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-13', 'Laboratório M', 'Pesquisa sobre Conexões com Avatares', 1);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-14', 'Laboratório N', 'Estudo de Comportamento de Avatares', 2);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-15', 'Laboratório O', 'Análise de Dados dos Avatares', 3);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-16', 'Laboratório P', 'Desenvolvimento de Tecnologias de Avatar', 4);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-17', 'Laboratório Q', 'Pesquisa de Interações Sociais de Avatares', 5);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-18', 'Laboratório R', 'Estudo de Efeitos Ambientais em Avatares', 6);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-19', 'Laboratório S', 'Análise de Cultura e Avatares', 7);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-20', 'Laboratório T', 'Desenvolvimento de Avatares Personalizados', 8);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-21', 'Laboratório U', 'Pesquisa de Identidade em Avatares', 9);
INSERT INTO ContLaboratorio (Sigla, Nome, Finalidade, IDColonia) VALUES ('LAB-22', 'Laboratório V', 'Estudo de Tecnologias de Imersão para Avatares', 10);

-- Pesquisa
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (1, 'LAB-13', 31, 'Conexões Neurais entre Humanos e Avatares');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (2, 'LAB-14', 32, 'Estudo do Comportamento Psicológico dos Avatares');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (3, 'LAB-15', 33, 'Monitoramento de Funções Vitais de Avatares');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (4, 'LAB-16', 34, 'Desenvolvimento de Inteligência Artificial para Avatares');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (5, 'LAB-17', 35, 'Avatares e Interações Sociais em Ambientes Alienígenas');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (6, 'LAB-18', 36, 'Impacto de Condições Ambientais em Avatares');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (7, 'LAB-19', 37, 'Cultura Navi e Adaptação de Avatares');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (8, 'LAB-20', 38, 'Personalização de Avatares para Operações Específicas');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (9, 'LAB-21', 39, 'Avatares: Identidade e Consciência de Si');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (10, 'LAB-22', 40, 'Realidade Virtual Imersiva para Controle de Avatares');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (11, 'LAB-01', 11, 'Estudo da Geologia da Região 1');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (12, 'LAB-02', 12, 'Análise de Flora e Fauna de Pandora');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (13, 'LAB-03', 13, 'Desenvolvimento de Equipamentos de Mineração');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (14, 'LAB-04', 14, 'Exploração de Recursos Naturais em Pandora');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (15, 'LAB-05', 15, 'Desenvolvimento de Combustíveis Sustentáveis');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (16, 'LAB-06', 16, 'Tecnologias de Suporte à Vida em Colonias Espaciais');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (17, 'LAB-07', 17, 'Estudo da Atmosfera de Pandora');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (18, 'LAB-08', 18, 'Avanços em Propulsão Espacial');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (19, 'LAB-09', 19, 'Desenvolvimento de Materiais Super-resistentes');
INSERT INTO Pesquisa (ID, IDLab, IDCientista, Nome) VALUES (20, 'LAB-10', 20, 'Análise de Impactos Ambientais da Mineração');

-- Equipamento
INSERT INTO Equipamento (NumSerie, Nome, Utilidade, ConsumoEnergia) VALUES ('A1234', 'Scanner Biológico', 'Análise de amostras biológicas e estrutura celular', 150.50);
INSERT INTO Equipamento (NumSerie, Nome, Utilidade, ConsumoEnergia) VALUES ('B5678', 'Rádio Comunicador', 'Comunicação de longa distância com as colônias', 75.20);
INSERT INTO Equipamento (NumSerie, Nome, Utilidade, ConsumoEnergia) VALUES ('C9101', 'Gerador Portátil', 'Fornecimento de energia de emergência em áreas remotas', 200.80);
INSERT INTO Equipamento (NumSerie, Nome, Utilidade, ConsumoEnergia) VALUES ('D2345', 'Escâner de Terreno', 'Mapeamento topográfico e análise geológica', 180.60);
INSERT INTO Equipamento (NumSerie, Nome, Utilidade, ConsumoEnergia) VALUES ('E6789', 'Sistema de Purificação de Ar', 'Purificação de ar em ambientes pressurizados', 120.45);
INSERT INTO Equipamento (NumSerie, Nome, Utilidade, ConsumoEnergia) VALUES ('F1123', 'Braço Robótico', 'Manipulação de materiais pesados em minas e jazidas', 250.70);
INSERT INTO Equipamento (NumSerie, Nome, Utilidade, ConsumoEnergia) VALUES ('G4456', 'Drone Exploratório', 'Exploração remota e coleta de dados em áreas perigosas', 90.30);
INSERT INTO Equipamento (NumSerie, Nome, Utilidade, ConsumoEnergia) VALUES ('H7890', 'Unidade de Descontaminação', 'Descontaminação de materiais e equipamentos', 130.10);
INSERT INTO Equipamento (NumSerie, Nome, Utilidade, ConsumoEnergia) VALUES ('I3456', 'Monitor de Radiação', 'Monitoramento de níveis de radiação em áreas de risco', 60.75);
INSERT INTO Equipamento (NumSerie, Nome, Utilidade, ConsumoEnergia) VALUES ('J9012', 'Sensor de Gravidade', 'Medir variações gravitacionais em diferentes terrenos', 95.40);

-- Utilização
INSERT INTO Utilizacao (IDPesquisa, NumSerie) VALUES (11, 'A1234');
INSERT INTO Utilizacao (IDPesquisa, NumSerie) VALUES (12, 'B5678'); 
INSERT INTO Utilizacao (IDPesquisa, NumSerie) VALUES (13, 'C9101');
INSERT INTO Utilizacao (IDPesquisa, NumSerie) VALUES (14, 'D2345'); 
INSERT INTO Utilizacao (IDPesquisa, NumSerie) VALUES (15, 'E6789'); 
INSERT INTO Utilizacao (IDPesquisa, NumSerie) VALUES (16, 'F1123');
INSERT INTO Utilizacao (IDPesquisa, NumSerie) VALUES (17, 'G4456'); 
INSERT INTO Utilizacao (IDPesquisa, NumSerie) VALUES (18, 'H7890');
INSERT INTO Utilizacao (IDPesquisa, NumSerie) VALUES (19, 'I3456'); 
INSERT INTO Utilizacao (IDPesquisa, NumSerie) VALUES (20, 'J9012');

-- Ser Nativo
INSERT INTO SerNativo (ID) VALUES (1); 
INSERT INTO SerNativo (ID) VALUES (2);
INSERT INTO SerNativo (ID) VALUES (3);
INSERT INTO SerNativo (ID) VALUES (4);
INSERT INTO SerNativo (ID) VALUES (5);
INSERT INTO SerNativo (ID) VALUES (6);
INSERT INTO SerNativo (ID) VALUES (7);
INSERT INTO SerNativo (ID) VALUES (8);
INSERT INTO SerNativo (ID) VALUES (9);
INSERT INTO SerNativo (ID) VALUES (10);
INSERT INTO SerNativo (ID) VALUES (11);
INSERT INTO SerNativo (ID) VALUES (12);
INSERT INTO SerNativo (ID) VALUES (13);
INSERT INTO SerNativo (ID) VALUES (14);
INSERT INTO SerNativo (ID) VALUES (15);
INSERT INTO SerNativo (ID) VALUES (16);
INSERT INTO SerNativo (ID) VALUES (17);
INSERT INTO SerNativo (ID) VALUES (18);
INSERT INTO SerNativo (ID) VALUES (19);
INSERT INTO SerNativo (ID) VALUES (20);
INSERT INTO SerNativo (ID) VALUES (21);
INSERT INTO SerNativo (ID) VALUES (22);
INSERT INTO SerNativo (ID) VALUES (23);
INSERT INTO SerNativo (ID) VALUES (24);
INSERT INTO SerNativo (ID) VALUES (25);
INSERT INTO SerNativo (ID) VALUES (26);
INSERT INTO SerNativo (ID) VALUES (27);
INSERT INTO SerNativo (ID) VALUES (28);
INSERT INTO SerNativo (ID) VALUES (29);
INSERT INTO SerNativo (ID) VALUES (30);
INSERT INTO SerNativo (ID) VALUES (31);
INSERT INTO SerNativo (ID) VALUES (32);
INSERT INTO SerNativo (ID) VALUES (33);
INSERT INTO SerNativo (ID) VALUES (34);
INSERT INTO SerNativo (ID) VALUES (35);
INSERT INTO SerNativo (ID) VALUES (36);
INSERT INTO SerNativo (ID) VALUES (37);
INSERT INTO SerNativo (ID) VALUES (38);
INSERT INTO SerNativo (ID) VALUES (39);
INSERT INTO SerNativo (ID) VALUES (40);
INSERT INTO SerNativo (ID) VALUES (41);
INSERT INTO SerNativo (ID) VALUES (42);
INSERT INTO SerNativo (ID) VALUES (43);
INSERT INTO SerNativo (ID) VALUES (44);
INSERT INTO SerNativo (ID) VALUES (45);
INSERT INTO SerNativo (ID) VALUES (46);
INSERT INTO SerNativo (ID) VALUES (47);
INSERT INTO SerNativo (ID) VALUES (48);
INSERT INTO SerNativo (ID) VALUES (49);
INSERT INTO SerNativo (ID) VALUES (50);
INSERT INTO SerNativo (ID) VALUES (51); 
INSERT INTO SerNativo (ID) VALUES (52);
INSERT INTO SerNativo (ID) VALUES (53);
INSERT INTO SerNativo (ID) VALUES (54);
INSERT INTO SerNativo (ID) VALUES (55);
INSERT INTO SerNativo (ID) VALUES (56);
INSERT INTO SerNativo (ID) VALUES (57);
INSERT INTO SerNativo (ID) VALUES (58);
INSERT INTO SerNativo (ID) VALUES (59);
INSERT INTO SerNativo (ID) VALUES (60);
INSERT INTO SerNativo (ID) VALUES (61);
INSERT INTO SerNativo (ID) VALUES (62);
INSERT INTO SerNativo (ID) VALUES (63);
INSERT INTO SerNativo (ID) VALUES (64);
INSERT INTO SerNativo (ID) VALUES (65);
INSERT INTO SerNativo (ID) VALUES (66);
INSERT INTO SerNativo (ID) VALUES (67);
INSERT INTO SerNativo (ID) VALUES (68);
INSERT INTO SerNativo (ID) VALUES (69);
INSERT INTO SerNativo (ID) VALUES (70);
INSERT INTO SerNativo (ID) VALUES (71);
INSERT INTO SerNativo (ID) VALUES (72);
INSERT INTO SerNativo (ID) VALUES (73);
INSERT INTO SerNativo (ID) VALUES (74);
INSERT INTO SerNativo (ID) VALUES (75);
INSERT INTO SerNativo (ID) VALUES (76);
INSERT INTO SerNativo (ID) VALUES (77);
INSERT INTO SerNativo (ID) VALUES (78);
INSERT INTO SerNativo (ID) VALUES (79);
INSERT INTO SerNativo (ID) VALUES (80);
INSERT INTO SerNativo (ID) VALUES (81);
INSERT INTO SerNativo (ID) VALUES (82);
INSERT INTO SerNativo (ID) VALUES (83);
INSERT INTO SerNativo (ID) VALUES (84);
INSERT INTO SerNativo (ID) VALUES (85);
INSERT INTO SerNativo (ID) VALUES (86);
INSERT INTO SerNativo (ID) VALUES (87);
INSERT INTO SerNativo (ID) VALUES (88);
INSERT INTO SerNativo (ID) VALUES (89);
INSERT INTO SerNativo (ID) VALUES (90);
INSERT INTO SerNativo (ID) VALUES (91);
INSERT INTO SerNativo (ID) VALUES (92);
INSERT INTO SerNativo (ID) VALUES (93);
INSERT INTO SerNativo (ID) VALUES (94);
INSERT INTO SerNativo (ID) VALUES (95);
INSERT INTO SerNativo (ID) VALUES (96);
INSERT INTO SerNativo (ID) VALUES (97);
INSERT INTO SerNativo (ID) VALUES (98);
INSERT INTO SerNativo (ID) VALUES (99);
INSERT INTO SerNativo (ID) VALUES (100);
INSERT INTO SerNativo (ID) VALUES (101);
INSERT INTO SerNativo (ID) VALUES (102);
INSERT INTO SerNativo (ID) VALUES (103);
INSERT INTO SerNativo (ID) VALUES (104);
INSERT INTO SerNativo (ID) VALUES (105);
INSERT INTO SerNativo (ID) VALUES (106);
INSERT INTO SerNativo (ID) VALUES (107);
INSERT INTO SerNativo (ID) VALUES (108);
INSERT INTO SerNativo (ID) VALUES (109);
INSERT INTO SerNativo (ID) VALUES (110);
INSERT INTO SerNativo (ID) VALUES (111);
INSERT INTO SerNativo (ID) VALUES (112);
INSERT INTO SerNativo (ID) VALUES (113);
INSERT INTO SerNativo (ID) VALUES (114);
INSERT INTO SerNativo (ID) VALUES (115);
INSERT INTO SerNativo (ID) VALUES (116);
INSERT INTO SerNativo (ID) VALUES (117);
INSERT INTO SerNativo (ID) VALUES (118);
INSERT INTO SerNativo (ID) VALUES (119);
INSERT INTO SerNativo (ID) VALUES (120);
INSERT INTO SerNativo (ID) VALUES (121);
INSERT INTO SerNativo (ID) VALUES (122);
INSERT INTO SerNativo (ID) VALUES (123);
INSERT INTO SerNativo (ID) VALUES (124);
INSERT INTO SerNativo (ID) VALUES (125);
INSERT INTO SerNativo (ID) VALUES (126);
INSERT INTO SerNativo (ID) VALUES (127);
INSERT INTO SerNativo (ID) VALUES (128);
INSERT INTO SerNativo (ID) VALUES (129);
INSERT INTO SerNativo (ID) VALUES (130);
INSERT INTO SerNativo (ID) VALUES (131);
INSERT INTO SerNativo (ID) VALUES (132);
INSERT INTO SerNativo (ID) VALUES (133);
INSERT INTO SerNativo (ID) VALUES (134);
INSERT INTO SerNativo (ID) VALUES (135);
INSERT INTO SerNativo (ID) VALUES (136);
INSERT INTO SerNativo (ID) VALUES (137);
INSERT INTO SerNativo (ID) VALUES (138);
INSERT INTO SerNativo (ID) VALUES (139);
INSERT INTO SerNativo (ID) VALUES (140);
INSERT INTO SerNativo (ID) VALUES (141);
INSERT INTO SerNativo (ID) VALUES (142);
INSERT INTO SerNativo (ID) VALUES (143);
INSERT INTO SerNativo (ID) VALUES (144);
INSERT INTO SerNativo (ID) VALUES (145);
INSERT INTO SerNativo (ID) VALUES (146);
INSERT INTO SerNativo (ID) VALUES (147);
INSERT INTO SerNativo (ID) VALUES (148);
INSERT INTO SerNativo (ID) VALUES (149);
INSERT INTO SerNativo (ID) VALUES (150);
INSERT INTO SerNativo (ID) VALUES (151);
INSERT INTO SerNativo (ID) VALUES (152);
INSERT INTO SerNativo (ID) VALUES (153);
INSERT INTO SerNativo (ID) VALUES (154);
INSERT INTO SerNativo (ID) VALUES (155);
INSERT INTO SerNativo (ID) VALUES (156);
INSERT INTO SerNativo (ID) VALUES (157);
INSERT INTO SerNativo (ID) VALUES (158);
INSERT INTO SerNativo (ID) VALUES (159);
INSERT INTO SerNativo (ID) VALUES (160);
INSERT INTO SerNativo (ID) VALUES (161);
INSERT INTO SerNativo (ID) VALUES (162);
INSERT INTO SerNativo (ID) VALUES (163);
INSERT INTO SerNativo (ID) VALUES (164);
INSERT INTO SerNativo (ID) VALUES (165);
INSERT INTO SerNativo (ID) VALUES (166);
INSERT INTO SerNativo (ID) VALUES (167);
INSERT INTO SerNativo (ID) VALUES (168);
INSERT INTO SerNativo (ID) VALUES (169);
INSERT INTO SerNativo (ID) VALUES (170);

-- Conexao Neural
INSERT INTO ConexaoNeural (IDPrimeiroSer, IDSegundoSer) VALUES (41, 1);
INSERT INTO ConexaoNeural (IDPrimeiroSer, IDSegundoSer) VALUES (42, 2);
INSERT INTO ConexaoNeural (IDPrimeiroSer, IDSegundoSer) VALUES (43, 3);
INSERT INTO ConexaoNeural (IDPrimeiroSer, IDSegundoSer) VALUES (44, 4);
INSERT INTO ConexaoNeural (IDPrimeiroSer, IDSegundoSer) VALUES (45, 5);
INSERT INTO ConexaoNeural (IDPrimeiroSer, IDSegundoSer) VALUES (46, 6);
INSERT INTO ConexaoNeural (IDPrimeiroSer, IDSegundoSer) VALUES (47, 7);
INSERT INTO ConexaoNeural (IDPrimeiroSer, IDSegundoSer) VALUES (48, 8);
INSERT INTO ConexaoNeural (IDPrimeiroSer, IDSegundoSer) VALUES (49, 9);
INSERT INTO ConexaoNeural (IDPrimeiroSer, IDSegundoSer) VALUES (50, 12);
INSERT INTO ConexaoNeural (IDPrimeiroSer, IDSegundoSer) VALUES (51, 15);
INSERT INTO ConexaoNeural (IDPrimeiroSer, IDSegundoSer) VALUES (52, 22);

-- Arvore
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (1, 'Árvore das Almas', 5);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (2, 'Árvore das Almas', 7);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (3, 'Árvore das Almas', 10);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (4, 'Árvore das Almas', 8);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (5, 'Árvore das Almas', 13);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (6, 'Árvore das Almas', 6);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (7, 'Árvore das Almas', 9);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (8, 'Árvore das Almas', 12);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (9, 'Árvore das Almas', 4);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (10, 'Árvore das Almas', 15);

INSERT INTO Arvore (ID, Papel, Regiao) VALUES (11, 'Árvore das Vozes', 2);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (12, 'Árvore das Vozes', 4);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (13, 'Árvore das Vozes', 11);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (14, 'Árvore das Vozes', 14);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (15, 'Árvore das Vozes', 17);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (16, 'Árvore das Vozes', 19);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (17, 'Árvore das Vozes', 22);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (18, 'Árvore das Vozes', 24);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (19, 'Árvore das Vozes', 26);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (20, 'Árvore das Vozes', 30);

INSERT INTO Arvore (ID, Papel, Regiao) VALUES (21, 'Árvore da Vida', 3);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (22, 'Árvore da Vida', 5);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (23, 'Árvore da Vida', 8);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (24, 'Árvore da Vida', 9);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (25, 'Árvore da Vida', 12);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (26, 'Árvore da Vida', 16);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (27, 'Árvore da Vida', 18);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (28, 'Árvore da Vida', 23);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (29, 'Árvore da Vida', 29);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (30, 'Árvore da Vida', 33);

INSERT INTO Arvore (ID, Papel, Regiao) VALUES (31, 'Árvore do Lar', 1);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (32, 'Árvore do Lar', 6);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (33, 'Árvore do Lar', 7);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (34, 'Árvore do Lar', 10);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (35, 'Árvore do Lar', 13);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (36, 'Árvore do Lar', 20);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (37, 'Árvore do Lar', 25);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (38, 'Árvore do Lar', 28);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (39, 'Árvore do Lar', 31);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (40, 'Árvore do Lar', 34);

INSERT INTO Arvore (ID, Papel, Regiao) VALUES (41, 'Árvore Comum', 20);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (42, 'Árvore Comum', 25);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (43, 'Árvore Comum', 28);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (44, 'Árvore Comum', 31);
INSERT INTO Arvore (ID, Papel, Regiao) VALUES (45, 'Árvore Comum', 34);

-- Montanha
INSERT INTO Montanha (ID, Movimentacao, Altura) VALUES (1, 0, 1200.50);
INSERT INTO Montanha (ID, Movimentacao, Altura) VALUES (4, 1, 2500.75);
INSERT INTO Montanha (ID, Movimentacao, Altura) VALUES (7, 0, 1800.30);
INSERT INTO Montanha (ID, Movimentacao, Altura) VALUES (10, 1, 3200.10);
INSERT INTO Montanha (ID, Movimentacao, Altura) VALUES (11, 0, 1500.90);
INSERT INTO Montanha (ID, Movimentacao, Altura) VALUES (12, 1, 2700.45);
INSERT INTO Montanha (ID, Movimentacao, Altura) VALUES (13, 0, 2300.80);
INSERT INTO Montanha (ID, Movimentacao, Altura) VALUES (14, 1, 1900.60);
INSERT INTO Montanha (ID, Movimentacao, Altura) VALUES (15, 0, 2100.20);
INSERT INTO Montanha (ID, Movimentacao, Altura) VALUES (26, 1, 3500.40);

-- Planicie
INSERT INTO Planicie (ID, Flora, BiomaAquatico) VALUES (3, 'Plantas Luminosas e Árvores Sagradas', 1);
INSERT INTO Planicie (ID, Flora, BiomaAquatico) VALUES (6, 'Grama Alta e Arbustos Espinhosos', 0);
INSERT INTO Planicie (ID, Flora, BiomaAquatico) VALUES (9, 'Flores Gigantes e Árvores de Fruto', 1);
INSERT INTO Planicie (ID, Flora, BiomaAquatico) VALUES (21, 'Campos de Fungos e Lírios', 0);
INSERT INTO Planicie (ID, Flora, BiomaAquatico) VALUES (22, 'Samambaias Gigantes e Lírios de Água', 1);
INSERT INTO Planicie (ID, Flora, BiomaAquatico) VALUES (23, 'Cipós e Musgos Luminosos', 0);
INSERT INTO Planicie (ID, Flora, BiomaAquatico) VALUES (24, 'Árvores de Copa Alta e Arbustos', 1);
INSERT INTO Planicie (ID, Flora, BiomaAquatico) VALUES (25, 'Orquídeas Selvagens e Samambaias', 0);
INSERT INTO Planicie (ID, Flora, BiomaAquatico) VALUES (28, 'Campos de Feno e Espécies Aquáticas', 1);
INSERT INTO Planicie (ID, Flora, BiomaAquatico) VALUES (29, 'Árvores Frutíferas e Lírios Gigantes', 1);

-- Vale
INSERT INTO Vale (ID, Profundidademax, VolumeAgua) VALUES (2, 500.75, 10000.50);
INSERT INTO Vale (ID, Profundidademax, VolumeAgua) VALUES (5, 450.30, 8500.25);
INSERT INTO Vale (ID, Profundidademax, VolumeAgua) VALUES (8, 600.90, 12000.80);
INSERT INTO Vale (ID, Profundidademax, VolumeAgua) VALUES (16, 520.40, 9000.60);
INSERT INTO Vale (ID, Profundidademax, VolumeAgua) VALUES (17, 480.55, 8700.40);
INSERT INTO Vale (ID, Profundidademax, VolumeAgua) VALUES (18, 530.20, 9500.30);
INSERT INTO Vale (ID, Profundidademax, VolumeAgua) VALUES (19, 410.15, 7800.45);
INSERT INTO Vale (ID, Profundidademax, VolumeAgua) VALUES (20, 490.70, 9200.55);
INSERT INTO Vale (ID, Profundidademax, VolumeAgua) VALUES (27, 560.80, 9800.70);
INSERT INTO Vale (ID, Profundidademax, VolumeAgua) VALUES (30, 510.60, 9100.20);

-- Banshee
INSERT INTO Banshee (ID, AlturaMaxVoo, CorPredominante, IDMontanha) VALUES (1, 1500.50, 'Azul Claro', 1);
INSERT INTO Banshee (ID, AlturaMaxVoo, CorPredominante, IDMontanha) VALUES (2, 1450.25, 'Verde Escuro', 4);
INSERT INTO Banshee (ID, AlturaMaxVoo, CorPredominante, IDMontanha) VALUES (3, 1600.80, 'Roxo Luminoso', 4);
INSERT INTO Banshee (ID, AlturaMaxVoo, CorPredominante, IDMontanha) VALUES (4, 1550.45, 'Amarelo Vistoso', 4);
INSERT INTO Banshee (ID, AlturaMaxVoo, CorPredominante, IDMontanha) VALUES (5, 1700.60, 'Laranja Fogo', 7);
INSERT INTO Banshee (ID, AlturaMaxVoo, CorPredominante, IDMontanha) VALUES (6, 1650.90, 'Vermelho Sangue', 7);
INSERT INTO Banshee (ID, AlturaMaxVoo, CorPredominante, IDMontanha) VALUES (7, 1400.75, 'Azul Profundo', 7);
INSERT INTO Banshee (ID, AlturaMaxVoo, CorPredominante, IDMontanha) VALUES (8, 1750.20, 'Verde Brilhante', 7);
INSERT INTO Banshee (ID, AlturaMaxVoo, CorPredominante, IDMontanha) VALUES (9, 1300.40, 'Cinza Metálico', 10);
INSERT INTO Banshee (ID, AlturaMaxVoo, CorPredominante, IDMontanha) VALUES (10, 1800.10, 'Branco Gelado', 10);

-- Direhorse
INSERT INTO Direhorse (ID, Tamanho, IDPlanicie) VALUES (11, 5.50, 3);
INSERT INTO Direhorse (ID, Tamanho, IDPlanicie) VALUES (12, 6.10, 6);
INSERT INTO Direhorse (ID, Tamanho, IDPlanicie) VALUES (13, 5.80, 3);
INSERT INTO Direhorse (ID, Tamanho, IDPlanicie) VALUES (14, 6.30, 6);
INSERT INTO Direhorse (ID, Tamanho, IDPlanicie) VALUES (15, 6.50, 6);
INSERT INTO Direhorse (ID, Tamanho, IDPlanicie) VALUES (16, 5.90, 21);
INSERT INTO Direhorse (ID, Tamanho, IDPlanicie) VALUES (17, 6.20, 21);
INSERT INTO Direhorse (ID, Tamanho, IDPlanicie) VALUES (18, 5.70, 21);
INSERT INTO Direhorse (ID, Tamanho, IDPlanicie) VALUES (19, 6.00, 21);
INSERT INTO Direhorse (ID, Tamanho, IDPlanicie) VALUES (20, 6.40, 21);

-- Thanator
INSERT INTO Thanator (ID, Forca, Velocidade, IDVale) VALUES (21, 500.50, 80.20, 2);
INSERT INTO Thanator (ID, Forca, Velocidade, IDVale) VALUES (22, 600.75, 85.30, 2);
INSERT INTO Thanator (ID, Forca, Velocidade, IDVale) VALUES (23, 550.90, 82.10, 5);
INSERT INTO Thanator (ID, Forca, Velocidade, IDVale) VALUES (24, 650.20, 87.50, 8);
INSERT INTO Thanator (ID, Forca, Velocidade, IDVale) VALUES (25, 620.30, 83.60, 16);
INSERT INTO Thanator (ID, Forca, Velocidade, IDVale) VALUES (26, 700.45, 90.40, 17);
INSERT INTO Thanator (ID, Forca, Velocidade, IDVale) VALUES (27, 580.25, 84.70, 17);
INSERT INTO Thanator (ID, Forca, Velocidade, IDVale) VALUES (28, 690.55, 88.10, 18);
INSERT INTO Thanator (ID, Forca, Velocidade, IDVale) VALUES (29, 710.60, 92.00, 18);
INSERT INTO Thanator (ID, Forca, Velocidade, IDVale) VALUES (30, 670.90, 86.40, 20);

-- Leonopteryx
INSERT INTO Leonopteryx (ID, Envergadura, IDVale) VALUES (31, 25.50, 2);
INSERT INTO Leonopteryx (ID, Envergadura, IDVale) VALUES (32, 26.70, 5);
INSERT INTO Leonopteryx (ID, Envergadura, IDVale) VALUES (33, 27.30, 8);
INSERT INTO Leonopteryx (ID, Envergadura, IDVale) VALUES (34, 28.20, 16);
INSERT INTO Leonopteryx (ID, Envergadura, IDVale) VALUES (35, 29.00, 17);
INSERT INTO Leonopteryx (ID, Envergadura, IDVale) VALUES (36, 30.10, 18);
INSERT INTO Leonopteryx (ID, Envergadura, IDVale) VALUES (37, 28.40, 19);
INSERT INTO Leonopteryx (ID, Envergadura, IDVale) VALUES (38, 29.50, 20);
INSERT INTO Leonopteryx (ID, Envergadura, IDVale) VALUES (39, 30.60, 27);
INSERT INTO Leonopteryx (ID, Envergadura, IDVale) VALUES (40, 31.20, 30);

-- Arvore Controle
INSERT INTO ArvoreControle (ID, Tipo) VALUES (1, 'Alma');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (2, 'Alma');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (3, 'Alma');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (4, 'Alma');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (5, 'Alma');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (6, 'Alma');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (7, 'Alma');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (8, 'Alma');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (9, 'Alma');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (10, 'Alma');

INSERT INTO ArvoreControle (ID, Tipo) VALUES (11, 'Vozes');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (12, 'Vozes');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (13, 'Vozes');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (14, 'Vozes');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (15, 'Vozes');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (16, 'Vozes');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (17, 'Vozes');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (18, 'Vozes');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (19, 'Vozes');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (20, 'Vozes');

INSERT INTO ArvoreControle (ID, Tipo) VALUES (21, 'Vida');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (22, 'Vida');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (23, 'Vida');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (24, 'Vida');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (25, 'Vida');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (26, 'Vida');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (27, 'Vida');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (28, 'Vida');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (29, 'Vida');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (30, 'Vida');

INSERT INTO ArvoreControle (ID, Tipo) VALUES (31, 'Lar');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (32, 'Lar');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (33, 'Lar');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (34, 'Lar');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (35, 'Lar');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (36, 'Lar');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (37, 'Lar');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (38, 'Lar');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (39, 'Lar');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (40, 'Lar');

INSERT INTO ArvoreControle (ID, Tipo) VALUES (41, 'Comum');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (42, 'Comum');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (43, 'Comum');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (44, 'Comum');
INSERT INTO ArvoreControle (ID, Tipo) VALUES (45, 'Comum');

-- Arvore Vida
INSERT INTO ArvoreVida (ID, QtdSementes) VALUES (21, 500);
INSERT INTO ArvoreVida (ID, QtdSementes) VALUES (22, 650);
INSERT INTO ArvoreVida (ID, QtdSementes) VALUES (23, 420);
INSERT INTO ArvoreVida (ID, QtdSementes) VALUES (24, 780);
INSERT INTO ArvoreVida (ID, QtdSementes) VALUES (25, 350);
INSERT INTO ArvoreVida (ID, QtdSementes) VALUES (26, 890);
INSERT INTO ArvoreVida (ID, QtdSementes) VALUES (27, 610);
INSERT INTO ArvoreVida (ID, QtdSementes) VALUES (28, 720);
INSERT INTO ArvoreVida (ID, QtdSementes) VALUES (29, 480);
INSERT INTO ArvoreVida (ID, QtdSementes) VALUES (30, 560);

-- Arvore Alma
INSERT INTO ArvoreAlma (ID, Localizacao, IntensidadeLuz) VALUES (1, '23.55-Norte, 146.63-Oeste', 75.50);
INSERT INTO ArvoreAlma (ID, Localizacao, IntensidadeLuz) VALUES (2, '34.05-Norte, 118.24-Leste', 60.80);
INSERT INTO ArvoreAlma (ID, Localizacao, IntensidadeLuz) VALUES (3, '40.71-Norte, 74.00-Oeste', 82.40);
INSERT INTO ArvoreAlma (ID, Localizacao, IntensidadeLuz) VALUES (4, '51.50-Norte, 12.12-Leste', 90.20);
INSERT INTO ArvoreAlma (ID, Localizacao, IntensidadeLuz) VALUES (5, '48.85-Sul, 62.35-Oeste', 55.10);
INSERT INTO ArvoreAlma (ID, Localizacao, IntensidadeLuz) VALUES (6, '35.68-Sul, 139.69-Leste', 68.75);
INSERT INTO ArvoreAlma (ID, Localizacao, IntensidadeLuz) VALUES (7, '33.86-Sul, 151.20-Oeste', 79.60);
INSERT INTO ArvoreAlma (ID, Localizacao, IntensidadeLuz) VALUES (8, '22.90-Sul, 43.17-Oeste', 87.90);
INSERT INTO ArvoreAlma (ID, Localizacao, IntensidadeLuz) VALUES (9, '66.55-Norte, 177.68-Leste', 92.25);
INSERT INTO ArvoreAlma (ID, Localizacao, IntensidadeLuz) VALUES (10, '42.76-Sul, 86.13-Oeste', 63.50);

-- Ligação 
INSERT INTO Ligacao (IDArvore, IDSerNativo) VALUES (1, 41);
INSERT INTO Ligacao (IDArvore, IDSerNativo) VALUES (1, 42);
INSERT INTO Ligacao (IDArvore, IDSerNativo) VALUES (2, 43);
INSERT INTO Ligacao (IDArvore, IDSerNativo) VALUES (3, 44);
INSERT INTO Ligacao (IDArvore, IDSerNativo) VALUES (4, 45);
INSERT INTO Ligacao (IDArvore, IDSerNativo) VALUES (5, 46);
INSERT INTO Ligacao (IDArvore, IDSerNativo) VALUES (5, 47);
INSERT INTO Ligacao (IDArvore, IDSerNativo) VALUES (6, 48);
INSERT INTO Ligacao (IDArvore, IDSerNativo) VALUES (6, 49);
INSERT INTO Ligacao (IDArvore, IDSerNativo) VALUES (9, 50);

-- Arvore Lar
INSERT INTO ArvoreLar (ID, QtdHabitantes, Idade, Altura) VALUES (31, 150, 120, 35.50);
INSERT INTO ArvoreLar (ID, QtdHabitantes, Idade, Altura) VALUES (32, 200, 140, 42.80);
INSERT INTO ArvoreLar (ID, QtdHabitantes, Idade, Altura) VALUES (33, 175, 130, 38.90);
INSERT INTO ArvoreLar (ID, QtdHabitantes, Idade, Altura) VALUES (34, 220, 160, 45.20);
INSERT INTO ArvoreLar (ID, QtdHabitantes, Idade, Altura) VALUES (35, 180, 125, 37.75);
INSERT INTO ArvoreLar (ID, QtdHabitantes, Idade, Altura) VALUES (36, 190, 135, 40.60);
INSERT INTO ArvoreLar (ID, QtdHabitantes, Idade, Altura) VALUES (37, 210, 150, 44.10);
INSERT INTO ArvoreLar (ID, QtdHabitantes, Idade, Altura) VALUES (38, 160, 110, 36.30);
INSERT INTO ArvoreLar (ID, QtdHabitantes, Idade, Altura) VALUES (39, 230, 170, 47.50);
INSERT INTO ArvoreLar (ID, QtdHabitantes, Idade, Altura) VALUES (40, 165, 115, 39.80);

-- Arvore Vozes
INSERT INTO ArvoreVozes (ID, Localizacao) VALUES (11, '12.34-Norte, 123.45-Oeste');
INSERT INTO ArvoreVozes (ID, Localizacao) VALUES (12, '23.56-Sul, 101.34-Leste');
INSERT INTO ArvoreVozes (ID, Localizacao) VALUES (13, '34.78-Norte, 98.76-Oeste');
INSERT INTO ArvoreVozes (ID, Localizacao) VALUES (14, '45.67-Sul, 110.98-Leste');
INSERT INTO ArvoreVozes (ID, Localizacao) VALUES (15, '56.89-Norte, 87.65-Oeste');
INSERT INTO ArvoreVozes (ID, Localizacao) VALUES (16, '67.45-Sul, 102.34-Leste');
INSERT INTO ArvoreVozes (ID, Localizacao) VALUES (17, '78.34-Norte, 99.01-Oeste');
INSERT INTO ArvoreVozes (ID, Localizacao) VALUES (18, '12.67-Sul, 103.56-Leste');
INSERT INTO ArvoreVozes (ID, Localizacao) VALUES (19, '23.45-Norte, 76.89-Oeste');
INSERT INTO ArvoreVozes (ID, Localizacao) VALUES (20, '34.56-Sul, 109.23-Leste');

-- Cla
INSERT INTO Cla (ID, Nome, QtdMembros, ArvoreLar) VALUES (1, 'Tarakona', 120, 31);
INSERT INTO Cla (ID, Nome, QtdMembros, ArvoreLar) VALUES (2, 'Ikran', 140, 32);
INSERT INTO Cla (ID, Nome, QtdMembros, ArvoreLar) VALUES (3, 'Pa’li', 130, 33);
INSERT INTO Cla (ID, Nome, QtdMembros, ArvoreLar) VALUES (4, 'Omatikaya', 160, 34);
INSERT INTO Cla (ID, Nome, QtdMembros, ArvoreLar) VALUES (5, 'Anurai', 125, 35);
INSERT INTO Cla (ID, Nome, QtdMembros, ArvoreLar) VALUES (6, 'Tawkami', 135, 36);
INSERT INTO Cla (ID, Nome, QtdMembros, ArvoreLar) VALUES (7, 'Tipani', 150, 37);
INSERT INTO Cla (ID, Nome, QtdMembros, ArvoreLar) VALUES (8, 'Kekunan', 110, 38);
INSERT INTO Cla (ID, Nome, QtdMembros, ArvoreLar) VALUES (9, 'Li’ona', 170, 39);
INSERT INTO Cla (ID, Nome, QtdMembros, ArvoreLar) VALUES (10, 'Metkayina', 115, 40);

-- Navi
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (41, 'Neytiri', 'Azul', 3.20, 10);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (42, 'Jake Sully', 'Verde', 3.15, 15);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (43, 'Tsu’tey', 'Azul', 3.25, 12);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (44, 'Mo’at', 'Verde', 3.30, 8);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (45, 'Dr. Max Patel', 'Azul', 3.35, 20);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (46, 'Neytiri’s Mother', 'Verde', 3.40, 5);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (47, 'Neteyam', 'Azul', 3.45, 10);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (48, 'Lo’ak', 'Verde', 3.50, 15);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (49, 'Kiri', 'Azul', 3.55, 12);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (50, 'Sully', 'Verde', 3.60, 18);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (51, 'Tsu’tey’s Brother', 'Azul', 3.65, 6);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (52, 'Ronal', 'Verde', 3.70, 16);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (53, 'Tse’tey', 'Azul', 3.75, 11);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (54, 'Yue', 'Verde', 3.80, 9);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (55, 'Rok', 'Azul', 3.85, 14);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (56, 'Zuri', 'Verde', 3.90, 7);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (57, 'Kuyat', 'Azul', 3.95, 13);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (58, 'Tano', 'Verde', 4.00, 19);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (59, 'Utram', 'Azul', 4.05, 17);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (60, 'Naya', 'Verde', 4.10, 10);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (61, 'Zareh', 'Azul', 4.15, 15);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (62, 'Fayla', 'Verde', 4.20, 12);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (63, 'Khadir', 'Azul', 4.25, 8);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (64, 'Thyra', 'Verde', 4.30, 14);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (65, 'Lir', 'Azul', 4.35, 11);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (66, 'Eira', 'Verde', 4.40, 9);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (67, 'Rhaegon', 'Azul', 4.45, 16);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (68, 'Seyra', 'Verde', 4.50, 13);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (151, 'Talona', 'Azul', 3.10, 7);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (152, 'Veyra', 'Verde', 3.15, 10);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (153, 'Xenith', 'Azul', 3.20, 5);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (154, 'Yasira', 'Verde', 3.25, 12);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (155, 'Zethra', 'Azul', 3.30, 9);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (156, 'Alyndra', 'Verde', 3.35, 6);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (157, 'Drenai', 'Azul', 3.40, 15);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (158, 'Rhyne', 'Verde', 3.45, 8);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (159, 'Kahlia', 'Azul', 3.50, 14);
INSERT INTO Navi (ID, Nome, TomPele, Altura, QtdBioluminescentes) VALUES (160, 'Saelon', 'Verde', 3.55, 11);

-- Pertence Cla
INSERT INTO PertenceCla (IDCla, IDNavi, Funcao) VALUES (1, 41, 'Guerreiro');
INSERT INTO PertenceCla (IDCla, IDNavi, Funcao) VALUES (1, 42, 'Explorador');
INSERT INTO PertenceCla (IDCla, IDNavi, Funcao) VALUES (1, 43, 'Curandeiro');
INSERT INTO PertenceCla (IDCla, IDNavi, Funcao) VALUES (1, 44, 'Arqueiro');
INSERT INTO PertenceCla (IDCla, IDNavi, Funcao) VALUES (1, 45, 'Sabotador');
INSERT INTO PertenceCla (IDCla, IDNavi, Funcao) VALUES (2, 46, 'Guardião');
INSERT INTO PertenceCla (IDCla, IDNavi, Funcao) VALUES (2, 47, 'Mestre de Armas');
INSERT INTO PertenceCla (IDCla, IDNavi, Funcao) VALUES (3, 48, 'Batedor');
INSERT INTO PertenceCla (IDCla, IDNavi, Funcao) VALUES (3, 49, 'Xamã');
INSERT INTO PertenceCla (IDCla, IDNavi, Funcao) VALUES (3, 50, 'Mensageiro');
INSERT INTO PertenceCla (IDCla, IDNavi, Funcao) VALUES (5, 51, 'Líder');
INSERT INTO PertenceCla (IDCla, IDNavi, Funcao) VALUES (6, 52, 'Assassino');
INSERT INTO PertenceCla (IDCla, IDNavi, Funcao) VALUES (8, 53, 'Defensor');
INSERT INTO PertenceCla (IDCla, IDNavi, Funcao) VALUES (8, 54, 'Inventor');
INSERT INTO PertenceCla (IDCla, IDNavi, Funcao) VALUES (9, 55, 'Curador');

-- Ancestral
INSERT INTO Ancestral (IDNavi, IDArvoreVozes, IDAntepassado, DataConexao) VALUES (51, 11, 151, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO Ancestral (IDNavi, IDArvoreVozes, IDAntepassado, DataConexao) VALUES (52, 12, 152, TO_DATE('2023-01-02', 'YYYY-MM-DD'));
INSERT INTO Ancestral (IDNavi, IDArvoreVozes, IDAntepassado, DataConexao) VALUES (53, 13, 153, TO_DATE('2023-01-03', 'YYYY-MM-DD'));
INSERT INTO Ancestral (IDNavi, IDArvoreVozes, IDAntepassado, DataConexao) VALUES (54, 13, 154, TO_DATE('2023-01-04', 'YYYY-MM-DD'));
INSERT INTO Ancestral (IDNavi, IDArvoreVozes, IDAntepassado, DataConexao) VALUES (55, 13, 155, TO_DATE('2023-01-05', 'YYYY-MM-DD'));
INSERT INTO Ancestral (IDNavi, IDArvoreVozes, IDAntepassado, DataConexao) VALUES (56, 16, 156, TO_DATE('2023-01-06', 'YYYY-MM-DD'));
INSERT INTO Ancestral (IDNavi, IDArvoreVozes, IDAntepassado, DataConexao) VALUES (57, 17, 157, TO_DATE('2023-01-07', 'YYYY-MM-DD'));
INSERT INTO Ancestral (IDNavi, IDArvoreVozes, IDAntepassado, DataConexao) VALUES (58, 17, 158, TO_DATE('2023-01-08', 'YYYY-MM-DD'));
INSERT INTO Ancestral (IDNavi, IDArvoreVozes, IDAntepassado, DataConexao) VALUES (59, 17, 159, TO_DATE('2023-01-09', 'YYYY-MM-DD'));
INSERT INTO Ancestral (IDNavi, IDArvoreVozes, IDAntepassado, DataConexao) VALUES (60, 19, 160, TO_DATE('2023-01-10', 'YYYY-MM-DD'));

-- Avatar
INSERT INTO Avatar (ID, Idade, IDHumano, IDNavi, IDPesquisa) VALUES (1, 25, 41, 50, 1);
INSERT INTO Avatar (ID, Idade, IDHumano, IDNavi, IDPesquisa) VALUES (2, 30, 42, 52, 2);
INSERT INTO Avatar (ID, Idade, IDHumano, IDNavi, IDPesquisa) VALUES (3, 28, 43, 53, 3);
INSERT INTO Avatar (ID, Idade, IDHumano, IDNavi, IDPesquisa) VALUES (4, 22, 44, 54, 4);
INSERT INTO Avatar (ID, Idade, IDHumano, IDNavi, IDPesquisa) VALUES (5, 27, 45, 55, 5);
INSERT INTO Avatar (ID, Idade, IDHumano, IDNavi, IDPesquisa) VALUES (6, 29, 46, 56, 6);
INSERT INTO Avatar (ID, Idade, IDHumano, IDNavi, IDPesquisa) VALUES (7, 24, 47, 57, 7);
INSERT INTO Avatar (ID, Idade, IDHumano, IDNavi, IDPesquisa) VALUES (8, 21, 48, 58, 8);
INSERT INTO Avatar (ID, Idade, IDHumano, IDNavi, IDPesquisa) VALUES (9, 32, 49, 59, 9);
INSERT INTO Avatar (ID, Idade, IDHumano, IDNavi, IDPesquisa) VALUES (10, 26, 50, 60, 10);


