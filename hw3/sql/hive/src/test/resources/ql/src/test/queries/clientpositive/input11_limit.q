CREATE TABLE dest1(key INT, value STRING) STORED AS TEXTFILE;

EXPLAIN
FROM src
INSERT OVERWRITE TABLE dest1 SELECT src.key, src.value WHERE src.key < 100 LIMIT 10;

FROM src
INSERT OVERWRITE TABLE dest1 SELECT src.key, src.value WHERE src.key < 100 LIMIT 10;

SELECT dest1.* FROM dest1 ORDER BY dest1.key ASC, dest1.value ASC;
