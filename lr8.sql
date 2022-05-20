--ЛР8--

--1. Кількість транспортів кожного типу
select TRANSPORTTYPE.name, Count(TRANSPORT.id)
from TRANSPORT right join TRANSPORTTYPE on TRANSPORT.transport_type = TRANSPORTTYPE.id
group by TRANSPORTTYPE.name;

--2. Розклад відсортований(в спадаючому) за датою початку
select * from Rozklad
order by timestart desc;

--3. Транспорт, відсортований за маркою та моделю
select * from Transport
order by transport_mark, transport_model;

--4 Кількість водіїв працюючих в різні зміни
select zmina, Count(id)
from Driver
group by zmina
order by zmina;

--5. Водії, відсортовані за прізвищем
select surname, name
from DRIVER
order by surname asc;

--6 Кількість квитків маршруту
select Marshrut.tras_num, Count(Ticket.id)
from Marshrut right join Ticket on Ticket.marshrut = Marshrut.id
group by Marshrut.tras_num;

--7. Кількість маршрутів, кожного місяця
select to_char(timestart, 'Month'), Count(id)
from Rozklad
group by to_char(timestart, 'Month')
order by to_char(timestart, 'Month');

--8. Транспорт, відсортований за максимальною відстаню
select * 
from Transport
order by max_vidstan desc;

--9. Кількість водіїв, які народились в вказаному році, відсортовано
select to_char(date_birthday, 'YYYY'), Count(id)
from Driver
group by to_char(date_birthday, 'YYYY')
order by to_char(date_birthday, 'YYYY');

--10 Сортувати транспорти за кількістю мість
select transport_mark, transport_model, kilkist_mist
from Transport
order by kilkist_mist;