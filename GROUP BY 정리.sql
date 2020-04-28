/* test set 
update testy set
t_age = 12
where idx < 3;

update testy set
t_sex = 'female'
where idx >= 2;

select * from testy; 
*/
select t_age,count(*),sum(t_age),avg(t_age),max(t_age),min(t_age),stddev(t_age) from testy
    group by t_age;
    
    
select t_age,count(*),sum(t_age) from testy
    group by t_age
    having sum(t_age) >0;