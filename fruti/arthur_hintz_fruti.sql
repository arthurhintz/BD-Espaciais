CREATE EXTENSION postgis

--1) A área de oliveiras;
SELECT id, st_area(geom) as area
FROM oliveiras

--2) A área de edificação;
SELECT id, st_area(geom) as area
FROM edificacoes

--3) O comprimento da via em metros;
SELECT id, st_length(geom) as comprimento
FROM vias

--4) Distância entre os postes com valores 4 e 8 no campo id;
SELECT post1.id, post2.id, st_distance(post1.geom, post2.geom)
FROM poste as post1,
	 poste as post2
WHERE post1.id = 4 
AND post2.id = 8


--5) Distância dos postes em relação ao poste com id igual 8;
SELECT post1.id,post2.id, st_distance(post1.geom, post2.geom)
FROM poste as post1,
	 poste as post2
WHERE post1.id = 8 
AND post2.id != 8


--6) Distância entre edificações e oliveiras;
SELECT ed.id, oli.id, st_distance(ed.geom, oli.geom)
FROM edificacoes as ed, 
	 oliveiras as oli
	

--7) A partir da tabela pontos_fruti crie a tabela portao com os pontos que
--possuem os valores 18 e 19 no campo gid. 

CREATE TABLE portao AS
SELECT *
FROM pontos_fruti
WHERE gid = 18 OR gid = 19

SELECT * FROM public.portao







