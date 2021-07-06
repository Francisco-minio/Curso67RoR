-- 2. ¿Qué consulta ejecutarías para mostrar el número total de ciudades para cada país? 
-- Su consulta debe devolver el nombre del país y el número total de ciudades. 
-- Tu consulta debe organizar el resultado por el número de ciudades en orden descendente. (3)

select * from cities;
select * from countries;
select countries.name, count(cities.id) as total
from countries
join cities
on countries.id = cities.country_id
group by countries.name 
order by total desc;

--  ¿Qué consulta harías para obtener todas las ciudades de México con una población de más de 500,000? 
-- Tu consulta debe organizar el resultado por población en orden descendente. (1)

select * from cities;
select * from countries where name like '%mexi%';

select cities from countries where countries.id = "136";
select name, population, country_id 
from cities 
where country_id = 136



order by asc;

select population from cities where population.id = 500
order by asc;