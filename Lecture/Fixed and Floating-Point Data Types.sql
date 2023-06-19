CREATE TABLE test (
    test DECIMAL(5,3)
);

INSERT test VALUES (10.5);

SELECT 
    *
FROM
    test;

INSERT INTO test VALUES (12.55555);

ALTER TABLE `employees`.`test` 
ADD COLUMN `test_fl` FLOAT(5,3) NULL AFTER `test`;

INSERT INTO test(test_fl) VALUES (14.55555);

INSERT INTO test(test) VALUES (16.55555);