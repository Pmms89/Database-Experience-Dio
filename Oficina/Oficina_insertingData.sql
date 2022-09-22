-- Inserting (persisting) data into Oficina Database:

USE Oficina;

INSERT INTO Clientes(Nome, CPF, Endereço, Contato, RazaoSocial, CNPJ, Pagamento)
	   VALUES('Antonio', 78531297453, 'R. Consolação, 802', 99999999999,NULL, NULL, 'Cartao Credito'),
             ('Rafael', 12345297453, 'R. Sem Fim, 1014', 99987654399, 'Casa das Racoes', 123456789987654, 'Cartao Credito'),
             ('Ricardo', 78531212345, 'R. Almirante Jazon, 444', 43999999876,'Pet Shop Amigo', 987654345673286, 'Cartao Debito'),
             ('Maria Clara', 78533322453, 'R. das Magnolias, 1002',65499912397, NULL, NULL, 'PIX');
             
INSERT INTO Veiculos(idPlaca,  Modelo, Ano, Cambio, Pneus, Freio, Combustivel_Capacidade)
	   VALUES('NBH4567', 'Fox', '01-01-20', 'Manual', 5, NULL, 50),
             ('ASK8944', 'Polo', '01-01-22', 'Manual', 5, NULL, 52),
             ('JBF2134', 'T-Cross', '01-01-22', 'Automatico', 5, NULL, 52),
             ('JHJ7563', 'Corolla', '01-01-21', 'Automatico', 5, NULL, 50);


INSERT INTO Funcionarios(Nome, Endereco, Especialidade)
	   VALUES('Roberto', 'Rua Donizete, 59', 'Eletricista'),
             ('Alice', 'Rua de Perto, 589', 'Qualquer reparo'),
             ('Alberto', 'Rua das Flores, 7', 'Funilaria'),
             ('Albieri', 'R. das Alagoas, 890', 'Borracharia');


INSERT INTO OdServico(idCliente, Tipo_de_servico, Status, DataEmissão, Data_Prev_Conclusao, Valor_Servico, Valor_Peca)
	   VALUES(1, 'Sistema de ar condicionado danificado', 'CONCLUIDO', '01-01-22', '10-01-22', 850.50, 250),
		     (2, 'Caixa de cambio quebrado', 'CANCELADO', '04-01-22', '15-01-22', 398.90, 98.50),
			 (3, 'Problemas eletricos','EM ANDAMENTO', '22-09-22', '28-09-22', 549.00, 50.00),
			 (4, 'Problemas no freio e eletricos','AGUARDANDO', '19-09-22', '29-09-22', 1000.00, 450.94);


INSERT INTO Autorizacao(idAutorizacao, Autorizado)
	   VALUES(1, TRUE),
			 (2, FALSE),
			 (3, TRUE),
			 (4, TRUE);
   

INSERT INTO Pecas(Descricao, Valor) 
	   VALUES('Parafuso', 15.00),
			 ('Pistão', 84.90),
			 ('Cambio', 98.50),
			 ('Caixa eletrica', 50.00),
             ('Gas ar condicionado', 250.00); 
             
INSERT INTO Servicos(Descricao, Valor)  
	   VALUES('Problemas Eletricos', 549.00),
			 ('Caixa de cambio quebrado', 398.90),
			 ('Problemas no freio', 451.00),
			 ('Pneu Furado', 250.68),
			 ('Sistema de ar condicionado danificado', 850.50);
             

             
