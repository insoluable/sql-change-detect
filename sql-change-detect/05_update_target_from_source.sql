/*
Inserts records from source into target table, hash each row, then inserts hash.
*/

begin
insert into TEST_TARGET select ANIMAL,GREETING, NULL from TEST_SOURCE;
commit;
update MAEW.TEST_TARGET
set ROW_HASH = ORA_HASH(CONCAT(ANIMAL,GREETING));
commit;
end;