/*I have made some minor changes in some of the table schema and the affected tables.
rest of the tables are unaffected*/

/* the table has been altered inorder to support calculating overtime payment for an emplyee*/

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

