select * from employee;

/*Get the employee schedule*/
select store_address, first_name, last_name, time_in, time_out from employee as e
join employee_schedule as es on e.emp_ID = e.emp_ID
join store as s on s.store_ID = e.store_ID;

/*Get the current inventory*/
select s.store_address, p.product_name, i.quantity, i.beginning_quantity from inventory as i
join product as p on p.product_ID = i.product_ID
join store as s on i.store_id = s.store_ID


/*Get basic payment information of employees*/
select store_address, first_name, last_name, hourly_wage, hours_worked, payment_method from employee as emp
join store as st on st.store_ID = emp.store_ID
join payroll as pay on pay.emp_ID = emp.emp_ID;

/*Get product delivery information*/
select supplier_name, product_name, quantity_delivered, amount_due from product_invoice as inv
join product_supplier as ps on ps.supplier_ID = inv.supplier_ID
join product as pr on pr.product_ID = inv.product_ID;

/*Get sales information of gas pumps*/
select store_address, pump_ID, gallons_sold, total_transactions, dollars_collected_daily from pump as pu
join store as str on str.store_ID = pu.store_ID
join card_reader as cr on cr.card_reader_ID = pu.card_reader_ID;

#query to check if a particular employees schedule on a given day  :jigme
select
      employee.first_name as employee_name,
      employee_schedule.dates as inDate,
      employee_schedule.time_in as clock_in,
      employee_schedule.time_out as clock_in
      from employee, employee_schedule
      where employee.emp_ID = 1 and employee_schedule.dates = "2022-04-20" and employee_schedule.emp_ID=1;

 /*inventory related queries*/
/*to get the inventory of all the items in a particular store, store with id 1 for this example*/
select p.product_ID, p.product_name, i.quantity, i.beginning_quantity, i.beginning_quantity-i.quantity as "Sold Quantity"
from product as p join inventory as i on p.product_ID = i.product_ID
where i.store_ID = 1;

/*to check if any item is below threashold quantity, we asume 50 to be threshold values. products with current inventory less than 50 
will be considered low-in-stock*/

select s.store_ID, p.product_ID, p.product_name, i.quantity, i.beginning_quantity, i.beginning_quantity-i.quantity as "Sold Quantity"
from inventory as i join product as p on p.product_ID = i.product_ID
join store as s on i.store_ID = 1 & s.store_ID
where i.store_ID = 1 and i.quantity<50;

/*query to find the new qunatity of products after a purchase is made for store 1*/
select inv. store_ID, p.product_name, invo.quantity_delivered, inv.quantity as "Quantity before purchase", invo.quantity_delivered + inv.quantity as "new quantity"
from product as p join product_invoice as invo on p.product_ID = invo.product_ID
join inventory as inv on p.product_ID = inv.product_ID
where inv.store_ID = 1;



