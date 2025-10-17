use madangdb;

select orderid, o.custid, name, address, phone, o.bookid, bookname, b.publisher, b.price, saleprice, orderdate
from customer c, orders o, book b
where o.custid = c.custid
	  and o.bookid = b.bookid;
      
select *
from v_orders
where saleprice > 5000;

select bookid, bookname, publisher, price
from book
where price > 15000
order by bookid desc;

select *
from book
where bookid = 3;

create index ix_book on book(bookname);

create index ix_book2 on book(publisher, price);

show index from orders;