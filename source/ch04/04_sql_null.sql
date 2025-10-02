update book
set price = (select price from book where bookid = 11)
where bookid = 1;

select sum(price)/count(*), count(*), min(price), max(price), avg(price)
from book;

select *
from book;

select sum(null), count(null), min(null), max(null), avg(null);

select sum(price)
from book
where bookid = 11;
