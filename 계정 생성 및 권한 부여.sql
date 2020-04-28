-- select * from ALL_USERS;
-- select * from DBA_USERS;

SELECT * FROM DBA_USERS
WHERE USERNAME = 'C##DONGIKSHIN';

SELECT * FROM DBA_ROLE_PRIVS
WHERE GRANTEE = 'C##DONGIKSHIN' ;

SELECT * FROM DBA_SYS_PRIVS
WHERE GRANTEE = 'C##DONGIKSHIN' ;

-- 유저 생성
-- CREATE user c##dongikshin IDENTIFIED BY ehddlr0901$; 
-- 권한 부여
-- GRANT CREATE USER TO c##dongikshin; -- 유저생성 권한 
-- GRANT SELECT ANY TABLE TO c##dongikshin; -- 테이블 조회 권한
-- GRANT CREATE ANY TABLE TO c##dongikshin; -- 테이블 생성 권한 
-- GRANT CREATE SESSION TO c##dongikshin; -- DB 접속 권한
-- GRANT CREATE TABLE TO c##dongikshin; -- 테이블 생성 권한
-- GRANT CREATE VIEW TO c##dongikshin; -- 뷰 생성 권한
-- GRANT CREATE PROCEDURE TO c##dongikshin; -- 프로시저 생성 권한
-- GRANT CREATE SEQUENCE TO c##dongikshin; -- 시퀀스 생성 권한

-- https://aileen93.tistory.com/17 
-- https://jhroom.tistory.com/168

-- 권한 부여
grant 
    select,insert,delete,update -- 권한 리스트 
    on testy -- 권한 줄 테이블
    to c##dongikshin  -- 대상 유저
    with grant option; -- 권한을 부여할 수 있는 권한
    
-- 권한 회수
revoke select on testy from c##dongikshin;
    
    