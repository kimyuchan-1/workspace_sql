start transaction;

update book
set price = 500
where bookid = 2;

update book
set price = 5000
where bookid = 1;

rollback;

select * from book;