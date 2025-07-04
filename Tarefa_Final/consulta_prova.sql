CREATE EXTENSION postgis

-- 1)O nome do bairro e das farmácias existentes em cada bairro. Utilize a função ST_CONTAINS.

SELECT b.nome, f.nome 
FROM bairros AS b, farmacia AS f
WHERE b.geom && f.geom
AND st_contains(b.geom, f.geom)

-- 2) Calcule a área dos bairros e ordene o resultado em ordem decrescente pela área.

SELECT b.nome, st_area(st_transform(b.geom, 31982))/1000000 AS area_bairros
FROM bairros AS b
ORDER BY area_bairros DESC

-- 3) Calcule a distância entre as farmácias. A consulta deverá mostrar o código,
-- o nome de cada farmácia com a respectiva distância

SELECT f1.nome, f2.nome, st_distance(st_transform(f1.geom, 31982), 
									  st_transform(f2.geom, 31982)) AS distancia
FROM farmacia AS f1, farmacia AS f2
WHERE f1.nome <> f2.nome


-- Calcule a área em hectares do município

SELECT st_area(st_transform(m.geom, 31982))/10000 AS area_SCS
FROM municipio AS m




