-- Creating SQL queries for the Oficina Database:

USE Oficina;

SHOW TABLES;

-- SELECT statement:
SELECT * FROM Clientes;
SELECT * FROM Funcionarios;
SELECT * FROM Veiculos;
SELECT * FROM OdServico;

-- WHERE and ORDER BY statement:
SELECT * FROM OdServico
WHERE Status LIKE 'C%'
ORDER BY Tipo_de_servico;

-- Derivate attributes and using HAVING statement:
SELECT idCliente, Tipo_de_servico,ROUND(Valor_Servico + Valor_Peca, 2) AS Valor_Total
FROM OdServico
HAVING Valor_Total > 600;

-- Joining tables to see the all clients that requested a service, type of service and service status:
SELECT c.Nome, c.Contato, c.Pagamento, v.Modelo, v.idPlaca AS Placa, a.Autorizado, 
os.Tipo_de_servico, os.Status
FROM Clientes c INNER JOIN Veiculos v
ON c.idClientes = v.idVeiculos
INNER JOIN Autorizacao a
ON a.idAutorizacao = v.idVeiculos
INNER JOIN OdServico os
ON os.idOrdem_Servico = a.idAutorizacao
ORDER BY Status DESC;


