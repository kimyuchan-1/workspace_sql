USE MADANGDB;

SELECT BOOKID, BOOKNAME, PUBLISHER, PRICE
FROM BOOK
WHERE BOOKNAME LIKE '_구%';

INSERT INTO BOOK
(bookid,
bookname,
publisher,
price)
VALUES
(11,
"축구 전술의 기초",
"굿스포츠",
3500);

UPDATE book
SET
price = 4000
WHERE bookid = 11;

DELETE FROM book
WHERE bookid = 11;
