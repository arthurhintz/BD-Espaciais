-- 1) Fazer a conexão com o banco de dados “poli” e adicionar as suas tabelas
-- em um projeto no QGIS;

-- 2) Qual a distância entre o estacionamento 1 e 3?

SELECT
  st_distance(
    st_transform(est1.geom, 31982),
    st_transform(est2.geom, 31982)
  ) AS distancia
FROM
  estacionamento AS est1,
  estacionamento AS est2
WHERE
  est1.cod_estac = 1
  AND est2.cod_estac = 3;


-- 3) Qual a área de cada estacionamento cadastrado?

SELECT cod_estac, st_area(st_transform(geom, 31982)) as area
FROM estacionamento

-- 4) Qual o somatório das áreas de todos os estacionamentos?

SELECT sum(st_area(st_transform(geom, 31982))) as total_area
FROM estacionamento

-- 5) Qual o comprimento de cada acesso dos estacionamentos?

SELECT cod_acesso, st_length(st_transform(geom, 31982)) as comprimento
FROM acesso

/* 6) Qual a distância entre a coordenada do ponto que localiza o Politécnico e os
prédios que compõem o colégio? */

SELECT st_distance(st_transform(c.geom, 31982), st_transform(p.geom, 31982)) as distancias, 
p.cod_pred
FROM colegio as c, predio as p





