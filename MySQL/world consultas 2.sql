-- 2. ¿Qué consulta ejecutarías para mostrar el número total de ciudades para cada país? 
-- Su consulta debe devolver el nombre del país y el número total de ciudades. 
-- Tu consulta debe organizar el resultado por el número de ciudades en orden descendente. (3)
use world;
select * from cities;
select * from countries;
select countries.name, count(cities.id) as total
from countries
join cities
on countries.id = cities.country_id
group by countries.name 
order by total desc;

-- 3- ¿Qué consulta harías para obtener todas las ciudades de México con una población de más de 500,000? 
-- Tu consulta debe organizar el resultado por población en orden descendente. (1)

select * from cities;
select * from countries where name like '%mexi%';
select name,population from countries where id = "136"; 

select ct.name, ct.population Poblacion, cn.name Codigo_Pais from cities ct
inner join countries cn
on cn.id = ct.country_id
where ct.country_id ="136" and ct.population >= 500000 
order by ct.population desc;

-- 4 ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje superior al 89%?
-- Tu consulta debe organizar el resultado por porcentaje en orden descendente. (1)

select * from languages;

select cn.name Nombre_Pais ,lg.language Idioma, lg.percentage Porcentaje from languages lg
inner join countries cn
on cn.id = lg.country_id
where lg.percentage >= "89"
order by lg.percentage desc;


-- 5. ¿Qué consulta haría para obtener todos los países con un área de superficie inferior a 501 y una población superior a 100,000? (2)

select * from countries;
select ct.name, ct.surface_area, ct.population from countries ct;

select cn.name, cn.surface_area, cn.population from countries cn
where cn.surface_area >= 501 
and cn.population >= 100000;

-- 6. ¿Qué consulta harías para obtener países con solo Monarquía Constitucional con un capital superior a 200 y una esperanza de vida superior a 75 años? (1)

select cn.name Nombre_Pais,cn.government_form, cn.capital, cn.life_expectancy from countries cn
where cn.government_form = 'Constitutional Monarchy' and capital >= 200 and cn.life_expectancy >=75;

-- 7. ¿Qué consulta harías para obtener todas las ciudades de Argentina dentro del distrito de Buenos Aires y tener una población superior a 500,000? 
-- La consulta debe devolver el nombre del país, el nombre de la ciudad, el distrito y la población. (2)

select cn.name Nombre_Pais, ct.name Nombre_Ciudad ,ct.district Nombre_Distrito ,ct.population Poblacion from countries cn
inner join cities ct
on cn.id = ct.country_id
where ct.district = 'Buenos Aires' and ct.population >=500000;

-- 8. ¿Qué consulta harías para resumir el número de países en cada región? La consulta debe mostrar el nombre de la región y el número de países. 
-- Además, la consulta debe organizar el resultado por el número de países en orden descendente. (2)

select * from cities;
select * from countries;

select region, count(*) as n_country from countries
group by region
order by n_country desc;


