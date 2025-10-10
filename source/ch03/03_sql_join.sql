select *
from customer, orders, book;

select count(*)
from customer;

select count(*)
from orders;

select count(*)
from book;

select *
from customer, orders
where customer.custid = orders.custid;

select *
from customer c inner join
	orders o on c.custid = o.custid;
    
select c.name, b.bookname
from customer c, orders o, book b
where c.custid = o.custid and o.bookid = b.bookid;

select c.name, b.bookname
from customer c, orders o, book b
where b.price >= 20000
	and c.custid = o.custid 
    and o.bookid = b.bookid;

select name, count(*) 구매수량, ifnull(sum(o.saleprice),0) 총구매액
from customer c left outer join
	orders o on c.custid = o.custid
group by c.custid;

select b.bookname, b.publisher, count(*) as salesCount
from orders o join 
	book b on o.bookid = b.bookid
group by b.bookid, b.publisher
order by salesCount desc;

