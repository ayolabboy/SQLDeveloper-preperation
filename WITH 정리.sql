
CREATE TABLE TAB1 (NO NUMBER, COL1 VARCHAR2(20), COL2 VARCHAR2(20));
CREATE TABLE TAB2 (NO NUMBER, COL1 VARCHAR2(20), COL2 VARCHAR2(20));
CREATE TABLE TAB3 (NO NUMBER, COL1 VARCHAR2(20), COL2 VARCHAR2(20));

INSERT INTO TAB1 (NO,COL1,COL2) VALUES(1,'AAA','��');
INSERT INTO TAB1 (NO,COL1,COL2) VALUES(2,'BBB','��');
INSERT INTO TAB1 (NO,COL1,COL2) VALUES(3,'CCC','��');
INSERT INTO TAB2 (NO,COL1,COL2) VALUES(1,'DDD','��');
INSERT INTO TAB2 (NO,COL1,COL2) VALUES(2,'EEE','��');
INSERT INTO TAB2 (NO,COL1,COL2) VALUES(3,'FFF','��');
INSERT INTO TAB3 (NO,COL1,COL2) VALUES(1,'GGG','��');
INSERT INTO TAB3 (NO,COL1,COL2) VALUES(2,'HHH','��');
INSERT INTO TAB3 (NO,COL1,COL2) VALUES(3,'III','��');


select * from tab1;
select * from tab2;
select * from tab3;

/*
WITH [WITH�� ��Ī] AS (SELECT [�÷���] from [���̺��])
SELECT [�÷���] FROM [WITH�� ��Ī]
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
WITH [WITH�� ��Ī-1] AS (SELECT [�÷���-1] FROM [���̺��-1]),
        [WITH�� ��Ī-2] AS (SELECT [�÷���-2] FROM [���̺��-2])
SELECT ALIAS��-1.[�÷���-1]
        , ALIAS��-2.[�÷���-2]
FROM [WITH�� ��Ī-1] ALIAS��-1 
       ,  [WITH�� ��Ī-2] ALIAS��-2
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