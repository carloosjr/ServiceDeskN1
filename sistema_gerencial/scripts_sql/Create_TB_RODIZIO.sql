CREATE TABLE TB_RODIZIOS(
    IdRodizio INT IDENTITY(1,1) PRIMARY KEY,
    Tema NVARCHAR(255),
    Responsavel NVARCHAR(50),
    Duracao TIME,
    Observacao NVARCHAR(255),
    IdColaborador INT,
    FOREIGN KEY (IdColaborador) REFERENCES TB_COLABORADOR(IdColaborador)
);