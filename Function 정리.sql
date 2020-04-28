
desc dual;

-- string type function 
select 
    ascii('a'),
    substr('abc',1,2),
    concat('a','b'),
    lower('Abc'),
    upper('aBC'),
    length('abc'),
    ltrim('  abc'),
    rtrim('abc  '),
    trim('  abc   '),
    sysdate,
    extract(year from sysdate),
    to_char(sysdate, 'YYYY-MM-DD')
from dual;

-- number type function 
select 
    ABS(-999),
    sign(-999),sign(999),sign(0),
    mod(1,2),
    ceil(1.5), -- 올림
    floor(1.5), -- 내림
    round(1.577,2), -- 셋째 자리 반올림
    trunc(1.557,2) -- 셋째 자리 절삭
from dual; 