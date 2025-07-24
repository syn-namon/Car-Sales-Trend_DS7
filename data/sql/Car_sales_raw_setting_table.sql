CREATE TABLE "car_sales_report" (
	"car_id"	TEXT,
	"purchase_date"	TEXT,
	"customer_name"	TEXT,
	"gender"	TEXT,
	"annual_income"	INTEGER,
	"dealer_name"	TEXT,
	"company"	TEXT,
	"model"	TEXT,
	"engine"	TEXT,
	"transmission"	TEXT,
	"color"	TEXT,
	"price"	INTEGER,
	"dealer_no"	TEXT,
	"body_style"	TEXT,
	"phone"	TEXT,
	"dealer_region"	TEXT,
	PRIMARY KEY("car_id")
);

select * from car_sales_report limit 10;

-- cleanning data in 'engine' column 
update car_sales_report
set engine = replace (engine, 'Â ', ' ');

-- checking data after cleanning
select * FROM car_sales_report where engine like '%Â%';

-- cleanning all other text colums removing some specific symbols 
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
