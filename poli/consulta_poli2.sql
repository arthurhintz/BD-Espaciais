-- calculo de distância entre duas geometrias

-- Precisa tranformar as coordenadas de graus para UTM
SELECT st_distance(st_transform(c.geom, 31982), st_transform(v.geom, 31982)) as distancia
FROM caminhos as c, vegetacao as v
WHERE c.cod = 1 and v.cod = 1

SELECT st_distance(st_transform(c.geom, 31982), st_transform(r.geom, 31982)) as distancia
FROM caminhos as c, restaurante as r
WHERE c.cod = 1 and r.cod = 1


-- Calculo da área do restaurante
SELECT st_area(st_transform(geom, 31982)) as metros_quadrados
FROM restaurante 
WHERE cod = 1

-- Calculo do comprimento
SELECT st_length(st_transform(geom,31982))
FROM caminhos
WHERE cod = 1

SELECT st_perimeter(st_transform(geom,31982))
FROM restaurante
WHERE cod = 1
