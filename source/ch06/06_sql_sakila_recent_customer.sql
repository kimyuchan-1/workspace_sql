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