insert into region (annual_profit, state, region_name) values (1234596.01,"TX","Northwest Dallas");
insert into region (annual_profit, state, region_name) values (599109.21,"TX","Plano");

insert into store (region_ID, phone_number, store_address) values (0,"555-555-5555","123 Mublerry St. Dallas Tx 35025");
insert into store (region_ID, phone_number, store_address) values (0,"555-555-5555","123 Mublerry St. Dallas Tx 35025");
insert into store (region_ID, phone_number, store_address) values (1,"555-555-5555","123 Mublerry St. Plano Tx 35025");

insert into department (dept_name) values ("Sales");
insert into department (dept_name) values ("Food");
insert into department (dept_name) values ("Stocking");

insert into employee (store_id, department_ID, first_name, last_name) values (0, 0, "John", "Doe");
insert into employee (store_id, department_ID, first_name, last_name) values (0, 1, "Jane", "Doe");
insert into employee (store_id, department_ID, first_name, last_name) values (0, 2, "Josh", "Doe");

insert into employee (store_id, department_ID, first_name, last_name) values (1, 0, "Bill", "Thomas");
insert into employee (store_id, department_ID, first_name, last_name) values (1, 1, "Matt", "Thomas");
insert into employee (store_id, department_ID, first_name, last_name) values (1, 1, "Josh", "Thomas");

insert into employee (store_id, department_ID, first_name, last_name) values (2, 0, "Bob", "Doe");
insert into employee (store_id, department_ID, first_name, last_name) values (2, 2, "Joe", "Doe");
insert into employee (store_id, department_ID, first_name, last_name) values (2, 3, "Ron", "Doe");

insert into licenses (emp_ID, is_food_handling, is_alcohol_sales, is_money_handling) values (0, true, false, true);
insert into licenses (emp_ID, is_food_handling, is_alcohol_sales, is_money_handling) values (1, false, true, false);
insert into licenses (emp_ID, is_food_handling, is_alcohol_sales, is_money_handling) values (2, true, false, false);
insert into licenses (emp_ID, is_food_handling, is_alcohol_sales, is_money_handling) values (3, false, false, true);
insert into licenses (emp_ID, is_food_handling, is_alcohol_sales, is_money_handling) values (5, true, false, false);
insert into licenses (emp_ID, is_food_handling, is_alcohol_sales, is_money_handling) values (6, true, false, false);
insert into licenses (emp_ID, is_food_handling, is_alcohol_sales, is_money_handling) values (7, false, true, false);
insert into licenses (emp_ID, is_food_handling, is_alcohol_sales, is_money_handling) values (8, true, true, true);

insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (0, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-01-2021', '%d-%m-%Y'));
insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (0, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-15-2021', '%d-%m-%Y'));

insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (1, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-01-2021', '%d-%m-%Y'));
insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (1, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-15-2021', '%d-%m-%Y'));

insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (2, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-01-2021', '%d-%m-%Y'));
insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (2, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-15-2021', '%d-%m-%Y'));

insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (3, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-01-2021', '%d-%m-%Y'));
insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (3, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-15-2021', '%d-%m-%Y'));

insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (4, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-01-2021', '%d-%m-%Y'));
insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (4, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-15-2021', '%d-%m-%Y'));

insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (5, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-01-2021', '%d-%m-%Y'));
insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (5, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-15-2021', '%d-%m-%Y'));

insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (6, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-01-2021', '%d-%m-%Y'));
insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (6, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-15-2021', '%d-%m-%Y'));

insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (7, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-01-2021', '%d-%m-%Y'));
insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (7, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-15-2021', '%d-%m-%Y'));

insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (8, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-01-2021', '%d-%m-%Y'));
insert into payroll (emp_ID, hourly_wage, overtime_coef, hours_worked, payment_method, pay_date) values (8, 7.25, 1.5, 40.0, "Direct Deposit", STR_TO_DATE('1-15-2021', '%d-%m-%Y'));


insert into employee_schedule (
insert into employee_schedule (
insert into employee_schedule (
insert into employee_schedule (
insert into employee_schedule (
insert into employee_schedule (
insert into employee_schedule (
insert into employee_schedule (
insert into employee_schedule (

insert into management (first_name, middle_initial, last_name, region_ID) values ("Joseph", "S", "McNoe", 0);
insert into management (first_name, middle_initial, last_name, region_ID) values ("John", "H", "Smith", 0);
insert into management (first_name, middle_initial, last_name, region_ID) values ("Thomas", "A", "Anderson", 1);

insert into card_reader (serial_number, total_transactions, dollars_collected_daily) values (0334873102, 1032, 457);
insert into card_reader (serial_number, total_transactions, dollars_collected_daily) values (2224156358, 655, 552);
insert into card_reader (serial_number, total_transactions, dollars_collected_daily) values (4587743895, 1032, 457);
insert into card_reader (serial_number, total_transactions, dollars_collected_daily) values (0633498452, 824, 276);
insert into card_reader (serial_number, total_transactions, dollars_collected_daily) values (9775358009, 655, 541);
insert into card_reader (serial_number, total_transactions, dollars_collected_daily) values (3462093115, 458, 340);
insert into card_reader (serial_number, total_transactions, dollars_collected_daily) values (3102327578, 45, 228);

insert into pump (
insert into pump (
insert into pump (
insert into pump (
insert into pump (
insert into pump (

insert into gas_type (price_per_gallon, type_name) values (3.55, "Regular");
insert into gas_type (price_per_gallon, type_name) values (3.89, "Unleaded");
insert into gas_type (price_per_gallon, type_name) values (3.97, "Unleaded Plus");
insert into gas_type (price_per_gallon, type_name) values (4.57, "Diesel");

insert into pump_gas_type_assoc (pump_ID, gas_type_ID) values (0, 0);
insert into pump_gas_type_assoc (pump_ID, gas_type_ID) values (1, 3);
insert into pump_gas_type_assoc (pump_ID, gas_type_ID) values (2, 2);
insert into pump_gas_type_assoc (pump_ID, gas_type_ID) values (3, 0);
insert into pump_gas_type_assoc (pump_ID, gas_type_ID) values (4, 0);
insert into pump_gas_type_assoc (pump_ID, gas_type_ID) values (5, 1);

insert into resevoir (gas_type_ID, holding_capacity, current_capacity) values (0, 40000, 27400); 
insert into resevoir (gas_type_ID, holding_capacity, current_capacity) values (1, 35000, 20750); 
insert into resevoir (gas_type_ID, holding_capacity, current_capacity) values (2, 30000, 19450); 
insert into resevoir (gas_type_ID, holding_capacity, current_capacity) values (3, 40000, 31250); 


  
