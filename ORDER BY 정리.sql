-- order by 
-- order by�� �������� ������ pk�� �������� �������� �ڵ�����, ���ϸ� ���� �� �ִ�.
select * from testy;

-- ��������
select * from testy 
    order by idx asc;
    
-- ��������
select * from testy 
    order by idx desc;
    
-- �������� 
select * from testy 
    order by t_age,idx desc; -- �������� ���� ��(idx >> t_age)
