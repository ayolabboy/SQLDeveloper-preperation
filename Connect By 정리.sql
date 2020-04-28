/*
              101                    -- master (level 1)
    102       103       104          -- level 2
 105        106  107  111            -- level 3 
108       109 100                    -- level 4
*/
CREATE TABLE DEP (
     DEP_CD NUMBER NOT NULL, -- �μ��ڵ�
     PARENT_CD NUMBER, -- �����μ� �ڵ�
     DEPT_NAME VARCHAR2(100) NOT NULL, -- �μ��̸�
     PRIMARY KEY (DEP_CD)
);

INSERT INTO DEP VALUES ( 101, NULL, '�Ѱ����ߺ�');
INSERT INTO DEP VALUES ( 102, 101, '����ϰ��߼���');
INSERT INTO DEP VALUES ( 103, 101, '�����߼���');
INSERT INTO DEP VALUES ( 104, 101, '�ý��۰��߼���');

INSERT INTO DEP VALUES ( 105, 102, '���θ�(�����)');
INSERT INTO DEP VALUES ( 106, 103, '����SI');
INSERT INTO DEP VALUES ( 107, 103, '���θ�');
INSERT INTO DEP VALUES ( 108, 105, '����������');
INSERT INTO DEP VALUES ( 109, 106, '����1��');
INSERT INTO DEP VALUES ( 100, 106, '����2��');
INSERT INTO DEP VALUES ( 111, 104, 'ERP�ý���');

select * from dep;

/*
SELECT [�÷�]...
FROM [���̺�]
WHERE [����]
START WITH [�ֻ��� ����]
CONNECT BY [NOCYCLE][PRIOR ������ ���� ����];
*/

SELECT 
DEPT_NAME,
DEP_CD,
PARENT_CD,
LEVEL
FROM DEP 
START WITH PARENT_CD IS NULL --�ֻ������ ����,
CONNECT BY PRIOR DEP_CD = PARENT_CD --�θ���� �ڽĳ�� ����
order by level; -- ���� 

SELECT 
LPAD(' ', 2*(LEVEL-1)) || DEPT_NAME AS DEPT_NAME, --������ �鿩����
DEP_CD,
PARENT_CD ,
LEVEL
FROM DEP 
START WITH PARENT_CD IS NULL --�� ������� ����,
CONNECT BY PRIOR DEP_CD = PARENT_CD;--�θ���� �ڽĳ�� ����


