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

select orderid
from orders
where orderdate not in ("20240704", "20240705", "20240706", "20240707");

select orderid
from orders
where orderid not in (select orderid
						from orders
						where orderdate between "20240704" and "20240707");


select name, address
from customer 
where name like "김%";

select name, address
from customer 
where name like "김_아";

select count(b.publisher) as count
from book b, orders o, customer c
where c.name = "박지성"
	and b.bookid = o.bookid
	and o.custid = c.custid;
    
select b.bookname, b.price, abs(o.saleprice - b.price) as diffprice
from book b, orders o, customer c
where c.name = "박지성"
	and b.bookid = o.bookid
	and o.custid = c.custid;
    
select b.bookname
from book b, orders o, customer c
where c.name != "박지성"
	and b.bookid = o.bookid
	and o.custid = c.custid;
    
select name
from customer
where custid not in (select custid from orders);

select ifnull(sum(saleprice),0) as total,
	   ifnull(avg(saleprice),0) as average
from orders;

select c.name, sum(o.saleprice) as total
from customer c, orders o
where c.custid = o.custid
group by o.custid;

select c.name, b.bookname
from customer c, orders o, book b
where c.custid = o.custid
	and o.bookid = b.bookid
order by c.name;

select o.orderid
from book b, orders o
where b.bookid = o.bookid
	and abs(b.price - o.saleprice) = (select max(abs(b2.price - o2.saleprice))
									from book b2, orders o2
                                    where b2.bookid = o2.bookid);

select c.name
from customer c, orders o
where c.custid = o.custid
group by o.custid
having avg(o.saleprice) >= (select avg(saleprice) from orders);
