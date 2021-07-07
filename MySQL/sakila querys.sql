use sakila;

-- 1. ¿Qué consulta ejecutarías para obtener todos los clientes dentro de city_id = 312? 
-- Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.

select * from customer;
select * from address;
select * from city;
select * from country;

select cm.first_name, cm.last_name, cm.email, cm.address_id  from customer cm
inner join address ad
on ad.address_id = cm.address_id
where ct.city_id = 312;





-- 4. ¿Qué consulta ejecutaría para obtener todos los clientes en store_id = 1 y dentro de estas ciudades (1, 42, 312 y 459)? 
-- Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.

select * from store
where store_id = 1;
select * from address
where address_id = 1;
select * from customer
where address_id = 1;
select * from customer
where store_id = 1;

SELECT store.store_id, first_name, last_name, email, address.address, address.city_id
FROM store
JOIN customer
ON customer.store_id = store.store_id
JOIN address
ON customer.address_id = address.address_id
WHERE address.city_id IN (1,42,312,459)
AND store.store_id = 1;
