---- TO SEE ALL THE DATA
select *
from Analysis; 

---- What is the total number of passengers from Mexico in June 2021?
Select Country,Month, Total_passengers
from Analysis
Where Country ='Mexico'
and Month ='2021-06-01';

---- Which country had the highest number of passengers in May 2021?
Select Country,Month, Total_passengers
from Analysis
where Month ='2021-05-01'
order by Total_passengers desc;


---- In April 2021, what were the total passenger numbers for all countries combined?
SELECT   SUM (Total_passengers) AS Total_passengers_Numbers
FROM Analysis
WHERE MONTH ='2021-04-01';

---- How many passengers traveled from Japan to the United States in March 2021?
Select Country,Month, Total_passengers
from Analysis
Where Country ='Japan'
and Month ='2021-03-01';

---- What is the trend in the number of passengers from Canada over the months of February, March, April, and May 2021?
Select Country,Month, Total_passengers
from Analysis
Where Country ='Canada'
and Month = '2021-03-01'
or Country ='Canada'
and Month ='2021-04-01'
or Country ='Canada'
and Month =  '2021-05-01';

 or

Select Country,Month, Total_passengers
from Analysis
Where Country ='Canada'
and Month between '2021-03-01' and '2021-05-01';

---- Which country experienced the highest increase in the number of passengers between April and June 2021?
Select Country, sum (Total_passengers) as Total_passengers_Numbers
from Analysis
Where Month between '2021-04-01' and '2021-06-01'
group by country
order by Total_passengers_Numbers desc;

---- What is the total number of passengers from the United Kingdom in each of the reported months?
Select country, Month, Total_passengers
from Analysis
Where country = 'United kingdom' 
Order by Month desc;

----- In June 2021, which country had the lowest number of passengers?
Select country,Month,Total_passengers
from Analysis
Where Month = '2021-06-01'
order by Total_passengers;

---- Compare the total passengers from Germany and France in May 2021.
Select country,Month,Total_passengers
from Analysis
Where Country = 'Germany' and Month = '2021-05-01'
or Country ='France' and Month = '2021-05-01';

---- What was the total number of passengers from China in March 2021?
Select country,Month,Total_passengers
from Analysis
Where Country = 'China' and Month = '2021-03-01';

----Identify the countries where the number of passengers increased consistently from February to June 2021.
Select country, Month, (Total_passengers) 
from Analysis
Where Month between '2021-02-01' and '2021-06-01'
group by country,Month,Total_passengers
Order by Total_passengers desc;

----for total summation from february to june 2021. 
Select country, Sum(Total_Passengers) as sum_Total_passenger
from Analysis
Where Month between '2021-02-01' and '2021-06-01'
Group by country
Order by sum_Total_passenger desc;

---- What is the average number of passengers per month for each country?
Select country, month, AVG(Total_passengers) as AVG_Total_passengers
from Analysis
GROUP BY Country,Month
Order by month;

-----Which countries had a decrease in the number of passengers from May to June 2021?
Select country, Month, (Total_passengers) 
from Analysis
Where Month between '2021-05-01' and '2021-06-01'
group by country,Month,Total_passengers
Order by Country asc;

----for total summation from february to june 2021. 
Select country, Sum(Total_Passengers) as sum_Total_passenger
from Analysis
Where Month between '2021-05-01' and '2021-06-01'
Group by country
Order by sum_Total_passenger asc;

------What is the percentage change in the total number of passengers from the United States in March 2021 compared to April 2021?
Select month, SUM(Total_passengers) AS Sum_Total_passengers
from Analysis
Where Month = '2021-03-01' 
or Month = '2021-04-01' 
Group by Month;


----Which country had the highest total number of passengers in the first quarter of 2021 (January to March)?
Select country, Sum(Total_Passengers) as sum_Total_passenger
from Analysis
Where Month between '2021-01-01' and '2021-05-01'
Group by country
Order by sum_Total_passenger desc;


----- In which month did Argentina have the highest number of passengers?
Select country, month, (Total_Passengers) 
from Analysis
Where Country = 'Argentina' and Month between '2021-01-01' and '2021-12-01'
Order by Total_Passengers desc;

---- What is the total number of passengers from all countries combined for each month in 2021?Select month, Sum(Total_Passengers) as Sum_Total_Passengersfrom Analysisgroup by Month;---- How many countries had a decrease in passengers from June 2021 compared to May 2021?Select country, month,Total_Passengersfrom Analysiswhere Month = '2021-05-01' or month = '2021-06-01'order by Country