
CREATE TABLE TAB1 (NO NUMBER, COL1 VARCHAR2(20), COL2 VARCHAR2(20));
CREATE TABLE TAB2 (NO NUMBER, COL1 VARCHAR2(20), COL2 VARCHAR2(20));
CREATE TABLE TAB3 (NO NUMBER, COL1 VARCHAR2(20), COL2 VARCHAR2(20));

INSERT INTO TAB1 (NO,COL1,COL2) VALUES(1,'AAA','가');
INSERT INTO TAB1 (NO,COL1,COL2) VALUES(2,'BBB','나');
INSERT INTO TAB1 (NO,COL1,COL2) VALUES(3,'CCC','다');
INSERT INTO TAB2 (NO,COL1,COL2) VALUES(1,'DDD','라');
INSERT INTO TAB2 (NO,COL1,COL2) VALUES(2,'EEE','마');
INSERT INTO TAB2 (NO,COL1,COL2) VALUES(3,'FFF','바');
INSERT INTO TAB3 (NO,COL1,COL2) VALUES(1,'GGG','사');
INSERT INTO TAB3 (NO,COL1,COL2) VALUES(2,'HHH','아');
INSERT INTO TAB3 (NO,COL1,COL2) VALUES(3,'III','자');


select * from tab1;
select * from tab2;
select * from tab3;

/*
WITH [WITH절 명칭] AS (SELECT [컬럼명] from [테이블명])
SELECT [컬럼명] FROM [WITH절 명칭]
*/

WITH  WITH_TAB
     AS (SELECT NO, COL1
         FROM   TAB1
         WHERE  NO = 1
)
select  C.NO AS TAB1_NO
     , C.COL1 AS TAB1_COL1
     , A.COL1 AS TAB2_COL1
     , A.COL2 AS TAB2_COL2
     , B.COL1 AS TAB3_COL1
     , B.COL2 AS TAB3_COL2
from TAB2 A, TAB3 B, WITH_TAB C
where A.NO = B.NO;


select 
    (select col1 from tab1 aa where aa.no = tt.no) as aaa,
    (select col1 from tab2 bb where bb.no = tt.no) as bbb,
    (select col1 from tab3 cc where cc.no = tt.no) as ccc
from tab3 tt;

/*
WITH [WITH절 명칭-1] AS (SELECT [컬럼명-1] FROM [테이블명-1]),
        [WITH절 명칭-2] AS (SELECT [컬럼명-2] FROM [테이블명-2])
SELECT ALIAS명-1.[컬럼명-1]
        , ALIAS명-2.[컬럼명-2]
FROM [WITH절 명칭-1] ALIAS명-1 
       ,  [WITH절 명칭-2] ALIAS명-2
*/

WITH  WITH_TAB1
  AS (SELECT NO, COL1, COL2
      FROM TAB1)
   ,  WITH_TAB2
  AS (SELECT NO, COL1, COL2
      FROM TAB2)
   ,  WITH_TAB3
  AS (SELECT NO, COL1, COL2
      FROM TAB3)
select A.NO TAB1_NO
     , A.COL1 TAB1_COL1
     , A.COL2 TAB1_COL2
     , B.NO TAB2_NO
     , B.COL1 TAB2_COL1
     , B.COL2 TAB2_COL2
     , C.NO TAB3_NO
     , C.COL1 TAB3_COL1
     , C.COL2 TAB3_COL2
from WITH_TAB1 A, WITH_TAB2 B, WITH_TAB3 C
where A.NO = B.NO
AND   A.NO = C.NO;