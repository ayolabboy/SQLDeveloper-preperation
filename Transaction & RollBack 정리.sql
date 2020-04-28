
/*
------- 트랜잭션 ---------------- |     |------- DB --------|
데이터 삽입,변경 전, 후 데이터 보관   | >>> | 변경 후 데이터베이스  |
-------------------------------- |     |-------------------| 
*/

-- 
select * from testy;
delete from testy;
rollback; -- 사용시 savepoint와 관계없이 롤백 됨
select * from testy;

--
savepoint t1;
select * from testy;
delete from testy;
select * from testy;
rollback to t1;
select * from testy;
