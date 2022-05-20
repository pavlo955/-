--1. Підрахувати кількість квитків з однаковим пунктом
select punkt, Count(id)
from Ticket
group by punkt;

--2. Водії, у яких номер телефона починається на 094 та 096
select surname, name, phone from DRIVER
    where phone like '094%' or phone like '096%';   

--3. Водії відсортовані за віком
select surname, name, date_birthday
from DRIVER
order by date_birthday desc;

--4. Водії у яких прізвище починаєтся на Є
select surname, name from DRIVER
    where surname like 'Є%';   

--5. Найстарший водій
select surname, name, date_birthday
from DRIVER
order by date_birthday asc
fetch first 1 rows only;

--6. Кількість певного типу транспорту
select TransportType.name, Count(Transport.id)
from TransportType join Transport on TransportType.id = Transport.Transport_Type
group by TransportType.name;

--7. Транспорти, у яких кількість мість меньше за 20 але більше за 10 
select transport_mark, transport_model, kilkist_mist
from Transport
where kilkist_mist < 20 and kilkist_mist > 10;

--8. Кількість маршрутів, кожного дня, де кількість маршрутів меньше за 3
select to_char(timestart, 'Month'), Count(id)
from Rozklad
group by to_char(timestart, 'Month')
having Count(id) < 3
order by to_char(timestart, 'Month');

--9. Транспорти у яких мінімальна відстань знаходиться між 45 та 65
select transport_mark, transport_model, min_vidstan
from Transport
where min_vidstan between 45 and 65;

--10. Транспорти, у яких марка закінчується НЕ на З
select transport_mark, transport_model
from Transport
where transport_mark not like '%З';