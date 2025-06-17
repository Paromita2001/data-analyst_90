-- Use WHERE
-- When you want to filter rows before grouping or aggregation happens.

-- Use HAVING
-- When you want to filter groups after using GROUP BY and aggregation.



select * from dbo.Sales

-- Total Sales, Avg Sales, Total Quantity, Avg Quantity for each distinct product
select 
ProductID,
sum(TotalAmount) as 'Sum of Sales',
sum(Quantity) as 'Total Quantity',
avg(TotalAmount) as'Avg Amount',
avg(Quantity) as'Avg Quantity'
from dbo.Sales
group by ProductID
having sum(TotalAmount)<700 and sum(Quantity) = 21

select * from dbo.Sales
where TotalAmount>=161

select * from dbo.Sales

select productid, sum(totalamount) as' Sum of sales' from dbo.Sales
group by ProductID
having sum(totalamount)<700

select productid,sum(totalamount)as 'Sum of sales' from dbo.Sales
where TotalAmount>=161
group by productid
having sum(totalamount)>=250
order by PRODUCTid desc

select productid,sum(totalamount) as' Sum of sales'from dbo.Sales
where TotalAmount>=161
group by productid
having sum(totalamount)>=250
order by sum(totalamount) asc