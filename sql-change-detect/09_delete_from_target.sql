-- Blows away records in target table that are not in source
begin
delete
from TEST_TARGET t1
where exists
(select 1
from
TEST_AUDIT t2
where
t1.ROW_HASH = t2.ROW_HASH
and
t2.OP = 'delete');
commit;
end;