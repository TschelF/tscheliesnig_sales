Create or replace procedure CT_Customer is

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

Select count(*) into cnt
from all_sequences
where sequence_name = 'COSTUMER_ID_SEQ' 
and sequence_owner = USER;

if cnt = 0 then
execute immediate 'create sequence COSTUMER_ID_SEQ
                    start with     100
                    increment by   1
                    cache 20';
                    
commit;

end if;

  
End CT_Customer;

