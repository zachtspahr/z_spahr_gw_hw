DROP table if exists table_one, table_two; 
CREATE TABLE table_one (
    column1 INT
    )
;
CREATE TABLE table_two (
    column3 INT
    )    
;
SELECT COUNT(*) from table_one;
SELECT COUNT(*) from table_two;
SELECT *
FROM table_one, table_two;
-- The answer is 250 rows. 
SELECT * FROM table_one;
Select * From table_two;
SELECT * FROM table_one,table_two;
-- The table becomes two columns. Each value in column_1 appears 10 times and each values in column_3 appears 25 times. 