
-- 테이블 생성 
CREATE TABLE testy(
    idx number(10) PRIMARY KEY,
    tname varchar(2)
);

-- 뷰 생성
CREATE VIEW do_T AS
    SELECT * FROM testy
    where idx = 0;

-- 뷰 실행 
SELECT * FROM do_T;

-- 뷰 삭제 
DROP VIEW do_T;


/*
adv :
특정 칼럼을 조회하기에 보안이 높아짐
데이터 관리가 쉬워짐 
SELECT 문이 간결해짐 
하나의 테이블에 여러개 뷰를 생성 할 수 있다

dis_adv : 
뷰에 독자적 인덱스 생성 불가
insert, update, delete 불가
데이터 구조 변경 안됨 

** 어떤 조건문이 반복될 때 사용하면 용이할 듯 
*/