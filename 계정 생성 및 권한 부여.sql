-- select * from ALL_USERS;
-- select * from DBA_USERS;

SELECT * FROM DBA_USERS
WHERE USERNAME = 'C##DONGIKSHIN';

SELECT * FROM DBA_ROLE_PRIVS
WHERE GRANTEE = 'C##DONGIKSHIN' ;

SELECT * FROM DBA_SYS_PRIVS
WHERE GRANTEE = 'C##DONGIKSHIN' ;

-- ���� ����
-- CREATE user c##dongikshin IDENTIFIED BY ehddlr0901$; 
-- ���� �ο�
-- GRANT CREATE USER TO c##dongikshin; -- �������� ���� 
-- GRANT SELECT ANY TABLE TO c##dongikshin; -- ���̺� ��ȸ ����
-- GRANT CREATE ANY TABLE TO c##dongikshin; -- ���̺� ���� ���� 
-- GRANT CREATE SESSION TO c##dongikshin; -- DB ���� ����
-- GRANT CREATE TABLE TO c##dongikshin; -- ���̺� ���� ����
-- GRANT CREATE VIEW TO c##dongikshin; -- �� ���� ����
-- GRANT CREATE PROCEDURE TO c##dongikshin; -- ���ν��� ���� ����
-- GRANT CREATE SEQUENCE TO c##dongikshin; -- ������ ���� ����

-- https://aileen93.tistory.com/17 
-- https://jhroom.tistory.com/168

-- ���� �ο�
grant 
    select,insert,delete,update -- ���� ����Ʈ 
    on testy -- ���� �� ���̺�
    to c##dongikshin  -- ��� ����
    with grant option; -- ������ �ο��� �� �ִ� ����
    
-- ���� ȸ��
revoke select on testy from c##dongikshin;
    
    