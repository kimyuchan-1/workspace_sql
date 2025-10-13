select orderid, saleprice
from orders
where saleprice <= (select avg(saleprice)
					from orders);
                    
select orderid, custid, saleprice
from orders od1
where saleprice > (select avg(saleprice)
				   from orders od2
                   where od1.custid = od2.custid);
                   
select sum(saleprice) total
from orders
where custid in (select custid
				 from customer
                 where address like "%대한민국%");
                 
select orderid, saleprice
from orders
where saleprice > all (select saleprice
					   from orders
                       where custid = '3');
                       
select sum(saleprice) total
from orders o
where exists (select *
			  from customer c
              where address like "%대한민국%"
              and c.custid = o.custid);
              
select (select name
		from customer c
        where c.custid = o.custid) name, sum(saleprice) total
from orders o
group by o.custid;

alter table orders add bname varchar(40);
update orders
set bname = (select bookname
			 from book
             where book.bookid = orders.bookid);
             
select c.name, sum(o.saleprice) total
from (select custid, name
	  from customer
      where custid <= 2) c,
      orders o
where c.custid = o.custid
group by c.name;

select bookname
from book
where price = (select max(price) from book);

select name
from customer
where custid in (select custid from orders);

select name
from customer
where custid in (select custid
				 from orders
                 where bookid in (select bookid
								  from book
                                  where publisher = "대한미디어"));
                                  
select b1.bookname
from book b1
where b1.price > (select avg(b2.price)
				  from book b2
                  where b2.publisher = b1.publisher);
                  
select name, address
from customer c
where exists (select *
			  from orders o
              where c.custid = o.custid);
              
(select 1 union select 2 union select 3)
union all -- union / intersect / except / union all
(select 1 union select 2 union select 5);
