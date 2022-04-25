/*I have made some minor changes in some of the table schema and the affected tables.
rest of the tables are unaffected
  tables modified:
  payroll
  employee schedule
  product_invoice
  store


/* the payroll table has been altered inorder to support calculating overtime payment for an emplyee*/

alter table payroll
add column assigned_hours int; #hours beyond this will be considered overtime and the employee will be paid at overtime rate

/*delete previous data*/
delete from payroll where emp_ID = 1;
delete from payroll where emp_ID = 2;
delete from payroll where emp_ID = 3;
delete from payroll where emp_ID = 4;
delete from payroll where emp_ID = 5;
delete from payroll where emp_ID = 6;
delete from payroll where emp_ID = 7;

/*new dummy data*/
insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date, assigned_hours) values (1, 12.50, 10.5, 30.0, "Direct Deposit", STR_TO_DATE('1-01-2021', '%m-%d-%Y'),30);
insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date, assigned_hours) values (2, 9.25, 5.5, 45.0, "Direct Deposit", STR_TO_DATE('1-01-2021', '%m-%d-%Y'),40);
insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date, assigned_hours) values (3, 9.25, 5.5, 43.5, "Direct Deposit", STR_TO_DATE('1-01-2021', '%m-%d-%Y'),40);
insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date, assigned_hours) values (4,12.50, 10.5, 29.0, "check", STR_TO_DATE('1-01-2021', '%m-%d-%Y'),30);
insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date, assigned_hours) values (5, 9.25, 5.5, 40.0, "check", STR_TO_DATE('1-01-2021', '%m-%d-%Y'),40);
insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date, assigned_hours) values (6, 10.25, 6.5, 40.0, "cash", STR_TO_DATE('1-01-2021', '%m-%d-%Y'),40);
insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date, assigned_hours) values (7, 16.25, 1.5, 44.0, "cash", STR_TO_DATE('1-01-2021', '%m-%d-%Y'),40);

/*updated employee_schedule to further normalize, splitting date and time*/
/*begin by dropping current table*/
drop table employee_schedule;

create table employee_schedule(
schedule_ID int primary key not null AUTO_INCREMENT,
emp_ID int,
dates date NOT NULL,
time_in time NOT NULL,
time_out time NOT NULL,
absent bool NOT NULL,
is_pto bool NOT NULL,
foreign key (emp_ID) references employee(emp_ID)
);

/*insert new dummy data*/
insert into employee_schedule(emp_ID,dates,time_in,time_out,absent,is_pto) values (1,'2022-04-20','09:00:00','05:00:00',0,1);
insert into employee_schedule(emp_ID,dates,time_in,time_out,absent,is_pto) values (2,'2022-04-20','01:00:00','09:00:00',0,1);
insert into employee_schedule(emp_ID,dates,time_in,time_out,absent,is_pto) values (3,'2022-04-21','09:00:00','05:00:00',0,1);
insert into employee_schedule(emp_ID,dates,time_in,time_out,absent,is_pto) values (1,'2022-04-21','09:00:00','05:00:00',0,1);
insert into employee_schedule(emp_ID,dates,time_in,time_out,absent,is_pto) values (3,'2022-04-22','02:00:00','10:00:00',0,1);

/*related query:*/
#query to check if a particular employees schedule on a given day
select
      employee.first_name as employee_name,
      employee_schedule.dates as inDate,
      employee_schedule.time_in as clock_in,
      employee_schedule.time_out as clock_in
      from employee, employee_schedule
      where employee.emp_ID = 1 and employee_schedule.dates = "2022-04-20" and employee_schedule.emp_ID=1;
  


/*changes in product_invoice*/
alter table product_invoice
add store_ID int, #because we have multiple stores we need to be able to tell to which store it was delivered
add constraint foreign key(store_ID) references store(store_ID); 


/*delete old values*/
delete from product_invoice where invoice_id = 1;
delete from product_invoice where invoice_id = 2;
delete from product_invoice where invoice_id = 3;
delete from product_invoice where invoice_id = 4;
delete from product_invoice where invoice_id = 5;
delete from product_invoice where invoice_id = 6;

/*add new product invoices to the table(item_id 4 : frozen pizza delivered in store #1*/
insert into product_invoice (product_ID, amount_due, quantity_delivered, supplier_ID,store_ID) values (4, 500, 100, 1,1);
/*[only one item is inserted for initial test]*/

/*change in store's dummy value, old data were repetative, 2 stores can't have a single address*/
update store 
set phone_number = "887-647-8947", store_address= "2345 College Dr, Deton,Tx,72349" 
where store_ID = 2;

update store 
set phone_number = "387-047-8947", store_address= "1347 xyz Dr, Deton,Tx,72349" 
where store_ID = 3;





