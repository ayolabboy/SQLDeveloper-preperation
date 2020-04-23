/*
-- ���̺� ����, PK ���
CREATE TABLE User_info (
       idx number(10),
       user_name varchar2(20) not null,
       user_age number(20) default 1,
       create_date date default sysdate,
       constraint  user_idx_pk primary key(idx)
    
);
DESC User_info
drop table User_info
*/

-- PK, FK
CREATE TABLE DEPT(
    deptno number(10) primary key,
    deptname varchar2(20)
);

CREATE TABLE EMP(
    empno number(10),
    empname varchar2(20),    
    deptno number(10),
    constraint emppk primary key(empno),
    constraint deptpk foreign key(deptno)
    references dept(deptno)
     
);

/*
���� ����(Constraints)
���̺� �������� �������� ���Ἲ�� �������ִ� ��Ģ.(���� ����) ���̺� �����Ͱ� �Է�, ����, 
�����ǰų� ���̺��� ����, ����� ���, �߸��� Ʈ������� ������� �ʵ��� ������ ������ ���ɼ���
 �ִ� �۾��� �����ϴ� ������ ����Ѵ�. Ư�� PK�� FK�� ���̺��� �ʼ���ҷν� ��� ���̺��� �̵� 
 �� �� �ϳ� �̻��� �ݵ�� �����ϰ� �ִ�. ����Ŭ���� �����ϴ� ���������� ������ ������ ����.

PRIMARY KEY  ���̺� �� �ϳ��� ���� �����ϸ�, �����ϰ� �ĺ��� �� �ִ� �÷�. ���� �ε��� ������.
FOREIGN KEY  �ڽ� ���̺� ���� (�ݴ��, �����Ǵ� ���̺��� �θ� ���̺�. �θ� ���̺��� ������ �Ұ�������) 
UNIQUE KEY  �ߺ� ���� ������� �ʴ� ����Ű. ���� �ε��� ������.
NOT NULL  null ���� ������� ����
CHECK  �÷��� ���� �ԷµǱ� ���� ������ Ȯ���Ѵ� (if ������ ��ġ�Ѵٸ�, ���� �Է��ϰڴ�)

-- ����Ű(�ܷ�Ű, FORIGN KEY)

�� ���̺����� ������ �����ϰ� ���� ����( ��ü���� ���Ἲ ����)
�θ����̺��� ���� ��������� �ڽ����̺��� �ۼ�
FORIGN KEY�� �θ��� PRIMARY KEY, UNIQUE�� ���� �� �� �ִ�.!!!!!!!!!!!!!!!!
�θ����̺��� �÷���� �ڽ� ���̺��� �÷����� �޶� ���踦 ���� �� �� �ִ�.
�������������� ������ ��� �θ����̺� ���� ����Ű���� �ڽ����̺� �߰��ϰų� ���� �� �� ����.
�������������� ������ �ڽ����̺� �����ϴ� ���� �θ����̺��� ������ �� ����.
ON DELETE CASCADE �ɼ��� �ο��ϸ� �θ����� �������� �ڽĵ� �ڵ����� �����ȴ�.
ON DELETE SET NULL �ɼ��� �ο��ϸ� �θ����� �������� �ڽ��� NULL�� �ȴ�.
���谡 ������ ��� �ڽ����̺��� ���� �����ϰ� �θ����̺��� �����ؾ� �Ѵ�.
DROP���� CASCADE CONSTRAINTS �ɼ��� �ο��Ͽ� �θ����̺��� �����ϸ� �θ�� �������ǰ� ���輳���� ���Ű� �ȴ�.


*/