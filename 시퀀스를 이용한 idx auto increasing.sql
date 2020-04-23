?/*
����Ŭ�� MS-SQL�̳� MYSQL�� �޸�, �ڵ� ������ ���� ����� ����.
����, �������� �����Ͽ�, row�� �ڵ����� �ؾ��Ѵ�.
��ɾ�� ������ ����.

CREATE SEQUENCE �������̸� START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 99999999;

����
START WITH : ���� �� ����
INCREMENT BY : ������ �� ����
MAXVALUE : �ִ� �� ����
MINVALUE : �ּ� �� ����

?���� ���� �������� ���� �� �ڿ�, Insert�ó� �� ����� ��ɾ �������� Ȱ���Ͽ� ����Ѵ�.

����)
���ÿ����� �÷�1�� �ڵ����� �÷�, �÷�2�� varchar�� �����Ѵٰ� �����Ѵ�.
INSERT INTO ���̺��(�÷�1,�÷�2) VALUES(�������̸�.NEXTVAL,'test');
NEXTVAL�� �ڵ������� ���ڸ� �����´�.

SELECT �������̸�.NEXTVAL FROM DUAL;

���� ��ɾ ���Ͽ�, ���� �ڵ����� ���� ������ �� �ִ�.
*/

-- ���̺� ����
create table testy(
    idx number(10) primary key,
    tname varchar2(20)
);

-- ������ ���� 
/*
START WITH : ���� �� ����
INCREMENT BY : ������ �� ����
MAXVALUE : �ִ� �� ����
MINVALUE : �ּ� �� ����
*/
CREATE SEQUENCE testy_auto_increase START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 99999999;

-- ���� ��ɾ ���Ͽ�, ���� �ڵ����� ���� ������ �� �ִ�.
SELECT testy_auto_increase.NEXTVAL FROM DUAL;

-- NEXTVAL�� �ڵ������� ���ڸ� �����´�.
INSERT INTO testy(idx,tname) VALUES(testy_auto_increase.NEXTVAL,'test man');

-- ��ȸ 
SELECT * FROM testy 