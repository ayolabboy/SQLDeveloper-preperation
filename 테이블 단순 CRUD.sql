-- ���̺� ���� 
CREATE TABLE testy(
    idx number(10) PRIMARY KEY,
    tname varchar(20)
);

-- ������ ��ȸ 
SELECT * FROM testy;

-- ������ ���� 
INSERT INTO testy (idx,tname) VALUES ('2','TEST man2');

-- ������ ������Ʈ 
UPDATE testy SET 
    tname = 'TEST man3'
    where idx = 2;

-- ������ ���� 
DELETE from testy
    WHERE idx = 2
;

