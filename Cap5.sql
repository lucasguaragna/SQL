/*
Exibindo dados a partir de m�ltiplas tabelas

Objetivos: 
1. escrever comandos SELECT para acessar dados a partir 
   de uma tabela utilizando diversos tipos de JOINS;
2. Visualizar dados que geralmente n�o correspondem a
   condi��o de join utilizando outer joins
3. Executar um join de uma tabela com ela mesma (self join)
*/

/*
Produto cartesiano � formado quando:
1. uma condi��o de join � omitida;
2. uma condi��o de join � inv�lida;
3. todas as linhas da primeira tabela s�o unidas � todas as linhas da segunda

Para evitar um produto cartesiando, sempre inclua uma condi��o join v�lida
com a cl�usula WHERE.
*/

/*
TIPOS DE JOINS

1. Equijoin: conecta duas ou mais tabelas de acordo com dados que s�o comuns a elas 
    (procura por dados id�nticos nas tabelas envolvidas)
2. Non-Equijoin: procura por relacionamentos que n�o correspondam a uma condi��o de igualdade, 
    s�o geralmente utilizados para verificar valores dentro de um certo conjunto de dados.
3. Outer Joins: resulta em dados existentes em uma tabela que n�o possuem uma condi��o de igualdade com outra, ou seja,
    os registros da tabela que n�o tem regustros de liga��o s�o inclu�dos no resultado.
        Da pra usar, tamb�m, para visualizar as linhas que n�o correspondem a uma condi��o de join.
        O operador de outer join � o sinal de adi��o (+).
4. Self Joins: nesse tipo de join, s�o relacionados os dados de uma mesma tabela mais de uma vez usando o mesmo raicioc�nio
    de uma equijoin, s� que nesse caso com uma mesma tabela.
*/

select * from alunos;

select * from contratos;

-- Produto cartesiano: Errado
-- falta o crit�rio de uni�o entre as tabelas
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
    
