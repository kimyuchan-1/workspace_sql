USE MADANGDB;
 
INSERT INTO BOOK
(bookid,
bookname,
publisher,
price)
VALUES
(11, 'A', 'B', 100);

--  SCHEMAS 창에서 삽입할 데이터베이스 우클릭 -> SEND TO SQL EDITER -> (원하는 조작어) STATEMENT 선택

--  INSERT INTO 삽입할 데이터베이스(열)
--  VALUES 삽입할 값

UPDATE book
SET
bookname = '미국 축구란?',
publisher = '부산대학교',
price = 4900
WHERE bookid = 11;

--  UPDATE 삽입할 데이터베이스
--  SET 열 = 변경할 값
--  WHERE 조건 : 일반적으로 PRIMARY KEY

DELETE FROM book
WHERE bookid = 11;

--  DELETE FROM 삭제할 데이터베이스
--  WHERE 조건 : 일반적으로 PRIMARY KEY