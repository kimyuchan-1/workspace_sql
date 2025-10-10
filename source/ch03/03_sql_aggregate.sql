select custid, ifnull(count(*),0), ifnull(sum(saleprice),0)
from orders
group by custid;

select sum(saleprice) as 총매출
from orders;

select sum(saleprice) as 총매출
from orders
where custid = 2;

select sum(ifnull(saleprice,0)) as total,
	   avg(ifnull(saleprice,0)) as average,
       min(ifnull(saleprice,0)) as minimum,
       max(ifnull(saleprice,0)) as maximum
from orders;

select count(*)
from orders;

select name, 
	   count(*) as 도서수량, 
	   sum(saleprice) as 총액
from orders, customer
where orders.custid = customer.custid
group by orders.custid
order by 총액 desc;

select b.publisher as 출판사,
       count(*) as 판매수,
       sum(o.saleprice) as 총매출
from orders o, book b
where o.bookid = b.bookid
group by b.publisher
order by 총매출 desc;

select b.publisher as 출판사,
       count(*) as 판매수,
       sum(o.saleprice) as 총매출
from orders o, book b
where o.bookid = b.bookid	  
group by b.publisher
having 판매수 >= 2
order by 총매출 desc;

select custid, count(*) as 도서수량
from orders
where saleprice >= 8000
group by custid
having count(*) >= 2;

