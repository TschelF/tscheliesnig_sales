reate or replace procedure CT_Customer is

cnt NUMBER;

Begin
  Select count(*) into cnt
  from all_tables
  where table_name = 'CUSTOMER' and OWNER = USER;

if cnt = 0 then 

execute immediate 'create Table Customer
                    (
                      costumer_id Integer primary key,
                      first_name varchar(20),
                      credit Decimal(10,2)
                    )';
                   
Commit;

end if;

  
End CT_Customer;