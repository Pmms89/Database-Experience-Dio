-- Creating Database "Oficina":

-- DROP DATABASE Oficina;

CREATE DATABASE IF NOT EXISTS Oficina;
USE Oficina;

-- Customers table:
CREATE TABLE Clientes(
	idClientes INT auto_increment PRIMARY KEY,
    Nome VARCHAR(45) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Endereço VARCHAR(45),
    Contato CHAR(11),
    RazaoSocial VARCHAR(45),
    CNPJ CHAR(15),
    Pagamento ENUM('Cartao Credito', 'Cartao Debito', 'PIX', 'Boleto'),
    CONSTRAINT unique_cpf_PessoaFisica UNIQUE (CPF),
    CONSTRAINT unique_cnpj_PessoaJuridica UNIQUE (CNPJ)
);

DESC Clientes;

-- Cars table:
CREATE TABLE Veiculos(
	idVeiculos INT auto_increment,
    idPlaca CHAR(7) NOT NULL,
    Modelo VARCHAR(15),
    Ano DATE,
    Cambio ENUM('Manual', 'Automático'),
    Pneus INT,
    Freio VARCHAR(15),
    Combustivel_Capacidade Float,
    PRIMARY KEY(idVeiculos, idPlaca),
    CONSTRAINT placa_idVeiculo UNIQUE (idVeiculos, idPlaca),
    CONSTRAINT fk_cliente_veiculo FOREIGN KEY (idVeiculos) REFERENCES Clientes(idClientes)
);


DESC Veiculos;

-- Repair in the workshop table:
CREATE TABLE Conserto(
	idConserto INT auto_increment PRIMARY KEY,
    Descricao VARCHAR(45) NOT NULL
);

DESC Conserto;

-- Car maintenance in the workshop table:
CREATE TABLE Revisao(
	idRevisao INT auto_increment PRIMARY KEY,
    Descricao VARCHAR(45) NOT NULL
);

DESC Revisao;

-- Employees table
CREATE TABLE Funcionarios(
	idFuncionarios INT auto_increment PRIMARY KEY,
    Nome VARCHAR(45),
    Endereco VARCHAR(45),
    Especialidade VARCHAR(35)
);


-- Employees department group table:
CREATE TABLE FuncionariosGroup(
	idFuncionariosGroup INT auto_increment PRIMARY KEY,
    CONSTRAINT fk_funcionarios_group FOREIGN KEY (idFuncionariosGroup) REFERENCES Funcionarios(idFuncionarios)
);

DESC FuncionariosGroup;

-- Service order table:
CREATE TABLE OdServico(
	idOrdem_Servico INT auto_increment PRIMARY KEY,
    idCliente INT,
    Tipo_de_servico VARCHAR(40),
    Status ENUM('AGUARDANDO', 'EM ANDAMENTO', 'CONCLUIDO', 'CANCELADO'),
    DataEmissão DATE,
    Data_Prev_Conclusao DATE,
    Valor_Servico FLOAT NOT NULL,
    Valor_Peca FLOAT NOT NULL
);

DESC OdServico;

-- Client autorization table:
CREATE TABLE Autorizacao(
	idAutorizacao INT PRIMARY KEY,
	Autorizado BOOL DEFAULT FALSE,
    CONSTRAINT fk_autorizacao_cliente FOREIGN KEY (idAutorizacao) REFERENCES Clientes(idClientes),
    CONSTRAINT fk_autorizacao_veiculo FOREIGN KEY (idAutorizacao) REFERENCES Veiculos(idVeiculos),
    CONSTRAINT fk_autorização_OdServico FOREIGN KEY (idAutorizacao) REFERENCES OdServico(idOrdem_Servico)
);

DESC Autorizacao;

-- Car equipment value table:
CREATE TABLE Pecas(
	idPecas INT auto_increment PRIMARY KEY,
    Descricao VARCHAR(45),
    Valor FLOAT NOT NULL
);

DESC Pecas;

-- Employees service value:
CREATE TABLE Servicos(
	idServicos INT auto_increment PRIMARY KEY,
    Descricao VARCHAR(45),
    Valor FLOAT NOT NULL
);

DESC Servicos;

-- Bugdet o the total service table:
CREATE TABLE Orcamento(
	idOrcamento INT auto_increment PRIMARY KEY,
    CONSTRAINT fk_servicos_funcionarios FOREIGN KEY (idOrcamento) REFERENCES Servicos(idServicos),
    CONSTRAINT fk_os_servicos FOREIGN KEY (idOrcamento) REFERENCES OdServico(idOrdem_Servico)
);

DESC Orcamento;