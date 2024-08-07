CREATE TABLE TB_INDICADORES(
    IdIndicador INT IDENTITY(1,1) PRIMARY KEY,
    IdColaborador INT,
    ValorPadrao MONEY,
    IndicadorAlcancado BIT,
    ValorPlus MONEY,
    Total MONEY,
    ChavePIX NVARCHAR(255),
    Pago BIT,
)