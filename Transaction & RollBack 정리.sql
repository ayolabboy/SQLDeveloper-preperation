
/*
------- Ʈ����� ---------------- |     |------- DB --------|
������ ����,���� ��, �� ������ ����   | >>> | ���� �� �����ͺ��̽�  |
-------------------------------- |     |-------------------| 
*/

-- 
select * from testy;
delete from testy;
rollback; -- ���� savepoint�� ������� �ѹ� ��
select * from testy;

--
savepoint t1;
select * from testy;
delete from testy;
select * from testy;
rollback to t1;
select * from testy;
