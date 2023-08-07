/*

Introdu��o � fun��es b�sicas

1. single-row: operam em linhas �nicas retornando um resultado para cada
   linha processada;
   - manipulam itens de dados;
   - recebem argumentos e retornam um valor;
   - atuam sobre cada linha recuperada;
   - retornam um resultado por linha;
   - podem modificar o tipo de um dado;
   - podem ser aninhadas;
   
   SINTAXE: function_name(column | expression, [arg1, arg2, ...])
   
   FUN��ES DE CARACTERES:
   1.1. CONCAT: concatena a primeira string de caracteres com a segunda.
   Equivalente com o operador "||"
   
   1.2. INITCAP: converte strings de caracteres deixando a primeira letra
   de cada palavra em mai�scula e as demais em min�sculas;
   
   1.3. INSTR: retorna a posi��o num�rica de cada caracter dentro da string
   
   1.4. LENGTH: retorna o n�mero de caracteres da string;
   
   1.5. LOWER: converte strings de caracteres para min�sculas;
   
   1.6. LPAD: retorna uma string com tamanho total de n alinhada � direita.
   
   1.7. REPLACE(x,y,z): procura uma string y em x e substitui pela z;
   
   1.8. RPAD: retorna uma string com tamanho total alinhada � esquerda;
   
   1.9. SUBSTR: retorna os caracteres especificados a partir da string de
   caracteres, come�ando na posi��o m, com tamanho de n caracteres. Se m
   for negativo, a contagem inicia a partir do final da string. Se m for
   omitido, s�o retornados todos os caracteres at� o final da string.
   
   1.10. UPPER: converte strings de caracteres para mai�sculas.
     
*/

select nome from alunos;

select concat(cd_aluno, nome) from alunos;

select initcap(nome) as Nome from alunos;

select nome, instr(nome, 'A') from alunos;

select nome, length(nome) from alunos;

select 
    lower(nome) as minusculo,
    upper(nome) as maiusculo,
    initcap(nome) as initcap
from alunos;

select cd_aluno, lpad(cd_aluno, 5, '0') from alunos; -- coloca caracteres � esquerda
-- preenche o que falta para chegar em 5 caracteres.

select cd_aluno, rpad(cd_aluno, 5, '0') from alunos; -- coloca caracteres � direita.
-- preenche o que falta para chegar em 5 caracteres.

-- Copiando uma parte do texto:
select nome, substr(nome, 1,3) from alunos; 

-- Trocando caracteres
select nome, replace(upper(nome), 'I','1') from alunos;

-- carregando a ultima letra:
select nome, substr(nome, length(nome), 1) from alunos;

-- Usando fun��es no select

select * from alunos
where lower(nome) = 'lucas';

select * from alunos
where upper(nome) = 'PRISCILA';

select * from alunos
where upper(substr(cidade, 1, 3)) = 'PIN'; 

update alunos set
salario = 633.47
where cd_aluno = 1;

select salario,
    replace(salario, ',', ''),
    rpad(salario, 10, '0'),
    lpad(salario, 10, '0'),
    lpad(replace(salario, ',',''),10,'0')
from alunos;

-- Trabalhando com datas
select sysdate from dual;

-- Round e Trunc
select  round(45.925,2),
        trunc(45.925,2),
        mod(10,2) AS resto_divisao,
        trunc(1.99),
        trunc(1.99,2)
from dual;

-- Fun��es de Data/Hora
select * from contratos;

select data, sysdate, data + 5 from contratos;


select data,
       sysdate,
       data + 5,
       sysdate - data               dif_dias,
       trunc(sysdate - data)        dif_dias_trunc,
       sysdate + 2 / 24             add_horas, -- somando horas em uma data
       sysdate + 15 / 1440          add_minutos, -- somando minutos em uma data
       sysdate + 30 / (3600 * 24)   add_segundos -- somando segundos em uma data
from contratos;

/*
FUN��ES DE DATA:
- months_between(data1, data2): mostra a quantidade de meses entre as datas;
- add_months(data, num_de_meses_desejado): adiciona meses � data;
- next_day(data, 'dia_da_Semana'): proxima data a partir de um dia da semana;
- last_day(data): ultimo dia do m�s da data inserida;
- round(data, 'MONTH'): primeiro dia do pr�ximo m�s se a data for depois do dia 16;
- trunc(data, 'MONTH'): primeiro dia do m�s atual;
*/

select last_day(sysdate) from dual;


-- Formata��o de Data
SELECT
    sysdate,
    to_char(sysdate, 'DD'),
    to_char(sysdate, 'DD/MM/YYYY'),
    to_char(sysdate, 'DD/MM'),
    to_char(sysdate, 'MM'),
    to_char(sysdate,'YYYY'),
    to_char(sysdate, 'MONTH'),
    to_char(sysdate, 'D') dia_da_semana,
    to_char(sysdate, 'DY') dia_da_semana_1,
    to_char(sysdate, 'DAY'),
    to_char(sysdate, 'YEAR'),
    to_char(sysdate, 'NOVO HAMBURGO', " fmDAY ", DD "de" fmMonth "de" YYYY)
FROM
    dual;


-- Conversor to_char(data, )



/*

2. multiple-row: manipulam grupos de linhas para obter um resultado para
   cada grupo processado;
   
*/



