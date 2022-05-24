--1. Процедура видалення
create or replace procedure DeleteDriver(val_id int)
as 
begin
    delete from Driver where id = val_id;
end;

insert into Driver(id, name) values (999, 'Driver');

select * from Driver;

execute DeleteDriver(999);

select * from Driver;

--2. Середня відстань
create or replace function AvgVidstan
return int is
    fnresult int := 0;
begin
    select Avg(vidstan) into fnresult
    from Ticket; 
    
    return fnresult;
end;

select AvgVidstan
from dual;

--3. Тригери
--Каскадне оновлення таблиці трапспорту, при видаленні типу
create or replace trigger trigger_transport
    before delete
    on TransportType 
    for each row
begin
    update Transport SET transport_type = null where transport_type= :old.id;
end;

insert into TransportType values (99, 'Type');
insert into Transport(id, transport_mark, transport_type) values (99, 'Mark', 99);

select * from TransportType;
select * from Transport;

delete from TransportType where id = 99;

ііііі
select * from TransportType;
select * from Transport;

