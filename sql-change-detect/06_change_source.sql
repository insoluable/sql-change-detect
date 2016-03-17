/*
Now change the source table by running the query below.
Add a new record, change an existing record, delete a record. Re-run diff queries 051, 052.
You should see the differences. 
*/
begin
update MAEW.TEST_SOURCE 
set GREETING = 'bloop-bloop'
where lower(ANIMAL) = 'fish';

delete from MAEW.TEST_SOURCE
where lower(ANIMAL) = 'dog';

insert into MAEW.TEST_SOURCE (ANIMAL, GREETING) values ('Mouse','Squeak');

commit;
end;