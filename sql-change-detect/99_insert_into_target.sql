-- Insert records in source that are not in target
-- Run this script the re-run the diff queries.
begin
insert into TEST_TARGET (ANIMAL, GREETING, ROW_HASH) 
select t1.ANIMAL, t1.GREETING, ORA_HASH(CONCAT(t1.ANIMAL, t1.GREETING))
from TEST_SOURCE t1
join
TEST_AUDIT t2
on
ORA_HASH(CONCAT(t1.ANIMAL, t1.GREETING)) = t2.ROW_HASH
where
t2.OP = 'insert';
commit;
end;