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
