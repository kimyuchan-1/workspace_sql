select bookname, price
from book;

select bookid, publisher, bookname, price
from book
where price < 20000;

select bookid, publisher, bookname, price
from book
where bookname like "_구%";

select bookid, publisher, bookname, price
from book
where bookname like "_구%" and price < 15000;

select bookid, publisher, bookname, price
from book
where bookname like "_구%" and price < 15000
order by price;

select abs(-78), abs(78);

select round(4.875,1);

select custid '고객번호', round(sum(ifnull(saleprice,0))/count(*), -2) '평균금액'
from orders
group by custid;

select bookid, replace(bookname, '야구', '농구') bookname, publisher, price
from book;

select bookname 'title', char_length(bookname) 'number of char', length(bookname) 'number of byte'
from book
where publisher='굿스포츠';

select orderid '주문번호', orderdate '주문일', adddate(orderdate, interval 10 day)'확정'
from orders;

select orderid '주문번호', date_format(orderdate, '%Y-%m-%d') '주문일',
	   custid '고객번호', bookid '도서번호'
from orders
where orderdate = str_to_date('20240707', '%Y%m%d');

select name '이름', ifnull(phone, '연락처없음') '전화번호'
from customer;

select row_number() over (order by price) "index", bookname, price
from book;

select *
from book
order by price desc
limit 3;


INSERT INTO madangdb.book
(bookid,
bookname,
publisher,
price)
VALUES
(11, '스포츠 의학', '한솔의학서적', 90000);

UPDATE madangdb.book
SET
price = 9000
WHERE bookid = 11;

DELETE FROM madangdb.book
WHERE bookid = 11;

select ifnull(sum(saleprice),0) as total,
	   round(ifnull(avg(saleprice),0),0) as average,
       ifnull(min(saleprice),0) as minium,
       ifnull(max(saleprice),0) as maxium
from order2;
