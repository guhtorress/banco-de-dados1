CREATE TABLE FARMACIA 
( 
    idFARMACIA INT PRIMARY KEY,  
    tel_farmacia VARCHAR(15),  
    nome_farmacia VARCHAR(100),  
    end_farmacia VARCHAR(255),  
    CNPJ_farmacia CHAR(14) UNIQUE 
); 

CREATE TABLE PRODUTO 
( 
    cod_produto INT PRIMARY KEY,  
    qtd_produto INT NOT NULL,  
    valor_produto DECIMAL(10, 2) NOT NULL,  
    idFARMACIA INT NOT NULL,  
    FOREIGN KEY (idFARMACIA) REFERENCES FARMACIA (idFARMACIA)
); 

CREATE TABLE FARMACEUTICO 
( 
    RG_farmaceutico CHAR(9) PRIMARY KEY,  
    nome_farmaceutico VARCHAR(100) NOT NULL,  
    idFARMACIA INT NOT NULL,  
    FOREIGN KEY (idFARMACIA) REFERENCES FARMACIA (idFARMACIA)
);
