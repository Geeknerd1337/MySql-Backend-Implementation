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

