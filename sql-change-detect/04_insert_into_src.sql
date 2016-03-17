-- insert test data into source table
-- blow away data in target table
begin
delete from  MAEW.TEST_SOURCE;
delete from  MAEW.TEST_TARGET;
Insert into MAEW.TEST_SOURCE (ANIMAL,GREETING) values ('Cat','Meow');
Insert into MAEW.TEST_SOURCE (ANIMAL,GREETING) values ('Dog','Wuff');
Insert into MAEW.TEST_SOURCE (ANIMAL,GREETING) values ('Chicken','Bockbock');
Insert into MAEW.TEST_SOURCE (ANIMAL,GREETING) values ('Fish','(inaudible)');
commit;
end;
