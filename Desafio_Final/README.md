# Desafio Final

Neste desafio, você terá a missão de compreender o papel dos Bancos de Dados Relacionais (SQL) e Não Relacionais (NoSQL) no contexto de um Engenheiro de Dados. Para isso, anote todos os conceitos, definições e insights que julgar relevantes em um novo repositório Git, aumentando assim seu portfolio de conhecimentos.


## Resolução:

### SQL

Sigla referente a *Structured Query Language* que no português significa Linguagem de Consulta Estruturada. O SQL é uma linguagem de consulta a banco de dados relacionais em que todos seus dados são guardados em tabelas. Essa linguagem foi originalmente criada pela IBM e parte dela baseia-se na álgebra relacional. 

Os bancos de dados relacionais seguem o modelo **ACID**, que são quatro propriedades utilizadas para preservar a integridade da transação:

- **A**tomicidade: para ser efetivadas, as ações de transação devem ser concluídas adequadamente.
- **C**onsistência: as regras e/ou restrições do banco de dados devem ser obedecidas.
- **I**solamento: garantia que a ação de transação ocorrerá sem haja interferência por outra ação concorrente.
- **D**urabilidade: o resultado de uma transação é permanente, o que é salvo não se perde.

Diante do vasto crescimento do volume de dados, o uso dos bancos de dados relacionais tornou-se não tão eficientes. Uma vez que começou-se a existir dificuldade de conciliar o tipo de modelo com a grande demanda da escalabilidade, sem reduzir a performance. Logo, outras alternativas para esse problema foram surgindo, como o NoSQL.

### NoSQL

A sigla refere-se a *Not Only SQL*, ou seja, não se utiliza o SQL como linguagem de consulta aos bancos de dados. O NoSQL é utilizado para banco de dados não relacionais, foi criado para suprir as necessidades em que os bancos de dados relacionais não são eficazes. Ele não veio para substituir o SQL e sim para ser uma alternativa de suporte a banco de dados mais flexíveis. Tornando-se fundamental para suprir os requisitos de alta escalabilidade necessários para gerenciar grandes quantidades de dados.

NoSQL permite alto armazenamento com velocidade e grande disponibilidade, e não precisa de certas regras e estruturas que baseiam os modelos relacionais.

Alguns tipos de bancos de dados NoSQL, são:
- Chave-Valor --> Dynamo
- Documento --> MongoDB;
- Colunas --> Cassandra;
- Grafos --> Neo4j;

### SQL x NoSQL

| SQL | NoSQL |
| :-: | :-: | 
| Precisa de relacionamento entre as tabelas para ter a informação | Toda informação é agrupada e guardada no mesmo registro | 
| Informação disposta no modelo entidade relacionamento (ER)| Não há necessidade do modelo ER |
| Dificuldade de conciliar a demanda por escalabilidade | Na escalabilidade leva-se em consideração a modelagem do sistema | 
| Consistência das informações | Apresenta informações do último valor atualizado | 
| Ainda é muito usado | Indicado para sistemas com maiores necessidades de armazenamento e desempenho |
| Não suportando uma demanda muito grande de informações | Permite que seja possível fazer com que um enorme fluxo de solicitações aos dados seja atendido com a vantagem do sistema ficar indisponível o menor tempo possível |


Referencias:

[Devmedia](https://www.devmedia.com.br/banco-de-dados-nosql-um-novo-paradigma-revista-sql-magazine-102/25918)

[FreeCodeCamp](https://www.freecodecamp.org/news/relational-vs-nonrelational-databases-difference-between-sql-db-and-nosql-db/)

[TreinaWeb_](https://www.treinaweb.com.br/blog/sql-vs-nosql-qual-usar)

