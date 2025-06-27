CREATE EXTENSION postgis

-- Criando as quadras

CREATE TABLE quadra (cod_quadra integer PRIMARY KEY,
	nome character varying(50),
	geom geometry(polygon, 4326));

-- Inserindo dados em quadra
INSERT INTO quadra (cod_quadra, nome,geom)
VALUES(1, 'ccne', ST_GeometryFromText('POLYGON
((	-53.71882596722875 -29.71430487540691,
	-53.71857620657241 -29.71556134974049,
	-53.71592236823407 -29.715199062998,
	-53.71616997927896 -29.71394080501108,
	-53.71882596722875 -29.71430487540691))',4326));


INSERT INTO quadra (cod_quadra, nome,geom)
VALUES(2, 'ccr', ST_GeometryFromText('POLYGON
((	-53.71809616270821 -29.71808531414482,
	-53.71780642034453 -29.71945651114219,
	-53.71522088338696 -29.7190594047942,
	-53.71548049471987 -29.71772018482177,
	-53.71809616270821 -29.71808531414482))',4326));


-----------

-- Criando os predios

CREATE TABLE predio (cod_pred integer PRIMARY KEY, 
	cod_quadra integer,
	numero integer,
	nome character varying(50),
	geom geometry(polygon, 4326),
	FOREIGN KEY (cod_quadra) REFERENCES quadra (cod_quadra));



-- Inserindo dados em quadra
INSERT INTO predio (cod_pred, cod_quadra, numero, nome, geom)
VALUES(1, 1,13, 'ccne', ST_GeometryFromText('POLYGON
((	-53.71692076854164 -29.71419788878272,
	-53.71675570464691 -29.71517377763667,
	-53.71633913016289 -29.71512083449456,
	-53.71648988436856 -29.71414696721654,
	-53.71692076854164 -29.71419788878272))',4326));


INSERT INTO predio (cod_pred, cod_quadra, numero, nome, geom)
VALUES(2, 2, 44, 'ccr', ST_GeometryFromText('POLYGON
((	-53.71769408248714 -29.71808153977869,
	-53.71792336622512 -29.71810682462163,
	-53.71768732647217 -29.71919603068367,
	-53.71749969742572 -29.71916504947253,
	-53.71769408248714 -29.71808153977869))',4326));


