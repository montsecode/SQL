SELECT count(*) as total FROM usairlineflights2.flights;
SELECT origin, avg(ArrDelay) as prom_arribades, avg(DepDelay) as prom_sortides FROM usairlineflights2.flights
 group by origin
 order by origin
SELECT origin, colYear, colMonth, avg(ArrDelay) as prom_arribades FROM usairlineflights2.flights
group by origin, colYear, colMonth
order by origin;
SELECT City, colYear, colMonth, avg(ArrDelay) as prom_arribades FROM usairlineflights2.flights left join usairlineflights2.usairports on  origin = iata
group by City, colYear, colMonth
order by city;
SELECT UniqueCarrier, colYear, colMonth, avg(ArrDelay) as avg_delay, sum(Cancelled) as total_cancelled FROM usairlineflights2.flights
where Cancelled > 0
group by UniqueCarrier, colYear, colMonth
order by total_cancelled desc;

SELECT TailNum, sum(Distance) as totalDistance FROM usairlineflights2.flights
where TailNum != ""
group by TailNum
order by totalDistance desc
limit 10;
SELECT UniqueCarrier, avg(arrDelay)as avgDelay FROM usairlineflights2.flights
group by UniqueCarrier
having avgDelay > 10
order by avgDelay desc;