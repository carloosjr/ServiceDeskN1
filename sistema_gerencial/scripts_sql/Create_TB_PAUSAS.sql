CREATE TABLE TB_PAUSAS(
    IdPausa INT IDENTITY(1,1) PRIMARY KEY,
    PrimeiraPausa10 BIT,
    Pausa20 BIT, 
    SegundaPausa10 BIT,
    PausaHe BIT,
    IdSetor INT, 
    IdColaborador INT,

    FOREIGN KEY (IdSetor) REFERENCES TB_SETOR(IdSetor),
    FOREIGN KEY (IdColaborador) REFERENCES TB_COLABORADOR(IdColaborador)
);