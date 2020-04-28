-- order by 
-- order by를 설정하지 않으면 pk를 기준으로 오름차순 자동정렬, 부하를 줄일 수 있다.
select * from testy;

-- 오름차순
select * from testy 
    order by idx asc;
    
-- 내림차순
select * from testy 
    order by idx desc;
    
-- 다중정렬 
select * from testy 
    order by t_age,idx desc; -- 역순으로 실행 됨(idx >> t_age)
