CREATE TABLE TB_ESCALAS(
    IdEscala INT IDENTITY(1,1) PRIMARY KEY,
    IdPessoaGestao1 INT,
    IdPessoaGestao2 INT,
    IdPessoaGestaoPlantao1 INT,
    IdPessoaGestaoPlantao2 INT,
    IdSetor1 INT,
    IdSetor2 INT, 
    IdSetor3 INT, 
    IdSetorPlantaoLinha INT, 
    IdSetorPlantaoBlip INT,
    IdAtendimentoEspecifico INT,
    IdPessoaAbertura INT,
    IdPessoaFechamento INT,
    IdTreinamento INT,
    Aviso NVARCHAR(255),

    CONSTRAINT fk_EscPessoaGestao1 FOREIGN KEY (IdPessoaGestao1) REFERENCES TB_COLABORADOR (IdColaborador),
    CONSTRAINT fk_EscPessoaGestao2 FOREIGN KEY (IdPessoaGestao2) REFERENCES TB_COLABORADOR (IdColaborador),
    CONSTRAINT fk_EscPessoaGestaoPlantao1 FOREIGN KEY (IdPessoaGestaoPlantao1) REFERENCES TB_COLABORADOR (IdColaborador),
    CONSTRAINT fk_EscPessoaGestaoPlantao2 FOREIGN KEY (IdPessoaGestaoPlantao2) REFERENCES TB_COLABORADOR (IdColaborador),
    CONSTRAINT fk_EscSetor1 FOREIGN KEY (IdSetor1) REFERENCES TB_SETOR (IdSetor),
    CONSTRAINT fk_EscSetor2 FOREIGN KEY (IdSetor2) REFERENCES TB_SETOR (IdSetor),
    CONSTRAINT fk_EscSetor3 FOREIGN KEY (IdSetor3) REFERENCES TB_SETOR (IdSetor),
    CONSTRAINT fk_EscSetorPlantaoLinha FOREIGN KEY (IdSetorPlantaoLinha) REFERENCES TB_SETOR (IdSetor),
    CONSTRAINT fk_EscSetorPlantaoBlip FOREIGN KEY (IdSetorPlantaoBlip) REFERENCES TB_SETOR (IdSetor),
    CONSTRAINT fk_EscAtendimentoEspecifico FOREIGN KEY (IdAtendimentoEspecifico) REFERENCES TB_ATENDIMENTO_ESPECIFICO (IdAtendimentoEspecifico),
    CONSTRAINT fk_EscPessoaAbertura FOREIGN KEY (IdPessoaAbertura) REFERENCES TB_COLABORADOR (IdColaborador),
    CONSTRAINT fk_EscPessoaFechamento FOREIGN KEY (IdPessoaFechamento) REFERENCES TB_COLABORADOR (IdColaborador),
    CONSTRAINT fk_EscTreinamento FOREIGN KEY (IdTreinamento) REFERENCES TB_TREINAMENTO (IdTreinamento)
)