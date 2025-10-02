select ifnull(sum(saleprice), 0) as total
from orders;

select ifnull(sum(saleprice),0) as total
from orders
where custid = 5;

select 
	   ifnull(sum(saleprice),0) as total,
	   round(ifnull(avg(saleprice),0),0) as average,
       ifnull(min(saleprice),0) as minium,
       ifnull(max(saleprice),0) as maxium
from order2;

create table order2
select * from orders
limit 100000;

