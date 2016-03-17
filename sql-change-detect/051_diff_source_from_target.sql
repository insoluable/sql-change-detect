-- Records in target changed in or deleted from source.

select  ANIMAL,GREETING
from MAEW.TEST_TARGET

minus
select ANIMAL,GREETING
from MAEW.TEST_SOURCE;
