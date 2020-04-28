
-- update 
select * from testy; 

update testy set
t_age = 12
where idx < 3;

update testy set
t_sex = 'female'
where idx >= 2;