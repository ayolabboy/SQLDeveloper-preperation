-- 테이블 생성 
CREATE TABLE testy(
    idx number(10) PRIMARY KEY,
    tname varchar(20)
);

-- 데이터 조회 
SELECT * FROM testy;

-- 데이터 삽입 
INSERT INTO testy (idx,tname) VALUES ('2','TEST man2');

-- 데이터 업데이트 
UPDATE testy SET 
    tname = 'TEST man3'
    where idx = 2;

-- 데이터 삭제 
DELETE from testy
    WHERE idx = 2
;

