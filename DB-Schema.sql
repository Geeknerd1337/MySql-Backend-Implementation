use cse;
create table payroll(
payment_ID int primary key,
emp_ID int,
total_wage int,
hours_worked int,
overtime int,
bonus_pay int,
payment_method varchar(255),
foreign key (emp_ID) references employee(emp_ID)
);

create table department(
department_ID int primary key,
dept_type varchar(255),
location varchar(255)
);

create table licenses(
license_ID int primary key,
food_handling boolean,
alcohol_sales boolean,
money_handling boolean
);

create table employee_schedule(
schedule_ID int primary key,
emp_ID int,
time_in datetime NOT NULL,
time_out datetime NOT NULL,
absent bool NOT NULL,
is_pto bool NOT NULL,
foreign key (emp_ID) references employee(emp_ID)
);

create table employee(
emp_ID int primary key,
first_name varchar(255) NOT NULL,
middle_initial varchar(1) NULL,
last_name varchar(255) NOT NULL,
department_ID int NOT NULL,
liscense_ID int NOT NULL,
foreign key (department_ID) references department(department_ID),
foreign key (liscense_ID) references licenses(liscense_ID)
)

create table store(
store_ID int primary key,
region_ID int NOT NULL,

)

create table address(

)


create table aisle(
);

create table aisle_product_assoc(

);

create table product(

);

create table product_invoice_assoc(

);

create table purchase_invoice(

);

create table supplier_invoice_assoc(

);

create table product_supplier(

);
