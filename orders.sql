use d17;
show tables;

rename table orders_2024_jan_jun to orders;

select *
from orders;

desc orders;

select *
from (select *,row_number() over (partition by CustomerID order by OrderID asc) rnk
from orders) as t
where rnk>1;

delete from orders
where OrderID in(
	select OrderID
	from(
		select OrderID,
			row_number() over(
				partition by CustomerID 
				order by OrderID
			)as rnk 
		from orders
	)as t
	where rnk>1
);

set sql_safe_updates=0;

update orders
set OrderDate=str_to_date(OrderDate,'%m/%d/%Y');

select distinct(Category)
from orders;

update orders
set 
	ProductID=( case 
					when Category="Grocery" then 1
					when Category="Home Decor" then 2
                    when Category="Electronics" then 3
                    when Category="Fashion" then 4
					else 0
                end
	);
    
update orders
set
    ProductName=(case
					when ProductID=1 then "Product_1"
                    when ProductID=2 then "Product_2"
                    when ProductID=3 then "Product_3"
                    when ProductID=4 then "Product_4"
				else "unkown"
                end
    );
