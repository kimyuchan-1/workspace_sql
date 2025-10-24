start transaction;

update book
set price = 10000
where bookid = 1;

update book
set price = 500
where bookid = 2;

rollback;