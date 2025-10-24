start transaction;

select sid, class
from summer;

select price 'C 수강료'
from summer
where class like "C";

select distinct class
from summer
where price=(select max(price)
			 from summer);
             
select count(*), sum(price)
from summer;

set sql_safe_updates=0;

delete from summer
where sid = 200;

set sql_safe_updates=1;

select price 'C 수강료'
from summer
where class like "C";

rollback;

start transaction;

insert into summer values(null, "C++", 25000);

select *
from summer;

select count(*)
from summer;

select count(sid)
from summer; 

rollback;

start transaction;

set sql_safe_updates=0;

update summer
set price = 15000
where class='JAVA';

set sql_safe_updates=1;

select *
from summer;

select distinct price "JAVA 수강료"
from summer
where class like "JAVA";

update summer
set price = 20000
where class like 'JAVA';

update summer
set price = 15000
where class like 'JAVA' and sid = 100;

select *
from summer;

select price 'JAVA 수강료'
from summer
where class like 'JAVA';

rollback;

start transaction;

INSERT INTO `madangdb`.`summer`
(`sid`,
`class`,
`price`)
VALUES
(100,
"C",
10000);

INSERT INTO `madangdb`.`summer`
(`sid`,
`class`,
`price`)
VALUES
(150,
"PYTHON",
15000);

create table summer_class
select class, price
from summer
group by class, price;

rollback;
