# Database Experience Dio

Resoluções dos desafios de projeto do Bootcamp sobre Banco de Dados da DIO para profissionais que procuram uma experiência em Ciência de Dados 
aprimorando nos principais conceitos de banco de dados SQL e NoSQL. 

More infos: [Dio Website](https://www.dio.me/en)

## Projeto Conceitual de Banco de Dados – E-COMMERCE:

### Descrição do Desafio: 

Sobre a venda de produtos, tomar como base inicial 5 entidades:
- Cliente
- Produto
- Estoque
- Fornecedor
- Pedido

**Narrativa – Produto**
- Os produtos são vendidos por uma única plataforma online.
Contudo, estes podem ter vendedores distintos (terceiros)
- Cada produto possui um fornecedor
- Um ou mais produtos podem compor um pedido

**Narrativa – Cliente**
- O cliente pode se cadastrar no site com seu CPF ou CNPJ
- O Endereço do cliente irá determinar o valor do frete
- Um cliente pode comprar mais de um pedido. Este tem um período de carência para devolução do produto

**Narrativa – Pedido**
- O pedidos são criados por clientes e possuem informações de
compra, endereço e status da entrega
- Um produto ou mais compoem o pedido
- O pedido pode ser cancelado

### Objetivo:
**Refine** o modelo apresentado acrescentando os seguintes pontos:

- Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;
- Pagamento – Pode ter cadastrado mais de uma forma de pagamento;
- Entrega – Possui status e código de rastreio;

### Resolução do desafio:
![E_commerce](https://user-images.githubusercontent.com/66090235/189775490-a538ed74-39d2-43a1-929f-9903253a8e81.png)

