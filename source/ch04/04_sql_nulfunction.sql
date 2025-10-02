use madangdb;

SELECT * 
FROM customer
where phone is null;

SELECT * 
FROM customer
where phone is not null;

SELECT name '이름', ifnull(phone, '연락처 없음') '전화번호'
FROM customer;

set @age = 25;
select @age;

set @seq:=0;

select (@seq:=@seq+1), bookname, price
from book;

select row_number() over (order by price) "index", bookname, price
from book;

select *
from book
order by price desc
limit 3;
