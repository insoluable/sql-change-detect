-- Records in source but not in target
-- Need to persist the has in an audit table because we don't want to query 
-- 10s or 100s of fields, just the hash
-- Then insert into target
-- TODO add where exists to explicitly handle case where no records are returned, 
-- i.e., source and target tables are identical 
begin
insert into TEST_AUDIT
select ORA_HASH(CONCAT(ANIMAL,GREETING)),'insert' 
from TEST_SOURCE

minus
select  ROW_HASH,'insert'
from TEST_TARGET;
commit;
end;
