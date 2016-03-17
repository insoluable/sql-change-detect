-- Records in source changed or not in target.

select  ANIMAL,GREETING
from MAEW.TEST_SOURCE

minus
select ANIMAL,GREETING
from MAEW.TEST_TARGET;

