use sakila;

select * 
from staff s1, store s2
where s1.store_id = s2.store_id;

select f.*
from film f, film_category fc, category c
where f.film_id = fc.film_id
	and fc.category_id = c.category_id
    and c.name like "sci_fi";
    
select f.title
from film f, inventory i, store s
where s.store_id = 1
	and s.store_id = i.store_id
    and i.film_id = f.film_id
order by f.film_id;

select r.rental_date, c.first_name, c.last_name, f.title, s.first_name, s.last_name, p.amount, r.rental_id
from (select * from rental order by rental_id desc limit 1) r, customer c, staff s, inventory i, film f, payment p
where r.rental_id = p.rental_id and
	r.customer_id = c.customer_id and
    r.staff_id = s.staff_id and
    r.inventory_id = i.inventory_id and
    i.film_id = f.film_id;
    
select * 
from customer_list;

select inventory_in_stock();

select inventory_held_by_customer();

set @x = 0;
call sakila.film_in_stock(1,1,@x);
select @x;

call sakila.film_not_in_stock(1,1,@x);

select s1.store_id, s1.staff_id, s1.first_name, s1.last_name
from staff s1, store s2
where s1.store_id = s2.store_id;

select c.name, f.title 
from film f, film_category fc, category c
where f.film_id = fc.film_id and
	fc.category_id = c.category_id and
    c.name like "sci_fi";
    
select s.store_id, f.title
from film f, inventory i, store s
where s.store_id = 1 and
	f.film_id = i.film_id and
	i.store_id = s.store_id;
    
select r.rental_id, r.rental_date, c.first_name, c.last_name, f.title, p.amount, r.return_date, s.first_name, s.last_name
from (select * from rental order by rental_date desc limit 1) r, inventory i, staff s, payment p, film f, customer c
where r.inventory_id = i.inventory_id and
	i.film_id = f.film_id and
    r.rental_id = p.rental_id and
    r.staff_id = s.staff_id and
    r.customer_id = c.customer_id;
    
select * from recent_rental;