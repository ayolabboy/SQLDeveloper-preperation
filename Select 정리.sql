-- 실행 순서 
select t_sex --5
    from testy -- 1
where idx < 5 -- 2
group by t_sex --3
having count(*) > 1 --4
order by t_sex;-- 6

select * from testy
;

select * from testy
where idx = 3
;

select * from testy
order by idx desc;

select distinct t_sex from testy;

select idx,t_sex as "성별" from testy;

select decode(idx,5,'true','false') 
    from testy;
    
select case
            when idx < 2 then 'group A'
            when idx between 2 and 3 then 'group B'
            else 'group C'
        end 
        from testy
        ;
        
select * from testy
where rownum < 4;
