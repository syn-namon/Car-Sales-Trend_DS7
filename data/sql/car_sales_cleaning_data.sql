-- cleaning data in 'engine' column 
update car_sales_report
set engine = replace (engine, 'Â ', ' ');

-- checking data after cleanning
select * FROM car_sales_report where engine like '%Â%';

-- cleaning all other text colums removing some specific symbols 
update car_sales_report
set car_id = replace(replace(replace(car_id, char(160), ''), char(65279), ''), char(8203), '');

update car_sales_report
set purchase_date = replace(replace(replace(purchase_date, char(160), ''), char(65279), ''), char(8203), '');

update car_sales_report
set customer_name = replace(replace(replace(customer_name, char(160), ''), char(65279), ''), char(8203), '');

update car_sales_report
set gender = replace(replace(replace(gender, char(160), ''), char(65279), ''), char(8203), '');

update car_sales_report
set dealer_name  = replace(replace(replace(dealer_name , char(160), ''), char(65279), ''), char(8203), '');

update car_sales_report
set company  = replace(replace(replace(company , char(160), ''), char(65279), ''), char(8203), '');

update car_sales_report
set model  = replace(replace(replace(model , char(160), ''), char(65279), ''), char(8203), '');

update car_sales_report
set engine  = replace(replace(replace(engine , char(160), ''), char(65279), ''), char(8203), '');

update car_sales_report
set transmission  = replace(replace(replace(transmission , char(160), ''), char(65279), ''), char(8203), '');

update car_sales_report
set color  = replace(replace(replace(color , char(160), ''), char(65279), ''), char(8203), '');

update car_sales_report
set dealer_no  = replace(replace(replace(dealer_no , char(160), ''), char(65279), ''), char(8203), '');

update car_sales_report
set body_style  = replace(replace(replace(body_style, char(160), ''), char(65279), ''), char(8203), '');

update car_sales_report
set phone  = replace(replace(replace(phone, char(160), ''), char(65279), ''), char(8203), '');

update car_sales_report
set dealer_region  = replace(replace(replace(dealer_region, char(160), ''), char(65279), ''), char(8203), '');

-- checking and cleaning columns with numeric values and phone:
-- annual income
select annual_income from car_sales_report where annual_income not regexp '^[0-9]+$';

-- price
select price from car_sales_report where annual_income not regexp '^[0-9]+$';

-- phone:
select phone from car_sales_report where phone not regexp '^[0-9]+$';

-- additional check for any null values in each comlumn
select * from car_sales_report 
where 
             (phone is null or trim(phone) = ' ') or
			 (car_id is null or trim(car_id) = ' ') or
			 (purchase_date is null or trim(purchase_date) = ' ') or
			 (customer_name is null or trim(customer_name) = ' ') or
			 (gender is null or trim(gender) = ' ') or
			 (annual_income is null) or
			 (dealer_name is null or trim(dealer_name) = ' ') or
			 (company is null or trim(company) = ' ') or
			 (model is null or trim(company) = ' ') or
			 (engine is null or trim(engine) = ' ') or
			 (transmission is null or trim(transmission) = ' ') or
			 (color is null or trim(color) = ' ') or
			 (price is null) or
			 (dealer_no is null or trim(dealer_no) = ' ') or
			 (body_style is null or trim(body_style) = ' ') or
			 (dealer_region is null or trim(dealer_region) = ' ');