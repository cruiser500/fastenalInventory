--min, max, avg, of quantity dispensed for MONDAY
with monday_demand as (  
select
	day_of_week
	, min(total_qd) as min_dispensed_count
	, max(total_qd) as max_dispensed_count
	, round(avg(total_qd), 2) as avg_sku_count
from
	(
		select 
			day_of_week
			, product_sku
			, sum(quantity_dispensed) as total_qd
		from
			vending_2023
		group by
			day_of_week
		, product_sku
	)
where
	day_of_week like 'Monday'
group by
	day_of_week
)


--min, max, avg, of quantity dispensed for TUESDAY
, tuesday_demand as (
select
	day_of_week
	, min(total_qd) as min_dispensed_count
	, max(total_qd) as max_dispensed_count
	, round(avg(total_qd), 2) as avg_sku_count
from
	(
		select 
			day_of_week
			, product_sku
			, sum(quantity_dispensed) as total_qd
		from
			vending_2023
		group by
			day_of_week
		, product_sku
	)
where
	day_of_week like 'Tuesday'
group by
	day_of_week
)

--min, max, avg, of quantity dispensed for WEDNESDAY
, wednesday_demand as (
select
	day_of_week
	, min(total_qd) as min_dispensed_count
	, max(total_qd) as max_dispensed_count
	, round(avg(total_qd), 2) as avg_sku_count
from
	(
		select 
			day_of_week
			, product_sku
			, sum(quantity_dispensed) as total_qd
		from
			vending_2023
		group by
			day_of_week
		, product_sku
	)
where
	day_of_week like 'Wednesday'
group by
	day_of_week
)

--min, max, avg, of quantity dispensed for THURSDAY
, thursday_demand as (
select
	day_of_week
	, min(total_qd) as min_dispensed_count
	, max(total_qd) as max_dispensed_count
	, round(avg(total_qd), 2) as avg_sku_count
from
	(
		select 
			day_of_week
			, product_sku
			, sum(quantity_dispensed) as total_qd
		from
			vending_2023
		group by
			day_of_week
		, product_sku
	)
where
	day_of_week like 'Thursday'
group by
	day_of_week
)

--min, max, avg, of quantity dispensed for FRIDAY
, friday_demand as (
select
	day_of_week
	, min(total_qd) as min_dispensed_count
	, max(total_qd) as max_dispensed_count
	, round(avg(total_qd), 2) as avg_sku_count
from
	(
		select 
			day_of_week
			, product_sku
			, sum(quantity_dispensed) as total_qd
		from
			vending_2023
		group by
			day_of_week
		, product_sku
	)
where
	day_of_week like 'Friday'
group by
	day_of_week
)

--min, max, avg, of quantity dispensed for SATURDAY
, saturday_demand as (
select
	day_of_week
	, min(total_qd) as min_dispensed_count
	, max(total_qd) as max_dispensed_count
	, round(avg(total_qd), 2) as avg_sku_count
from
	(
		select 
			day_of_week
			, product_sku
			, sum(quantity_dispensed) as total_qd
		from
			vending_2023
		group by
			day_of_week
		, product_sku
	)
where
	day_of_week like 'Saturday'
group by
	day_of_week
)

--min, max, avg, of quantity dispensed for SUNDAY
, sunday_demand as (
select
	day_of_week
	, min(total_qd) as min_dispensed_count
	, max(total_qd) as max_dispensed_count
	, round(avg(total_qd), 2) as avg_sku_count
from
	(
		select 
			day_of_week
			, product_sku
			, sum(quantity_dispensed) as total_qd
		from
			vending_2023
		group by
			day_of_week
		, product_sku
	)
where
	day_of_week like 'Sunday'
group by
	day_of_week
)

select
	*
from
	monday_demand
union
select
	*
from
	tuesday_demand
union
select
	*
from
	wednesday_demand
union
select
	*
from
	thursday_demand
union
select
	*
from
	friday_demand
union
select
	*
from
	saturday_demand
union
select
	*
from
	saturday_demand