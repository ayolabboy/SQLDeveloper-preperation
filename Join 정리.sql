

select * from testy;
select * from testy2;
select * from testy3;

-- 등가 
select * from testy t1,testy2 t2
where t1.idx = t2.testy_idx;

select t1.t_name,t1.t_age,t1.t_sex,t2.product_name,t2.product_price,t2.create_date from testy t1 
    join testy2 t2 on t2.testy_idx = t1.idx
order by t2.idx ;

-- 비등가
select t1.t_name,t1.t_age,t1.t_sex,t2.product_name,t2.product_price,t2.create_date from testy t1 
    left join testy2 t2 on t2.testy_idx = t1.idx
order by t2.idx ;

select t1.t_name,t1.t_age,t1.t_sex,t2.product_name,t2.product_price,t2.create_date from testy t1 
    right join testy2 t2 on t2.testy_idx = t1.idx
order by t2.idx ;

-- 조건 없이 두 테이블을 조인
-- 조인구가 없기에 카테시안 곱 (Table들에 존재하는 행 갯수를 곱한 만큼의 결과값이 반환되는 것)
select * from testy cross join testy2;



-- intersect :: 데이터 형식이 같은 테이블에 대해 교차하는 데이터 출력 (교집합)
select * from testy
intersect
select * from testy3;

-- union :: 데이터 형식이 같은 테이블에 대해 전체 데이터 출력 (합집합), 중복 데이터 제거 및 sort 발생
select * from testy
union
select * from testy3;

-- union :: 데이터 형식이 같은 테이블에 대해 전체 데이터 출력 (합집합), 중복 데이터 포함 
select * from testy
union all
select * from testy3;


-- minus :: 데이터 형식이 같은 테이블에 대해 교차하지 않는 데이터 출력(차집합)
select * from testy
minus
select * from testy3;

select * from testy3
minus
select * from testy;




