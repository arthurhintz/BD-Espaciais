-- extensão para dados espaciais
CREATE EXTENSION postgis

-- criando e inserindo dados na tabela lotes
CREATE TABLE lotes
(cod char(2) PRIMARY KEY, geom geometry(polygon,0));

INSERT INTO lotes(cod, geom)
select 'L1', st_geomfromtext('polygon((3 5, 7 5, 7 3, 3 3, 3 5))');

INSERT INTO lotes(cod, geom)
select 'L2', st_geomfromtext('polygon((7 7, 11 7, 11 4, 7 4, 7 7))');

INSERT INTO lotes(cod, geom)
select 'L3', st_geomfromtext('polygon((17 9, 19 6, 15 6, 17 9))');

INSERT INTO lotes(cod, geom)
select 'L4', st_geomfromtext('polygon((3 8, 8 8, 8 7, 3 7, 3 8))');

SELECT cod, st_astext(geom)  -- usado para aparecer as coordenas conforme foram digitadas
FROM lotes


-- criando a tabela quadra e inserindo os dados
CREATE TABLE quadras
(cod char(2) PRIMARY KEY, geom geometry(polygon,0));

INSERT INTO quadras(cod, geom)
select 'Q1', st_geomfromtext('polygon((2 9, 11 9, 11 2, 2 2, 2 9))');

INSERT INTO quadras(cod, geom)
select 'Q2', st_geomfromtext('polygon((16 10, 18 10, 18 9, 19 9, 19 8, 20 8, 20 6, 19 6, 19 5, 18 5,
18 4, 16 4, 16 5, 15 5, 15 6, 14 6, 14 8, 15 8, 15 9, 16 9, 16 10))');

SELECT * FROM quadras

-- calculando a área dos lotes
SELECT cod, st_area(geom)
FROM lotes

-- calculando a área das quadras
SELECT cod, st_area(geom)
FROM quadras

