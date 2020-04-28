/*
              101                    -- master (level 1)
    102       103       104          -- level 2
 105        106  107  111            -- level 3 
108       109 100                    -- level 4
*/
CREATE TABLE DEP (
     DEP_CD NUMBER NOT NULL, -- 부서코드
     PARENT_CD NUMBER, -- 상위부서 코드
     DEPT_NAME VARCHAR2(100) NOT NULL, -- 부서이름
     PRIMARY KEY (DEP_CD)
);

INSERT INTO DEP VALUES ( 101, NULL, '총괄개발부');
INSERT INTO DEP VALUES ( 102, 101, '모바일개발센터');
INSERT INTO DEP VALUES ( 103, 101, '웹개발센터');
INSERT INTO DEP VALUES ( 104, 101, '시스템개발센터');

INSERT INTO DEP VALUES ( 105, 102, '쇼핑몰(모바일)');
INSERT INTO DEP VALUES ( 106, 103, '외주SI');
INSERT INTO DEP VALUES ( 107, 103, '쇼핑몰');
INSERT INTO DEP VALUES ( 108, 105, '전산지원팀');
INSERT INTO DEP VALUES ( 109, 106, '구축1팀');
INSERT INTO DEP VALUES ( 100, 106, '구축2팀');
INSERT INTO DEP VALUES ( 111, 104, 'ERP시스템');

select * from dep;

/*
SELECT [컬럼]...
FROM [테이블]
WHERE [조건]
START WITH [최상위 조건]
CONNECT BY [NOCYCLE][PRIOR 계층형 구조 조건];
*/

SELECT 
DEPT_NAME,
DEP_CD,
PARENT_CD,
LEVEL
FROM DEP 
START WITH PARENT_CD IS NULL --최상위노드 설정,
CONNECT BY PRIOR DEP_CD = PARENT_CD --부모노드와 자식노드 연결
order by level; -- 정렬 

SELECT 
LPAD(' ', 2*(LEVEL-1)) || DEPT_NAME AS DEPT_NAME, --레벨별 들여쓰기
DEP_CD,
PARENT_CD ,
LEVEL
FROM DEP 
START WITH PARENT_CD IS NULL --최 상위노드 설정,
CONNECT BY PRIOR DEP_CD = PARENT_CD;--부모노드와 자식노드 연결


