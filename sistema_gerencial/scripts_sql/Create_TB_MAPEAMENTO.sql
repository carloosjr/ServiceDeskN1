CREATE TABLE TB_MAPEAMENTO(
    IdMapeamento INT PRIMARY KEY IDENTITY(1,1),
    Descricao NVARCHAR(100),
    IdSetor INT,
    IdColaborador1 INT,
    IdColaborador2 INT,
    IdHorario1 INT,
    IdHorario2 INT,
    CONSTRAINT fk_EscSetor FOREIGN KEY (IdSetor) REFERENCES TB_SETOR(IdSetor),
    CONSTRAINT fk_EscColaborador1 FOREIGN KEY (IdColaborador1) REFERENCES TB_COLABORADOR(IdColaborador),
    CONSTRAINT fk_EscColaborador2 FOREIGN KEY (IdColaborador2) REFERENCES TB_COLABORADOR(IdColaborador),
    CONSTRAINT fk_EscHorario1 FOREIGN KEY (IdHorario1) REFERENCES TB_HORARIOS(IdHorario),
    CONSTRAINT fk_EscHorario2 FOREIGN KEY (IdHorario2) REFERENCES TB_HORARIOS(IdHorario)
)