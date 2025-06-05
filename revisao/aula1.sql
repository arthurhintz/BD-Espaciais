-- 1 ) Recuperar o código, nome e a idade dos marinheiros; 

SELECT mid, mname, idade FROM marin

-- 2) Recuperar todos os barcos que tenham o nome Amazonas. Renomear a tabela para “b”; 

SELECT b.bid, b.bnome 
FROM barcos b
Where b.bnome = 'Amazonas'

-- 3) Recuperar o nome e a idade dos marinheiros que iniciem com a letra S;

SELECT mid, mname, idade 
FROM marin
WHERE mname
LIKE 'S%'

-- 4) Recuperar todos os marinheiros com a idade entre 20 e 35 anos; 
SELECT mid, mname, idade 
FROM marin
WHERE (idade between 20 and 35)

-- 5) Ordenar a tabela Marin em ordem ascendente pelo nome; 
SELECT mid, mname, idade 
FROM marin
ORDER BY mname ASC

-- 6) Encontrar a média de idade dos marinheiros;
SELECT AVG(idade) as media
FROM marin

-- 7) Encontrar a menor idade; 

SELECT MIN(idade) as menor_idade
FROM marin

-- 8) Encontrar maior idade; 

SELECT MAX(idade) as maior_idade
FROM marin

-- 9) Encontre o marinheiro que tenha seu nome iniciado com a letra S e idade menor que 30; 

SELECT mid, mname, idade
FROM marin
WHERE mname
LIKE 'S%' AND idade < 30

-- 10) Encontre o marinheiro que tenha seu nome iniciado com a letra F ou a idade menor que 20. 

SELECT mid, mname, idade
FROM marin
WHERE mname
LIKE 'F%' OR idade < 20




