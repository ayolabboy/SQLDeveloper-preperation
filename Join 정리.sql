

select * from testy;
select * from testy2;
select * from testy3;

-- � 
select * from testy t1,testy2 t2
where t1.idx = t2.testy_idx;

select t1.t_name,t1.t_age,t1.t_sex,t2.product_name,t2.product_price,t2.create_date from testy t1 
    join testy2 t2 on t2.testy_idx = t1.idx
order by t2.idx ;

-- ��
select t1.t_name,t1.t_age,t1.t_sex,t2.product_name,t2.product_price,t2.create_date from testy t1 
    left join testy2 t2 on t2.testy_idx = t1.idx
order by t2.idx ;

select t1.t_name,t1.t_age,t1.t_sex,t2.product_name,t2.product_price,t2.create_date from testy t1 
    right join testy2 t2 on t2.testy_idx = t1.idx
order by t2.idx ;

-- ���� ���� �� ���̺��� ����
-- ���α��� ���⿡ ī�׽þ� �� (Table�鿡 �����ϴ� �� ������ ���� ��ŭ�� ������� ��ȯ�Ǵ� ��)
select * from testy cross join testy2;



-- intersect :: ������ ������ ���� ���̺� ���� �����ϴ� ������ ��� (������)
select * from testy
intersect
select * from testy3;

-- union :: ������ ������ ���� ���̺� ���� ��ü ������ ��� (������), �ߺ� ������ ���� �� sort �߻�
select * from testy
union
select * from testy3;

-- union :: ������ ������ ���� ���̺� ���� ��ü ������ ��� (������), �ߺ� ������ ���� 
select * from testy
union all
select * from testy3;


-- minus :: ������ ������ ���� ���̺� ���� �������� �ʴ� ������ ���(������)
select * from testy
minus
select * from testy3;

select * from testy3
minus
select * from testy;




