CREATE TABLE TB_CONTROLEHORAS(
    IdControleHoras INT IDENTITY(1,1) PRIMARY KEY,
    BancoDeHorasAtual DECIMAL(5,2) DEFAULT 0,
    IdColaborador INT,
    Dia1 DECIMAL(5, 2) DEFAULT 0,
    Dia2 DECIMAL(5, 2) DEFAULT 0,
    Dia3 DECIMAL(5, 2) DEFAULT 0,
    Dia4 DECIMAL(5, 2) DEFAULT 0,
    Dia5 DECIMAL(5, 2) DEFAULT 0,
    Dia6 DECIMAL(5, 2) DEFAULT 0,
    Dia7 DECIMAL(5, 2) DEFAULT 0,
    Dia8 DECIMAL(5, 2) DEFAULT 0,
    Dia9 DECIMAL(5, 2) DEFAULT 0,
    Dia10 DECIMAL(5, 2) DEFAULT 0,
    Dia11 DECIMAL(5, 2) DEFAULT 0,
    Dia12 DECIMAL(5, 2) DEFAULT 0,
    Dia13 DECIMAL(5, 2) DEFAULT 0,
    Dia14 DECIMAL(5, 2) DEFAULT 0,
    Dia15 DECIMAL(5, 2) DEFAULT 0,
    Dia16 DECIMAL(5, 2) DEFAULT 0,
    Dia17 DECIMAL(5, 2) DEFAULT 0,
    Dia18 DECIMAL(5, 2) DEFAULT 0,
    Dia19 DECIMAL(5, 2) DEFAULT 0,
    Dia20 DECIMAL(5, 2) DEFAULT 0,
    Dia21 DECIMAL(5, 2) DEFAULT 0,
    Dia22 DECIMAL(5, 2) DEFAULT 0,
    Dia23 DECIMAL(5, 2) DEFAULT 0,
    Dia24 DECIMAL(5, 2) DEFAULT 0,
    Dia25 DECIMAL(5, 2) DEFAULT 0,
    Dia26 DECIMAL(5, 2) DEFAULT 0,
    Dia27 DECIMAL(5, 2) DEFAULT 0,
    Dia28 DECIMAL(5, 2) DEFAULT 0,
    Dia29 DECIMAL(5, 2) DEFAULT 0,
    Dia30 DECIMAL(5, 2) DEFAULT 0,
    Dia31 DECIMAL(5, 2) DEFAULT 0,
    TotalHeAbatidas AS (
        Dia1 + Dia2 + Dia3 + Dia4 + Dia5 + Dia6 + Dia7 + Dia8 + Dia9 + Dia10 +
        Dia11 + Dia12 + Dia13 + Dia14 + Dia15 + Dia16 + Dia17 + Dia18 + Dia19 +
        Dia20 + Dia21 + Dia22 + Dia23 + Dia24 + Dia25 + Dia26 + Dia27 + Dia28 +
        Dia29 + Dia30 + Dia31
    ),
    SaldoHE AS (BancoDeHorasAtual - (Dia1 + Dia2 + Dia3 + Dia4 + Dia5 + Dia6 + Dia7 + Dia8 + Dia9 + Dia10 +
        Dia11 + Dia12 + Dia13 + Dia14 + Dia15 + Dia16 + Dia17 + Dia18 + Dia19 +
        Dia20 + Dia21 + Dia22 + Dia23 + Dia24 + Dia25 + Dia26 + Dia27 + Dia28 +
        Dia29 + Dia30 + Dia31)),
    FOREIGN KEY (IdColaborador) REFERENCES TB_COLABORADOR(IdColaborador)
);