use madang3;

INSERT INTO book
select *
from madangdb.book;

INSERT INTO customer
select *
from madangdb.customer;

INSERT INTO orders
select orderid, custid, bookid, saleprice, orderdate
from madangdb.orders;

INSERT INTO madang3.book
(bookname,
publisher,
price)
VALUES
("미식축구의 규칙",
"한빛미디어",
9000);

UPDATE madang3.book
SET
price = 10000
WHERE bookid = 11;

DELETE FROM madang3.book
WHERE bookid = 11;

select * from book;
