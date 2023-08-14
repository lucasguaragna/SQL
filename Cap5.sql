/*
Exibindo dados a partir de múltiplas tabelas

Objetivos: 
1. escrever comandos SELECT para acessar dados a partir 
   de uma tabela utilizando diversos tipos de JOINS;
2. Visualizar dados que geralmente não correspondem a
   condição de join utilizando outer joins
3. Executar um join de uma tabela com ela mesma (self join)
*/

/*
Produto cartesiano é formado quando:
1. uma condição de join é omitida;
2. uma condição de join é inválida;
3. todas as linhas da primeira tabela são unidas à todas as linhas da segunda

Para evitar um produto cartesiando, sempre inclua uma condição join válida
com a cláusula WHERE.
*/

/*
TIPOS DE JOINS

1. Equijoin: conecta duas ou mais tabelas de acordo com dados que são comuns a elas 
    (procura por dados idênticos nas tabelas envolvidas)
2. Non-Equijoin: procura por relacionamentos que não correspondam a uma condição de igualdade, 
    são geralmente utilizados para verificar valores dentro de um certo conjunto de dados.
3. Outer Joins: resulta em dados existentes em uma tabela que não possuem uma condição de igualdade com outra, ou seja,
    os registros da tabela que não tem regustros de ligação são incluídos no resultado.
        Da pra usar, também, para visualizar as linhas que não correspondem a uma condição de join.
        O operador de outer join é o sinal de adição (+).
4. Self Joins: nesse tipo de join, são relacionados os dados de uma mesma tabela mais de uma vez usando o mesmo raiciocínio
    de uma equijoin, só que nesse caso com uma mesma tabela.
*/

select * from alunos;

select * from contratos;

-- Produto cartesiano: Errado
-- falta o critério de união entre as tabelas
select 
    alunos.cd_aluno,
    alunos.nome,
    contratos.total
from 
    alunos, 
    contratos;
    
    
select 
    alunos.cd_aluno,
    alunos.nome,
    contratos.total
from 
    alunos, 
    contratos
where 
    alunos.cd_aluno = contratos.cd_aluno; 
    
