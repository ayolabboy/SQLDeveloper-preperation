/*
-- 테이블 생성, PK 사용
CREATE TABLE User_info (
       idx number(10),
       user_name varchar2(20) not null,
       user_age number(20) default 1,
       create_date date default sysdate,
       constraint  user_idx_pk primary key(idx)
    
);
DESC User_info
drop table User_info
*/

-- PK, FK
CREATE TABLE DEPT(
    deptno number(10) primary key,
    deptname varchar2(20)
);

CREATE TABLE EMP(
    empno number(10),
    empname varchar2(20),    
    deptno number(10),
    constraint emppk primary key(empno),
    constraint deptpk foreign key(deptno)
    references dept(deptno)
     
);

/*
제약 조건(Constraints)
테이블 단위에서 데이터의 무결성을 보장해주는 규칙.(오류 방지) 테이블에 데이터가 입력, 수정, 
삭제되거나 테이블이 삭제, 변경될 경우, 잘못된 트랜잭션이 수행되지 않도록 결함을 유발한 가능성이
 있는 작업을 방지하는 역할을 담당한다. 특히 PK와 FK는 테이블의 필수요소로써 모든 테이블은 이들 
 둘 중 하나 이상을 반드시 포함하고 있다. 오라클에서 제공하는 제약조건의 종류는 다음과 같다.

PRIMARY KEY  테이블 당 하나만 정의 가능하며, 유일하게 식별할 수 있는 컬럼. 고유 인덱스 생성됨.
FOREIGN KEY  자식 테이블에 설정 (반대로, 참조되는 테이블이 부모 테이블. 부모 테이블은 삭제가 불가능해짐) 
UNIQUE KEY  중복 값을 허용하지 않는 고유키. 고유 인덱스 생성됨.
NOT NULL  null 값을 허용하지 않음
CHECK  컬럼에 값이 입력되기 전에 조건을 확인한다 (if 조건이 일치한다면, 값을 입력하겠다)

-- 참조키(외래키, FORIGN KEY)

두 테이블간으로 연결을 설정하고 강제 적용( 개체간의 무결성 유지)
부모테이블이 먼저 만들어지고 자식테이블을 작성
FORIGN KEY는 부모의 PRIMARY KEY, UNIQUE만 설정 할 수 있다.!!!!!!!!!!!!!!!!
부모테이블의 컬러명과 자식 테이블의 컬럼명이 달라도 관계를 설정 할 수 있다.
참조제약조건이 설정된 경우 부모테이블에 없는 참조키값은 자식테이블에 추가하거나 수정 할 수 없다.
참조제약조건이 설정된 자식테이블에 존재하는 값을 부모테이블에서 제거할 수 없다.
ON DELETE CASCADE 옵션을 부여하면 부모쪽이 지워지면 자식도 자동으로 삭제된다.
ON DELETE SET NULL 옵션을 부여하면 부모쪽이 지원지면 자식은 NULL이 된다.
관계가 설정된 경우 자식테이블을 먼저 삭제하고 부모테이블을 삭제해야 한다.
DROP에서 CASCADE CONSTRAINTS 옵션을 부여하여 부모테이블을 삭제하면 부모는 삭제가되고 관계설정도 제거가 된다.


*/