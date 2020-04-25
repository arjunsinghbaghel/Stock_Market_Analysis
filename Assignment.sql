# Task 1 . Creating Tables for 20 Day MA and 50 Day MA for all 6 stocks, queries are given below:

# i). ---------------------- bajaj stock ---------------------
select *
from bajaj;

desc bajaj;

alter table bajaj 
add tempDate varchar(50);

update bajaj 
set tempDate=str_to_date(date,"%d-%M-%Y");

alter table bajaj drop column Date;

alter table bajaj change column tempDate Date DATE;

# Creating bajaj1 table for 20 days moving average and 50 days moving average
create table bajaj1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from `bajaj`
group by `Date`
order by 1;

update `bajaj1`
set `20 Day MA` = null
limit 19;

update `bajaj1`
set `50 Day MA` = null
limit 49;


alter table bajaj1
modify `20 Day MA` float(10,2);

alter table bajaj1
modify `50 Day MA` float(10,2);

alter table bajaj1
modify `Close Price` float(10,2);

select *
from bajaj1;

# ii) -------------------- eicher_moters stock ---------------------------
select *
from eicher_motors;

desc eicher_motors;

alter table eicher_motors
add tempDate varchar(50);

update eicher_motors
set tempDate=str_to_date(date,"%d-%M-%Y");

alter table eicher_motors drop column Date;

alter table eicher_motors change column tempDate Date DATE;

# Creating Eicher1 table for 20 days moving average and 50 days moving average
create table Eicher1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from eicher_motors
group by `Date`
order by 1;

update `Eicher1`
set `20 Day MA` = null
limit 19;

update `Eicher1`
set `50 Day MA` = null
limit 49;

alter table Eicher1
modify `20 Day MA` float(10,2);

alter table Eicher1
modify `50 Day MA` float(10,2);

alter table Eicher1
modify `Close Price` float(10,2);

select *
from Eicher1;

# iii) -------------------- hero_motocorp stock ---------------------------

select *
from hero_motocorp;

desc hero_motocorp;

alter table hero_motocorp
add tempDate varchar(50);

update hero_motocorp
set tempDate=str_to_date(date,"%d-%M-%Y");

alter table hero_motocorp drop column Date;

alter table hero_motocorp change column tempDate Date DATE;

# Creating Hero1 table for 20 days moving average and 50 days moving average
create table Hero1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from hero_motocorp
group by `Date`
order by 1;

update `Hero1`
set `20 Day MA` = null
limit 19;

update `Hero1`
set `50 Day MA` = null
limit 49;

alter table Hero1
modify `20 Day MA` float(10,2);

alter table Hero1
modify `50 Day MA` float(10,2);

alter table Hero1
modify `Close Price` float(10,2);

select *
from Hero1;

#iv) -------------------------- infosys stock ---------------------------

select *
from infosys;

desc infosys;

alter table infosys
add tempDate varchar(50);

update infosys
set tempDate=str_to_date(date,"%d-%M-%Y");

alter table infosys drop column Date;

alter table infosys change column tempDate Date DATE;

# Creating Infosys1 table for 20 days moving average and 50 days moving average
create table Infosys1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from infosys
group by `Date`
order by 1;

update `Infosys1`
set `20 Day MA` = null
limit 19;

update `Infosys1`
set `50 Day MA` = null
limit 49;

alter table Infosys1
modify `20 Day MA` float(10,2);

alter table Infosys1
modify `50 Day MA` float(10,2);

alter table Infosys1
modify `Close Price` float(10,2);

select *
from Infosys1;

# v) -------------------------- tcs stock ------------------------------------

select *
from tcs;

desc tcs;

alter table tcs
add tempDate varchar(50);

update tcs
set tempDate=str_to_date(date,"%d-%M-%Y");

alter table tcs drop column Date;

alter table tcs change column tempDate Date DATE;

# Creating TCS1 table for 20 days moving average and 50 days moving average
create table TCS1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from tcs
group by `Date`
order by 1;

update `TCS1`
set `20 Day MA` = null
limit 19;

update `TCS1`
set `50 Day MA` = null
limit 49;

alter table TCS1
modify `20 Day MA` float(10,2);

alter table TCS1
modify `50 Day MA` float(10,2);

alter table TCS1
modify `Close Price` float(10,2);

select *
from TCS1;

# vi) ----------------------- tvs_motors stock ---------------------------

select *
from tvs_motors;

desc tvs_motors;

alter table tvs_motors
add tempDate varchar(50);

update tvs_motors
set tempDate=str_to_date(date,"%d-%M-%Y");

alter table tvs_motors drop column Date;

alter table tvs_motors change column tempDate Date DATE;

# Creating tvs_motors1 table for 20 days moving average and 50 days moving average
create table tvs_motors1 as
select `Date`, sum(`Close Price`) `Close Price`,
avg(sum(`Close Price`)) over(order by `Date` rows between 19 preceding and current row) `20 Day MA`,
avg(sum(`Close Price`)) over(order by `Date` rows between 49 preceding and current row) `50 Day MA`
from tvs_motors
group by `Date`
order by 1;

update `tvs_motors1`
set `20 Day MA` = null
limit 19;

update `tvs_motors1`
set `50 Day MA` = null
limit 49;

alter table tvs_motors1
modify `20 Day MA` float(10,2);

alter table tvs_motors1
modify `50 Day MA` float(10,2);

alter table tvs_motors1
modify `Close Price` float(10,2);

select *
from tvs_motors1;

# Task 2. Create a master table containing the date and close price of all the six stocks. (Column header for the price is the name of the stock)

# CREATING A MASTER_TABLE 

create table `Master_Table`(
`Date` date,
`Bajaj` double,
`TCS` double,
`TVS` double,
`Infosys` double,
`Eicher` double,
`Hero` double);

# INSERTING THE DATE AND CLOSE PRICE OF ALL TABLES INTO  MASTER_TABLE

insert into `Master_Table`(`Date`,`Bajaj`, `TCS`, `TVS`, `Infosys`, `Eicher`, `Hero`)
select b.`Date`, b.`Close Price` as `Bajaj`, tc.`Close Price` as `TCS`,tv.`Close Price` as `TVS`,
I.`Close Price` as `Infosys`, ei.`Close Price` as `Eicher`,he.`Close Price` as `Hero`
from `bajaj` b 
join `tcs` tc on b.`Date` = tc.`Date`
join `tvs_motors` tv on b.`Date` = tv.`Date`
join `infosys` I on b.`Date` = I.`Date`
join `eicher_motors` ei on b.`Date` = ei.`Date`
join `hero_motocorp` he on b.`Date` = he.`Date`
order by 1;

select * from `Master_Table`;

# Task 3. Use the table created in Part(1) to generate buy and sell signal. Store this in another table named 'bajaj2'. Perform this operation for all stocks.

#i) Creating bajaj2 table and generating Buy, Sell and Hold signal for stock using bajaj1 table

create table bajaj2 as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) <= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
ELSE 'HOLD' END as 'Signal'
from bajaj1;

select *
from bajaj2;

select count(`Signal`)
from bajaj2
where `Signal` = "BUY";

select count(`signal`)
from bajaj2
where `Signal` = "SELL";

select count(`Signal`)
from bajaj2
where `Signal` = "HOLD";

#ii) Creating Eicher2 table and generating Buy, Sell and Hold signal for stock  using Eicher1 table

create table Eicher2 as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) <= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
ELSE 'HOLD' END as 'Signal'
from Eicher1;

select *
from Eicher2;

select count(`Signal`)
from Eicher2
where `Signal` = "BUY";

select count(`Signal`)
from Eicher2
where `Signal` = "SELL";

select count(`Signal`)
from Eicher2
where `Signal` = "HOLD";

#iii) Creating Hero2 table and generating Buy, Sell and Hold signal for stock  using Hero1 table

create table Hero2 as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) <= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
ELSE 'HOLD' END as 'Signal'
from Hero1;

select *
from Hero2;

select count(`Signal`)
from Hero2
where `Signal` = "BUY";

select count(`Signal`)
from Hero2
where `Signal` = "SELL";

select count(`Signal`)
from Hero2
where `Signal` = "HOLD";

#iv) Creating Infosys2 table and generating Buy, Sell and Hold signal for stock  using Infosys1 table

create table Infosys2 as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) <= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
ELSE 'HOLD' END as 'Signal'
from Infosys1;

select *
from Infosys2;

select count(`Signal`)
from Infosys2
where `Signal` = "BUY";

select count(`Signal`)
from Infosys2
where `Signal` = "SELL";

select count(`Signal`)
from Infosys2
where `Signal` = "HOLD";

#v) Creating TCS2 table and generating Buy, Sell and Hold signal for stock  using TCS1 table

create table TCS2 as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) <= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
ELSE 'HOLD' END as 'Signal'
from TCS1;

select *
from TCS2;

select count(`Signal`)
from TCS2
where `Signal` = "BUY";

select count(`Signal`)
from TCS2
where `Signal` = "SELL";

select count(`Signal`)
from TCS2
where `Signal` = "HOLD";

#vi) Creating tvs_motors2 table and generating Buy, Sell and Hold signal for stock  using tvs_motors1 table

create table tvs_motors2 as
select `Date`,`Close Price`,
case
WHEN `20 Day MA` > `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) <= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'BUY'
WHEN `20 Day MA` < `50 Day MA` AND LAG(`20 Day MA`, 1) OVER (ORDER BY `Date`) >= LAG(`50 Day MA`, 1) OVER (ORDER BY `Date`) THEN 'SELL'
ELSE 'HOLD' END as 'Signal'
from tvs_motors1;

select *
from tvs_motors2;

select count(`Signal`)
from tvs_motors2
where `Signal` = "BUY";

select count(`Signal`)
from tvs_motors2
where `Signal` = "SELL";

select count(`Signal`)
from tvs_motors2
where `Signal` = "HOLD";

# Task 4. Create a User defined function, that takes the date as input and returns the signal for that particular day (Buy/Sell/Hold) for the Bajaj stock.

DELIMITER $$
create FUNCTION generate_SignalFor_Bajaj_Stock (s varchar(20))
returns VARCHAR(20) deterministic 
begin
declare outPut_signal varchar(20) ;
set outPut_signal =(select `Signal` from Bajaj2 where Date = s);
return outPut_signal ;
end 
$$
DELIMITER ;

# CALL User Define function

select generate_SignalFor_Bajaj_Stock('2018-07-25');



