
-- ���̺� ���� 
CREATE TABLE testy(
    idx number(10) PRIMARY KEY,
    tname varchar(2)
);

-- �� ����
CREATE VIEW do_T AS
    SELECT * FROM testy
    where idx = 0;

-- �� ���� 
SELECT * FROM do_T;

-- �� ���� 
DROP VIEW do_T;


/*
adv :
Ư�� Į���� ��ȸ�ϱ⿡ ������ ������
������ ������ ������ 
SELECT ���� �������� 
�ϳ��� ���̺� ������ �並 ���� �� �� �ִ�

dis_adv : 
�信 ������ �ε��� ���� �Ұ�
insert, update, delete �Ұ�
������ ���� ���� �ȵ� 

** � ���ǹ��� �ݺ��� �� ����ϸ� ������ �� 
*/