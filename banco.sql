CREATE TABLE Vaga (
    Entrada INT,
    Local INT,
    Saida INT,
    Numero INT PRIMARY KEY
);

CREATE TABLE Cliente (
    CPF CHAR(11) PRIMARY KEY, -- CPF geralmente tem 11 dígitos, pode ser tratado como string
    Nome VARCHAR(100),       -- Nome deve ser texto
    Telefone VARCHAR(15)     -- Para suportar formatos variados de telefone
);

CREATE TABLE Carro (
    Placa VARCHAR(10) PRIMARY KEY, -- Placas geralmente são alfanuméricas
    Cor VARCHAR(20),              -- Cor como texto
    Modelo VARCHAR(50)            -- Modelo do carro como texto
);

CREATE TABLE Rel (
    Numero INT,
    CPF CHAR(11),
    PRIMARY KEY (Numero, CPF), -- Combinação de colunas como chave primária
    FOREIGN KEY (Numero) REFERENCES Vaga(Numero),
    FOREIGN KEY (CPF) REFERENCES Cliente(CPF)
);

CREATE TABLE Rel1 (
    CPF CHAR(11),
    Placa VARCHAR(10),
    PRIMARY KEY (CPF, Placa), -- Combinação de colunas como chave primária
    FOREIGN KEY (CPF) REFERENCES Cliente(CPF),
    FOREIGN KEY (Placa) REFERENCES Carro(Placa)
);
