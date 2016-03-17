-- Records in target but not in source. Persist temporarily in audit table.
-- TODO add where exists to explicitly handle case where no records are returned, i.e., source and target tables are identical  
begin

-- Need to purge the audit table each time change detection in run
delete from TEST_AUDIT;
commit;

insert into TEST_AUDIT
select  ROW_HASH, 'delete'
from MAEW.TEST_TARGET

minus
select ORA_HASH(CONCAT(ANIMAL,GREETING)), 'delete'
from TEST_SOURCE;
commit;
end;