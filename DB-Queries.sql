select * from employee;

/*Get the employee schedule*/
select store_address, first_name, last_name, time_in, time_out from employee as e
join employee_schedule as es on e.emp_ID = e.emp_ID
join store as s on s.store_ID = e.store_ID;

/*Get the current inventory*/
select s.store_address, p.product_name, i.quantity, i.beginning_quantity from inventory as i
join product as p on p.product_ID = i.product_ID
join store as s on i.store_id = s.store_ID
where i.store_ID = 1;

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
