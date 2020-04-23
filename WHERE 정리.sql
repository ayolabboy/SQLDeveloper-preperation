
SELECT * FROM testy,testy2 ;

-- 기초 연산 
SELECT * FROM testy 
WHERE idx = 1;

SELECT * FROM testy 
WHERE idx != 1;

SELECT * FROM testy 
WHERE idx <> 1;

SELECT * FROM testy 
WHERE idx > 1;

SELECT * FROM testy 
WHERE idx =1 AND idx <>2;

SELECT * FROM testy 
WHERE idx =1 OR idx =2;

SELECT * FROM testy 
WHERE idx BETWEEN 1 AND 3;

SELECT * FROM testy 
WHERE tname LIKE '%test%';

SELECT * FROM testy 
WHERE idx IN (1,2,3,4);

SELECT * FROM testy 
WHERE idx IS NULL;

SELECT * FROM testy 
WHERE idx IS NOT NULL;

-- 해당 값이 NULL이면 문구 출력 
SELECT idx,tname,NVL(tname, 'here is null!!') FROM testy;
-- 해당 값이 NULL이면 첫 번째 문구, 아니면 두 번째 문구 출력 
SELECT idx,tname,NVL2(tname, 'here is not null!!','here is null') FROM testy;

-- 두개의 값이 같으면 NULL, 다르면 첫 번째 값 반환 
SELECT NULLIF(b.tname,a.tname) FROM
testy a ,
testy2 b
where a.idx = 6 
and b.idx = 6;

-- 해당값이 NULL이면 대체값 반환 
SELECT tname,COALESCE(tname,'1') FROM testy;



/* NVL과 COALESCE 차이
COALESCE은 ANSI-92 표준의 일부인 더 현대적인 기능입니다.
NVL은 (는) Oracle에 따라 다르며 표준이 있기 전에 80에서 소개되었습니다.
두 값의 경우 동의어입니다.
그러나 그것들은 다르게 구현됩니다.
NVL은 항상 두 인수를 모두 평가하지만 COALESCE은 (는) 첫 번째 비 NULL을 찾을 때마다 평가를 중지합니다 
(시퀀스 NEXTVAL과 같은 일부 예외가 있음).

NVL은 첫 번째 매개 변수의 데이터 유형으로 암시 적 변환을 수행하므로 다음과 같은 오류는 발생하지 않습니다.
select nvl('a',sysdate) from dual;

COALESCE는 일관된 데이터 유형을 기대합니다.
select coalesce('a',sysdate) from dual;

'일관되지 않은 데이터 유형 오류'가 발생합니다.
*/