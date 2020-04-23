
SELECT * FROM testy,testy2 ;

-- ���� ���� 
SELECT * FROM testy 
WHERE idx = 1;

SELECT * FROM testy 
WHERE idx != 1;

SELECT * FROM testy 
WHERE idx <> 1;

SELECT * FROM testy 
WHERE idx > 1;

SELECT * FROM testy 
WHERE idx =1 AND idx <>2;

SELECT * FROM testy 
WHERE idx =1 OR idx =2;

SELECT * FROM testy 
WHERE idx BETWEEN 1 AND 3;

SELECT * FROM testy 
WHERE tname LIKE '%test%';

SELECT * FROM testy 
WHERE idx IN (1,2,3,4);

SELECT * FROM testy 
WHERE idx IS NULL;

SELECT * FROM testy 
WHERE idx IS NOT NULL;

-- �ش� ���� NULL�̸� ���� ��� 
SELECT idx,tname,NVL(tname, 'here is null!!') FROM testy;
-- �ش� ���� NULL�̸� ù ��° ����, �ƴϸ� �� ��° ���� ��� 
SELECT idx,tname,NVL2(tname, 'here is not null!!','here is null') FROM testy;

-- �ΰ��� ���� ������ NULL, �ٸ��� ù ��° �� ��ȯ 
SELECT NULLIF(b.tname,a.tname) FROM
testy a ,
testy2 b
where a.idx = 6 
and b.idx = 6;

-- �ش簪�� NULL�̸� ��ü�� ��ȯ 
SELECT tname,COALESCE(tname,'1') FROM testy;



/* NVL�� COALESCE ����
COALESCE�� ANSI-92 ǥ���� �Ϻ��� �� �������� ����Դϴ�.
NVL�� (��) Oracle�� ���� �ٸ��� ǥ���� �ֱ� ���� 80���� �Ұ��Ǿ����ϴ�.
�� ���� ��� ���Ǿ��Դϴ�.
�׷��� �װ͵��� �ٸ��� �����˴ϴ�.
NVL�� �׻� �� �μ��� ��� �������� COALESCE�� (��) ù ��° �� NULL�� ã�� ������ �򰡸� �����մϴ� 
(������ NEXTVAL�� ���� �Ϻ� ���ܰ� ����).

NVL�� ù ��° �Ű� ������ ������ �������� �Ͻ� �� ��ȯ�� �����ϹǷ� ������ ���� ������ �߻����� �ʽ��ϴ�.
select nvl('a',sysdate) from dual;

COALESCE�� �ϰ��� ������ ������ ����մϴ�.
select coalesce('a',sysdate) from dual;

'�ϰ����� ���� ������ ���� ����'�� �߻��մϴ�.
*/