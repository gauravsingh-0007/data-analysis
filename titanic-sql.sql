select * from Titanic;
--total passenger
select name,count(*) from Titanic group by name;

--survibor passenger list 0 is dead and 1 is alive

select survived,count(*) from Titanic group by survived;

--total number of female and male
select sex ,count(*) from Titanic group by sex;

-- avg age of passenger
select avg(age) from Titanic;

--list of fare where fare is greater than 100

select fare, count(*) from Titanic where fare>=100 group by fare;
 -- list of passenger of passsenegr by pclass

 SELECT Pclass, COUNT(*) AS total_passengers
FROM Titanic
GROUP BY Pclass
ORDER BY Pclass;


--list of children age less than 10 0 is dead and 1 is suvived
select survived,age from Titanic where age<=10 group by survived,age;
--list of mostly common assigned 
SELECT Cabin, COUNT(*) AS count
FROM Titanic
WHERE Cabin IS NOT NULL AND Cabin <> ''
GROUP BY Cabin
ORDER BY count DESC
LIMIT 1;

--Number of passengers who embarked from each port 
select embarked,count(*) from Titanic group by embarked;

--avg fare for each class passnger class
select pclass,avg(fare) from Titanic group by pclass;

 --list of sibling and spouse
select sibsp,count(*) from Titanic group by sibsp order by sibsp;


-- unnique tickets 
select distinct(ticket) from Titanic;













