

select * from testy
    where idx in (select testy_idx from testy2
        where idx < 10);
        
        
select (
    select product_name from testy2 t2 
        where t2.testy_idx = t1.idx
        and t2.idx = 2
 ) as a
 from testy t1 ;