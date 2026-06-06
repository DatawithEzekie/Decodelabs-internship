--select everything from decodelabs dataset table 

select *
from [Dataset for Data Analytics DECODELABS 22]

-- Convert our unitprice and totalprice in two decimalplace;
USE DECODELAB;
UPDATE [Dataset for Data Analytics DECODELABS 22]
SET UnitPrice =ROUND(UnitPrice,2),
   TotalPrice =ROUND(TOtalPrice,2); 

   --- Calculate our KPIS
   USE DECODELAB;
SELECT
   COUNT(*) AS TOTALORDER,
   SUM(TOTALPRICE) AS [TOTAL REVENUE],
   AVG(TOTALPRICE) AS AVGORDERVALUE,
   MAX(TOTALPRICE) AS MAXORDER,
   MIN(TOTALPRICE) AS MINORDER
  FROM [Dataset for Data Analytics DECODELABS 22]


   ---How many order,total revenue,avgordervalue exist in each product
   select product,
   COUNT(*) as totalorders,
   SUM(totalprice) as [Total revenue],
   AVG(totalprice) as Avgordervalue
   from [Dataset for Data Analytics DECODELABS 22]
   group by product 
   order by [Total revenue] desc 
   
   ---How many order,total revenue,avgordervalue exist in each orderstatus
    select OrderStatus,
   COUNT(*) as totalorders,
   SUM(totalprice) as [Total revenue],
   AVG(totalprice) as Avgordervalue
   from [Dataset for Data Analytics DECODELABS 22]
   group by OrderStatus 
   order by [Total revenue] desc 

     ---How many order,total revenue,avgordervalue exist in each Couponcode
   select CouponCode,
   COUNT(*) as totalorders,
   SUM(totalprice) as [Total revenue],
   AVG(totalprice) as Avgordervalue
   from [Dataset for Data Analytics DECODELABS 22]
   group by CouponCode 
   order by [Total revenue] desc 

 ---How many order,total revenue,avgordervalue exist in each Referralsource 
    select ReferralSource,
   COUNT(*) as totalorders,
   SUM(totalprice) as [Total revenue],
   AVG(totalprice) as Avgordervalue
   from [Dataset for Data Analytics DECODELABS 22]
   group by ReferralSource 
   order by [Total revenue] desc 

 ---How many order,total revenue,avgordervalue exist in each payment method

       select PaymentMethod,
   COUNT(*) as totalorders,
   SUM(totalprice) as [Total revenue],
   AVG(totalprice) as Avgordervalue
   from [Dataset for Data Analytics DECODELABS 22]
   group by PaymentMethod
   order by [Total revenue] desc

 ---How many quantity of monitor sold and total revenue 

select product,
sum(totalprice) AS [TOTAL REVENUE],
SUM(QUANTITY) AS QUANTITYSOLD
FROM [Dataset for Data Analytics DECODELABS 22]
GROUP  BY Product
HAVING PRODUCT = 'Monitor'





