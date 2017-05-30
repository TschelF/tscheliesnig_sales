create or replace 
trigger trg_costumer
Before insert or update
on CUSTOMER
referencing old as oldRow new as newRow
for each row
declare
begin

if (:newRow.CREDIT < 0) then 
  raise_application_error(-209999, 'Credit has to be 0 or higher');
  
end if;

end trg_costumer;