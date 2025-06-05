-- 1. Selecionar todos os pacientes;

SELECT	*
FROM paciente

-- 2. Selecionar todos os médicos com especialidade Cardiologia;
SELECT *
FROM medico
WHERE especialidade = 'Cardiologista'

-- 3. Encontrar paciente que tenha o sobrenome Azevedo;
SELECT *
FROM paciente
WHERE nome
LIKE '%Azevedo'

-- ILIKE pode ser usado para não precisar diferenciar palavras com maisculas e minuscula, 'Azevedo' = 'AZEVEDO' = 'azevedo'


-- 4. Encontrar os pacientes que tenham sido atendidos pelo médico com código 1;

SELECT p.nome
FROM consulta c INNER JOIN paciente p on(p.cod_pac = c.cod_pac)
Where c.cod_med = 1

-- 5. Encontrar o nome e a especialidade do médico com código 3;

SELECT *
FROM medico
WHERE "Cod_med" = 3

-- 6. Recuperar o código do paciente e a data que foi atendido;

SELECT c.cod_pac, c."data", p.nome
FROM consulta c INNER JOIN paciente p ON(p.cod_pac = c.cod_pac)

-- Ordenar a tabela atendimento pela data de atendimento

SELECT *
FROM consulta
ORDER BY "data"



