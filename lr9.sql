--1 Найбільша відстань транспорту із мінімальних
select Max(min_vidstan)
from Transport;

--2 Загальна кількість мість у всіх транспортів
select Sum(kilkist_mist)
from Transport;

--3 Середня відстань
select Avg(vidstan)
from Ticket; 

--4. Найстарший водій
select surname, name, date_birthday
from Driver
where date_birthday = (select Min(date_birthday) from Driver); 

--5. Кількість маршрутів транспорту
select Transport.Transport_Mark  || ' ' || Transport.Transport_Model as "Транспорт", Count(Marshrut.id)
from Transport join Marshrut on Marshrut.transport = Transport.id
group by Transport.Transport_Mark || ' ' || Transport.Transport_Model;