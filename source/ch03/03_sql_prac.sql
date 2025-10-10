select bookname
from book 
where bookid = 1;

select bookname
from book 
where price >= 20000;

select c.name, sum(saleprice) as 총구매액
from customer c, orders o 
where c.name = '박지성'
	and o.custid = c.custid;
    
select c.name, count(*) as 총구매도서수
from orders o, customer c
where o.custid = c.custid
	and c.name = '박지성';
    
select count(bookid) as 총도서수
from book;

select count(DISTINCT publisher) as 출판사수
from book;

select name, address
from customer;

select orderid
from orders
where orderdate between "20240704" and "20240707";

select name, address
from customer 
where name like "김%";

select name, address
from customer 
where name like "김_아";