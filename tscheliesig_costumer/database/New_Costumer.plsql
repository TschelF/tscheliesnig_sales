create or replace 
procedure proc_new_customer(
              costumer_id     out Number,
              first_name      in  varchar2,
              credit      in out  Number) is
begin

Select SEQ_COSTUMER_ID.nextval into costumer_id
from DUAL;

if (credit is null) then
  Select 100 into credit
  from dual;
end if;

insert into customer values(costumer_id,first_name,credit);

end proc_new_customer;