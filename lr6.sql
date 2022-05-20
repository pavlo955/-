--1. Запит на виконання проекції (відображення) для таблиць БД.
drop view view1;
create view view1 as select distinct surname, name, phone from DRIVER;   
select * from view1;

--2. Запит на виконання складної проекції для таблиць БД
--Прізвище закінчуєтся на к
drop view view2;
create view view2 as select distinct surname, name, phone from DRIVER
    where surname like '%к';   
select * from view2;

--3. Запит на виконання селекції з використанням будь-якої складної умови відбору для таблиць БД.
select * from ROZKLAD 
where to_char(timestart, 'MM.YYYY') = to_char(SYSDATE, 'MM.YYYY');
 

--4. Запит на виконання натурального з’єднання у будь-яких таблицях вашої БД.
select TRANSPORT.id, transport.transport_mark,transport.transport_model, TRANSPORTTYPE.name
from TRANSPORT, TRANSPORTTYPE
where TRANSPORTTYPE.id = TRANSPORT.transport_type;

--5. Запит на виконання умовного з’єднання для таблиць вашої БД
select TRANSPORT.*,  transport.transport_mark,transport.transport_model
from TRANSPORT, TRANSPORTTYPE
where TRANSPORTTYPE.id = TRANSPORT.transport_type and TRANSPORT.max_vidstan < TRANSPORT.min_vidstan;