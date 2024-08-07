CREATE TABLE TB_TASKS(
    IdTask INT IDENTITY(1,1) PRIMARY KEY,
    Descricao NVARCHAR(225),
    DataConclusao DATE,
    Projeto NVARCHAR(255),
    Responsavel NVARCHAR(50),
    Prioridade VARCHAR(10) CHECK (Prioridade IN ('Alto', 'Médio', 'Baixo'))
);