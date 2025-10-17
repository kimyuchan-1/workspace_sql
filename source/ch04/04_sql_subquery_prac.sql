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
                 
select sum(saleprice) total
from orders od
where exists (select *
			  from customer cs
              where address like "%대한민국%" and cs.custid = od.custid);
              
select (select name
		from customer cs
        where cs.custid = od.custid) name, sum(saleprice) total
from orders od
group by od.custid;

