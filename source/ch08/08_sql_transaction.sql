SELECT * FROM madangdb.book;

SELECT * FROM madangdb.orders;

start transaction;

update book
set price = 1000
where bookid = 1;

update orders
set saleprice = 1000
where orderid = 1;

rollback;

commit;