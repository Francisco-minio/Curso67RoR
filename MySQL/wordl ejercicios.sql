use world;
select * from cities;
select * from countries;
select * from languages;

-- 1. ¿Qué consulta harías para obtener todos los países que hablan esloveno? 
-- Tu consulta debe devolver el nombre del país, el idioma 
-- y el porcentaje de idioma. 
-- Tu consulta debe organizar el resultado por porcentaje de idioma en orden descendente. (1)

select * from languages where language like '%slo%';
select * from languages where language = 'Slovene';
select * from countries where id in (200,107,96,16);
select name from countries where id in (200,107,96,16);


select language, percentage from languages where language like '%slove%' order by percentage desc;

select name,language,percentage from languages
inner join countries on languages.country_id = countries.id
where countries.id in ('200,107,96,16')
order by percentage desc;


-- VERSION PROFE --

use world;

select * from cities;
select * from countries;
select * from languages;

-- ¿Qué consulta harías para obtener todos los países que hablan esloveno? 
-- Tu consulta debe devolver el nombre del país, el idioma y el porcentaje de idioma. 
-- Tu consulta debe organizar el resultado por porcentaje de idioma en orden descendente

select language, percentage from languages where language LIKE '%sloven%' order by percentage desc;

select name from countries where id in (200,107,96,16);

select  cn.name, lgg.language, lgg.percentage from languages lgg
INNER JOIN countries cn ON lgg.country_id = cn.id
where lgg.language LIKE '%sloven%' 
order by lgg.percentage desc
;

select  name,language, percentage from languages
INNER JOIN countries ON languages.country_id = countries.id
where countries.id in (200,107,96,16)
order by percentage desc
;select * from cities;
select * from countries;
select * from languages; 

-- ¿Qué consulta harías para obtener todos los países que hablan esloveno? 
-- Tu consulta debe devolver el nombre del país, el idioma y el porcentaje de idioma. 
-- Tu consulta debe organizar el resultado por porcentaje de idioma en orden descendente.

select lg.language, lg.percentage from languages lg
where lg.language LIKE '%lovene%'
ORDER BY lg.percentage desc;

SELECT cou.name from countries cou
where cou.id in (16,96, 107,200);

