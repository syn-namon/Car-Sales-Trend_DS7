-- checking table info
pragma table_info(car_sales_report);

-- getting summary for each column, checking missing values per column and adding output into temp table
drop table if exists temp_columns_summary;
create temp table temp_columns_summary as
select 
             'car_id' as column_name,
			 count(*) as total_rows,
			 count(car_id) as not_null_counts,
			 count(*) - count(car_id) as null_counts,
			 count(distinct car_id) as unique_counts
from car_sales_report		 

union all 

select 
             'purchase_date',
			 count(*),
			 count(purchase_date),
			 count(*) - count(purchase_date),
			 count(distinct purchase_date)
from car_sales_report	

union all 

select 
             'customer_name',
			 count(*),
			 count(customer_name),
			 count(*) - count(customer_name),
			 count(distinct customer_name)
from car_sales_report	
			 
union all 

select 
             'gender',
			 count(*),
			 count(gender),
			 count(*) - count(gender),
			 count(distinct gender)
from car_sales_report	

union all 

select 
             'annual_income',
			 count(*),
			 count(annual_income),
			 count(*) - count(annual_income),
			 count(distinct annual_income)
from car_sales_report

union all 

select 
             'dealer_name',
			 count(*),
			 count(dealer_name),
			 count(*) - count(dealer_name),
			 count(distinct dealer_name)
from car_sales_report

union all 

select 
             'company',
			 count(*),
			 count(company),
			 count(*) - count(company),
			 count(distinct company)
from car_sales_report

union all 

select 
             'model',
			 count(*),
			 count(model),
			 count(*) - count(model),
			 count(distinct model)
from car_sales_report

union all 

select 
             'engine',
			 count(*),
			 count(engine),
			 count(*) - count(engine),
			 count(distinct engine)
from car_sales_report

union all 

select 
             'transmission',
			 count(*),
			 count(transmission),
			 count(*) - count(transmission),
			 count(distinct transmission)
from car_sales_report

union all 

select 
             'color',
			 count(*),
			 count(color),
			 count(*) - count(color),
			 count(distinct color)
from car_sales_report

union all 

select 
             'price',
			 count(*),
			 count(price),
			 count(*) - count(price),
			 count(distinct price)
from car_sales_report

union all 

select 
             'dealer_no',
			 count(*),
			 count(dealer_no),
			 count(*) - count(dealer_no),
			 count(distinct dealer_no)
from car_sales_report

union all 

select 
             'body_style',
			 count(*),
			 count(body_style),
			 count(*) - count(body_style),
			 count(distinct body_style)
from car_sales_report

union all 

select 
             'phone',
			 count(*),
			 count(phone),
			 count(*) - count(phone),
			 count(distinct phone)
from car_sales_report

union all 

select 
             'dealer_region',
			 count(*),
			 count(dealer_region),
			 count(*) - count(dealer_region),
			 count(distinct dealer_region)
from car_sales_report;

select * from temp_columns_summary;

-- creating summary stats for the main table for numaric features
drop table if exists temp_numeric_values_summary;
create temp table temp_numeric_values_summary as

-- creating temp table with CTE for getting median 
with median_annual_income as(
          select avg(annual_income) as median_value
		  from (
		              select annual_income from car_sales_report
					  where annual_income is not null order by annual_income
					  limit 2 - (select count(*) from car_sales_report where annual_income is not null) % 2
				      offset (select (count(*) - 1)  / 2 from car_sales_report where annual_income is not null)
					  ) as subquery
),
median_price as(
         select avg(price) as median_value
		  from(
		              select price from car_sales_report
					  where price is not null order by price
					  limit 2 - (select count(*) from car_sales_report where price is not null) % 2
				      offset (select (count(*) - 1)  / 2 from car_sales_report where price is not null)
					  ) as subquery
)

-- agregating all data into one summary table 
select 
             'annual_income' as column_name,
             count(*) as total_count,
			 count(annual_income) as non_null_count,
			 min(annual_income) as min_value,
			 max(annual_income) as max_value,
			 avg(annual_income) as mean_value,
			 m1.median_value
from car_sales_report
cross join median_annual_income m1

union all 

select 
             'price' as column_name,
			 count(*) as total_count,
			 count(price) as non_null_count,
			 min(price) as min_value,
			 max(price) as max_value,
			 avg(price) as mean_value,
			 m2.median_value
from car_sales_report
cross join median_price m2;

select * from temp_numeric_values_summary;

-- checking amount of customers with each gender:
-- female
select (count(case when gender like  'female' then customer_name end)* 100)  / count(customer_name)
as female_customers_percent from car_sales_report;

select count(customer_name) from car_sales_report where gender like 'female';

-- male
select (count(case when gender like  'male' then customer_name end)* 100)  / count(customer_name)
as female_customers_percent from car_sales_report;

select count(customer_name) from car_sales_report where gender like 'male';

-- validating data:
-- gender and its nature of source)
select customer_name, gender from car_sales_report where gender like 'male' and customer_name like 'Gia';
select customer_name, gender from car_sales_report where gender like 'male' and customer_name like 'Sofia';
select customer_name, gender from car_sales_report where gender like 'male' and customer_name like 'Sophia';
select customer_name, gender from car_sales_report where gender like 'male' and customer_name like 'Sophie';

select customer_name, gender from car_sales_report where gender like 'female' and customer_name like 'Harry';
select customer_name, gender from car_sales_report where gender like 'female' and customer_name like 'Joseph';
select customer_name, gender from car_sales_report where gender like 'female' and customer_name like 'Matheo';

-- checking unique values for each type of engine
select distinct engine from car_sales_report;	
select count(distinct car_id) as auto_engine_car from car_sales_report where engine like 'Double%';
select count(distinct car_id) as manual_engine_car from car_sales_report where engine not like 'Double%';

-- checking outlying values:
-- annual_income > median of annual income starting form the highest value 
select customer_name, gender, annual_income, company, model, price, dealer_name, dealer_region 
from car_sales_report where annual_income > 
(
select avg(annual_income) from car_sales_report
) order by annual_income desc limit 50;

-- annual_income < median of annual income starting from the lowest value 
select customer_name, gender, annual_income, company, model, price, dealer_name, dealer_region 
from car_sales_report where annual_income < 
(
select avg(annual_income) from car_sales_report
) order by price desc limit 50;

-- pricing > median of price starting from the highest value 
select customer_name, gender, annual_income, company, model, price, dealer_name, dealer_region 
from car_sales_report where price > 
(
select avg(price) from car_sales_report
) order by price desc limit 50;

-- pricing < median of price starting from the lowest value 
select customer_name, gender, annual_income, company, model, price, dealer_name, dealer_region 
from car_sales_report where price < 
(
select avg(price) from car_sales_report
) order by price asc limit 50;