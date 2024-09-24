-- Criação das Tabelas do BD

CREATE TABLE Empresa(
    Licenca varchar2(6) NOT NULL PRIMARY KEY,
    NumColonias number(4)
);

CREATE TABLE Regiao(
    ID number NOT NULL PRIMARY KEY,
    Area number(*, 2),
    Topografia varchar2(50)
    CHECK (Topografia IN ('Montanha','Vale','Planicie', 'Outro'))
);

CREATE TABLE Jazida(
    Latitude varchar2(11) NOT NULL,
    Longitude varchar2(12) NOT NULL,
    Nome varchar2(70) NOT NULL,
    Base number(*, 2),
    Altura number(*, 2),
    IDRegiao number NOT NULL,
    CONSTRAINT PK_Jazida PRIMARY KEY (Latitude, Longitude),
    CONSTRAINT FK_Jazida_Regiao FOREIGN KEY (IDRegiao) REFERENCES Regiao(ID)
);

CREATE TABLE Colonia(
    ID number NOT NULL,
    Pressurizada number(1),
    Empresa varchar2(6) NOT NULL,
    JazidaLatitude varchar2(11),
    JazidaLongitude varchar2(12),
    CONSTRAINT PK_Colonia PRIMARY KEY (ID),
    CONSTRAINT FK_Colonia_Empresa FOREIGN KEY (Empresa) REFERENCES Empresa(Licenca),
    CONSTRAINT FK_Colonia_Jazida FOREIGN KEY (JazidaLatitude, JazidaLongitude) REFERENCES Jazida(Latitude, Longitude) ON DELETE SET NULL,
    CHECK (Pressurizada IN (0, 1))
);

CREATE TABLE Caminhao(
    NumFabrica varchar2(5) NOT NULL PRIMARY KEY,
    PesoOperacional number,
    Potencia number,
    CapacidadeCacamba number(*,2)
);

CREATE TABLE Escavadeira(
    NumFabrica varchar2(5) NOT NULL PRIMARY KEY,
    PesoOperacional number,
    Potencia number,
    CapacidadePa number(*,2)
);

CREATE TABLE ExploracaoCaminhao(
    JazidaLatitude varchar2(11) NOT NULL,
    JazidaLongitude varchar2(12) NOT NULL,
    IDCaminhao varchar2(5) NOT NULL,
    CONSTRAINT PK_ExploracaoCaminhao PRIMARY KEY (JazidaLatitude, JazidaLongitude, IDCaminhao),
    CONSTRAINT FK_ExploracaoCaminhao_Jazida FOREIGN KEY (JazidaLatitude, JazidaLongitude) REFERENCES Jazida(Latitude, Longitude)
    ON DELETE CASCADE,
    CONSTRAINT FK_ExploracaoCaminhao_Caminhao FOREIGN KEY (IDCaminhao) REFERENCES Caminhao(NumFabrica)
);

CREATE TABLE ExploracaoEscavadeira(
    JazidaLatitude varchar2(11) NOT NULL,
    JazidaLongitude varchar2(12) NOT NULL,
    IDEscavadeira varchar2(5) NOT NULL,
    CONSTRAINT PK_ExploracaoEscavadeira PRIMARY KEY (JazidaLatitude, JazidaLongitude, IDEscavadeira),
    CONSTRAINT FK_ExploracaoEscavadeira_Jazida FOREIGN KEY (JazidaLatitude, JazidaLongitude) REFERENCES Jazida(Latitude, Longitude)
    ON DELETE CASCADE,
    CONSTRAINT FK_ExploracaoEscavadeira_Escavadeira FOREIGN KEY (IDEscavadeira) REFERENCES Escavadeira(NumFabrica)
);

CREATE TABLE Humano(
    ID number NOT NULL PRIMARY KEY,
    Nome varchar2(100) NOT NULL,
    Genero char(1),
    Salario number(*, 2),
    CHECK (Genero IN ('M', 'F')),
    IDColonia number,
    Cargo varchar2(50),
    CHECK (Cargo IN ('Militar', 'Cientista', 'Minerador', 'Outro')),
    CONSTRAINT FK_Humano_Colonia FOREIGN KEY (IDColonia) REFERENCES Colonia(ID)
);

CREATE SEQUENCE seq_humano_id
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE OR REPLACE TRIGGER trg_humano_id
BEFORE INSERT ON Humano
FOR EACH ROW
BEGIN
    :NEW.ID := seq_humano_id.NEXTVAL;
END;
/

CREATE TABLE Militar(
    ID number NOT NULL PRIMARY KEY,
    Patente varchar2(100),
    CONSTRAINT FK_Militar_Humano FOREIGN KEY (ID) REFERENCES Humano(ID) 
    ON DELETE CASCADE
);

CREATE TABLE Cientista(
    ID number NOT NULL PRIMARY KEY,
    AreaAtuacao varchar2(100),
    CONSTRAINT FK_Cientista_Humano FOREIGN KEY (ID) REFERENCES Humano(ID) 
    ON DELETE CASCADE
);

CREATE TABLE Minerador(
    ID number NOT NULL PRIMARY KEY,
    Especialidade varchar2(100),
    CONSTRAINT FK_Minerador_Humano FOREIGN KEY (ID) REFERENCES Humano(ID) 
    ON DELETE CASCADE
);

CREATE TABLE ContResidencia(
    Sigla varchar2(6) NOT NULL PRIMARY KEY,
    Nome varchar2(50),
    QtdCamas number(2),
    QtdBanheiros number(2),
    IDColonia number NOT NULL,
    CONSTRAINT FK_ContResidencia_Colonia FOREIGN KEY (IDColonia) REFERENCES Colonia(ID)
);

CREATE TABLE ContDeposito(
    Sigla varchar2(6) NOT NULL PRIMARY KEY,
    Nome varchar2(50),
    TipoDeposito varchar2(25),
    IDColonia number NOT NULL,
    CONSTRAINT FK_ContDeposito_Colonia FOREIGN KEY (IDColonia) REFERENCES Colonia(ID)
);

CREATE TABLE ContLaboratorio(
    Sigla varchar2(6) NOT NULL PRIMARY KEY,
    Nome varchar2(50),
    Finalidade varchar2(250),
    IDColonia number NOT NULL,
    CONSTRAINT FK_ContLaboratorio_Colonia FOREIGN KEY (IDColonia) REFERENCES Colonia(ID)
);

CREATE TABLE Pesquisa(
    ID number NOT NULL,
    IDLab varchar2(6) NOT NULL,
    IDCientista number NOT NULL,
    Nome varchar2(70),
    CONSTRAINT PK_Pesquisa PRIMARY KEY (ID),
    CONSTRAINT FK_Pesquisa_ContLaboratorio FOREIGN KEY (IDLab) REFERENCES ContLaboratorio(Sigla),
    CONSTRAINT FK_Pesquisa_Cientista FOREIGN KEY (IDCientista) REFERENCES Cientista(ID) 
    ON DELETE CASCADE
);

CREATE TABLE Equipamento(
    NumSerie varchar2(5) NOT NULL PRIMARY KEY,
    Nome varchar2(70),
    Utilidade varchar2(150),
    ConsumoEnergia number(*, 2)
);

CREATE TABLE Utilizacao(
    IDPesquisa number NOT NULL,
    NumSerie varchar2(5) NOT NULL,
    CONSTRAINT PK_Utilizacao PRIMARY KEY (IDPesquisa, NumSerie),
    CONSTRAINT FK_Utilizacao_Pesquisa FOREIGN KEY (IDPesquisa) REFERENCES Pesquisa(ID) ON DELETE CASCADE,
    CONSTRAINT FK_Utilizacao_Equipamento FOREIGN KEY (NumSerie) REFERENCES Equipamento(NumSerie)
);

CREATE TABLE SerNativo(
    ID number NOT NULL PRIMARY KEY
);

CREATE TABLE ConexaoNeural(
    IDPrimeiroSer number NOT NULL,
    IDSegundoSer number NOT NULL,
    CONSTRAINT PK_ConexaoNeural PRIMARY KEY (IDPrimeiroSer, IDSegundoSer),
    CONSTRAINT FK_ConexaoNeural_SerNativo1 FOREIGN KEY (IDPrimeiroSer) REFERENCES SerNativo(ID),
    CONSTRAINT FK_ConexaoNeural_SerNativo2 FOREIGN KEY (IDSegundoSer) REFERENCES SerNativo(ID)
);

CREATE TABLE Arvore(
    ID number NOT NULL PRIMARY KEY,
    Papel varchar2(100),
    Regiao number NOT NULL,
    CONSTRAINT FK_Arvore_Regiao FOREIGN KEY (Regiao) REFERENCES Regiao(ID)
);

CREATE TABLE Montanha(
   ID number NOT NULL PRIMARY KEY,
   Movimentacao number(1),
   Altura number(*, 2),
   CONSTRAINT FK_Montanha_Regiao FOREIGN KEY (ID) REFERENCES Regiao(ID),
   CHECK (Movimentacao IN (0, 1))
);

CREATE TABLE Planicie(
    ID number NOT NULL PRIMARY KEY,
    Flora varchar2(250),
    BiomaAquatico number(1),
    CONSTRAINT FK_Planicie_Regiao FOREIGN KEY (ID) REFERENCES Regiao(ID),
    CHECK (BiomaAquatico IN (0, 1))
);

CREATE TABLE Vale(
    ID number NOT NULL PRIMARY KEY,
    Profundidademax number(*, 2),
    VolumeAgua number(*, 2),
    CONSTRAINT FK_Vale_Regiao FOREIGN KEY (ID) REFERENCES Regiao(ID)
);

CREATE TABLE Banshee(
    ID number NOT NULL PRIMARY KEY,
    AlturaMaxVoo number(*, 2),
    CorPredominante varchar2(50),
    IDMontanha number NOT NULL,
    CONSTRAINT FK_Banshee_SerNativo FOREIGN KEY (ID) REFERENCES SerNativo(ID),
    CONSTRAINT FK_Banshee_Montanha FOREIGN KEY (IDMontanha) REFERENCES Montanha(ID)
);

CREATE TABLE Direhorse(
    ID number NOT NULL PRIMARY KEY,
    Tamanho number(*, 2),
    IDPlanicie number NOT NULL,
    CONSTRAINT FK_Direhorse_SerNativo FOREIGN KEY (ID) REFERENCES SerNativo(ID),
    CONSTRAINT FK_Direhorse_Planicie FOREIGN KEY (IDPlanicie) REFERENCES Planicie(ID)
);

CREATE TABLE Thanator(
    ID number NOT NULL PRIMARY KEY,
    Forca number(*, 2),
    Velocidade number(*, 2),
    IDVale number NOT NULL,
    CONSTRAINT FK_Thanator_SerNativo FOREIGN KEY (ID) REFERENCES SerNativo(ID),
    CONSTRAINT FK_Thanator_Vale FOREIGN KEY (IDVale) REFERENCES Vale(ID)
);

CREATE TABLE Leonopteryx(
    ID number NOT NULL PRIMARY KEY,
    Envergadura number(*, 2),
    IDVale number NOT NULL,
    CONSTRAINT FK_Leonopteryx_SerNativo FOREIGN KEY (ID) REFERENCES SerNativo(ID),
    CONSTRAINT FK_Leonopteryx_Vale FOREIGN KEY (IDVale) REFERENCES Vale(ID)
);

CREATE TABLE ArvoreControle(
    ID number NOT NULL PRIMARY KEY,
    Tipo varchar2(10),
    CONSTRAINT FK_ArvoreControle_Arvore FOREIGN KEY (ID) REFERENCES Arvore(ID),
    CHECK (Tipo IN ('Lar', 'Vida', 'Vozes', 'Alma', 'Comum'))
);

CREATE TABLE ArvoreVida(
    ID number NOT NULL PRIMARY KEY,
    QtdSementes number,
    CONSTRAINT FK_ArvoreVida_Arvore FOREIGN KEY (ID) REFERENCES Arvore(ID)
);

CREATE TABLE ArvoreAlma(
    ID number NOT NULL PRIMARY KEY,
    Localizacao varchar2(100),
    IntensidadeLuz number(*, 2),
    CONSTRAINT FK_ArvoreAlma_Arvore FOREIGN KEY (ID) REFERENCES Arvore(ID)
);

CREATE TABLE Ligacao(
    IDArvore number NOT NULL,
    IDSerNativo number NOT NULL,
    CONSTRAINT PK_Ligacao PRIMARY KEY (IDArvore, IDSerNativo),
    CONSTRAINT FK_Ligacao_ArvoreAlma FOREIGN KEY (IDArvore) REFERENCES ArvoreAlma(ID),
    CONSTRAINT FK_Ligacao_SerNativo FOREIGN KEY (IDSerNativo) REFERENCES SerNativo(ID)
);

CREATE TABLE ArvoreLar(
    ID number NOT NULL PRIMARY KEY,
    QtdHabitantes number,
    Idade number,
    Altura number(*, 2),
    CONSTRAINT FK_ArvoreLar_Arvore FOREIGN KEY (ID) REFERENCES Arvore(ID)
);

CREATE TABLE ArvoreVozes(
    ID number NOT NULL PRIMARY KEY,
    Localizacao varchar2(100),
    CONSTRAINT FK_ArvoreVozes_Arvore FOREIGN KEY (ID) REFERENCES Arvore(ID)
);

CREATE TABLE Cla(
    ID number NOT NULL PRIMARY KEY,
    Nome varchar2(50),
    QtdMembros number,
    ArvoreLar number,
    CONSTRAINT FK_Cla_ArvoreLar FOREIGN KEY (ArvoreLar) REFERENCES ArvoreLar(ID)
);

CREATE TABLE Navi(
    ID number NOT NULL PRIMARY KEY,
    Nome varchar2(150),
    TomPele varchar2(50),
    Altura number(*, 2),
    QtdBioluminescentes number,
    CONSTRAINT FK_Navi_SerNativo FOREIGN KEY (ID) REFERENCES SerNativo(ID)
);

CREATE TABLE PertenceCla(
    IDCla number NOT NULL,
    IDNavi number NOT NULL,
    Funcao varchar2(100),
    CONSTRAINT PK_PertenceCla PRIMARY KEY (IDCla, IDNavi),
    CONSTRAINT FK_PertenceCla_Cla FOREIGN KEY (IDCla) REFERENCES Cla(ID),
    CONSTRAINT FK_PertenceCla_Navi FOREIGN KEY (IDNavi) REFERENCES Navi(ID)
);

CREATE TABLE Ancestral(
    IDNavi number NOT NULL,
    IDArvoreVozes number NOT NULL,
    IDAntepassado number NOT NULL,
    DataConexao date,
    CONSTRAINT PK_Ancestral PRIMARY KEY (IDNavi, IDArvoreVozes, IDAntepassado, DataConexao),
    CONSTRAINT FK_Ancestral_Navi FOREIGN KEY (IDNavi) REFERENCES Navi(ID),
    CONSTRAINT FK_Ancestral_ArvoreVozes FOREIGN KEY (IDArvoreVozes) REFERENCES ArvoreVozes(ID),
    CONSTRAINT FK_Ancestral_NaviAnc FOREIGN KEY (IDAntepassado) REFERENCES Navi(ID)
);

CREATE TABLE Avatar(
    ID number NOT NULL PRIMARY KEY,
    Idade number(3),
    IDHumano number NOT NULL,
    IDNavi number NOT NULL,
    IDPesquisa number NOT NULL,
    CONSTRAINT FK_Avatar_Humano FOREIGN KEY (IDHumano) REFERENCES Humano(ID) ON DELETE CASCADE,
    CONSTRAINT FK_Avatar_Navi FOREIGN KEY (IDNavi) REFERENCES Navi(ID) ON DELETE CASCADE,
    CONSTRAINT FK_Avatar_Pesquisa FOREIGN KEY (IDPesquisa) REFERENCES Pesquisa(ID) ON DELETE CASCADE
);
