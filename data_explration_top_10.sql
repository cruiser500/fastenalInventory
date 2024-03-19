--creating table from excel file
create table vending_2023 (
	product_timestamp varchar(255)
	, product_date date
	, day_of_week varchar(50)
	, user_first_name varchar(255)
	, user_last_name varchar(255)
	, employee_id varchar(255)
	, reporting_group varchar(255)
	, device_name varchar(255)
	, motor_position varchar(255)
	, supplier varchar(255)
	, product_description varchar(255)
	, product_sku varchar(255)
	, quantity_dispensed int
	, unit_price decimal(10,2)
	, package_price decimal(10,2)
	, package_qty int
	, total_amount decimal(10,2)
	, transaction_id varchar(255)
)

--selecting all data to test import
select
	*
from
	vending_2023
	

--how many total different producta are sold in each vending machine?
select
	count(distinct product_sku) as total_distinct_skus
from
	vending_2023
	
	
--top 10 most dispensed products
select
	distinct product_sku
	, sum(quantity_dispensed) as total_dispensed
from	
	vending_2023
group by
	product_sku
order by
	total_dispensed desc
limit 10


--Highest demanded sku per day of week
select
	product_sku
	, day_of_week
	, sum(quantity_dispensed) as total_dispensed
from
	vending_2023
where
	product_sku = '922833840[1]'
group by
	product_sku
	, day_of_week
order by
	total_dispensed desc


