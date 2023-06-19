use sales;

/*
create table if not exists test (numbers int(10), words varchar(10));
*/

CREATE TABLE IF NOT EXISTS test (
    numbers 	INT(10),
    words 		VARCHAR(10)
);

SELECT 
    *
FROM
    test;

DROP TABLE test;
