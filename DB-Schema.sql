use cse;
create table region(
region_ID int primary key not null AUTO_INCREMENT,
annual_profit double NOT NULL,
state varchar(255) NOT NULL
);

create table store(
store_ID int primary key not null AUTO_INCREMENT,
region_ID int NOT NULL,
address_ID int NOT NULL,
phone_ID int NOT NULL,
num_employees int NOT NULL,
num_gas_pumps int NOT NULL,
phone_number varchar(255) NOT NULL,
store_address varchar(255) NOT NULL,
foreign key (region_ID) references region(region_ID)
);


create table department(
department_ID int primary key not null AUTO_INCREMENT,
dept_name varchar(255),
store_ID int not null
);

create table licenses(
license_ID int primary key not null AUTO_INCREMENT,
has_food_handling boolean,
has_alcohol_sales boolean,
has_money_handling boolean
);

create table employee(
emp_ID int primary key not null AUTO_INCREMENT,
first_name varchar(255) NOT NULL,
middle_initial varchar(1) NULL,
last_name varchar(255) NOT NULL,
department_ID int NOT NULL,
license_ID int NOT NULL,
foreign key (department_ID) references department(department_ID),
foreign key (license_ID) references licenses(license_ID)
);

create table payroll(
payment_ID int primary key not null AUTO_INCREMENT,
emp_ID int,
total_wage int,
hours_worked int,
overtime int,
bonus_pay int,
payment_method varchar(255),
foreign key (emp_ID) references employee(emp_ID)
);


create table employee_schedule(
schedule_ID int primary key not null AUTO_INCREMENT,
emp_ID int,
time_in datetime NOT NULL,
time_out datetime NOT NULL,
absent bool NOT NULL,
is_pto bool NOT NULL,
foreign key (emp_ID) references employee(emp_ID)
);

create table management(
manager_ID int primary key not null AUTO_INCREMENT,
first_name varchar(255) NOT NULL,
middle_initial varchar(1) NULL,
last_name varchar(255) NOT NULL,
region_ID int NOT NULL,
foreign key (region_ID) references region(region_ID)
);

create table card_reader(
card_reader_ID int NOT NULL AUTO_INCREMENT,
serial_number int NOT NULL,
total_transactions int NOT NULL,
dollars_collected_daily double NOT NULL,
PRIMARY KEY(card_reader_ID, serial_number)
);

create table pump(
pump_ID int not null primary key auto_increment,
local_ip varchar(255) NOT NULL,
date_installed date NOT NULL,
store_ID int NOT NULL,
gallons_sold double NOT NULL,
dispense_rate double NOT NULL,
last_maintenance date NOT NULL,
card_reader_ID int NOT NULL,
foreign key (card_reader_ID) references card_reader(card_reader_ID),
foreign key (store_ID) references store(store_ID)
);

create table gas_type(
gas_type_ID int not null primary key auto_increment,
price_per_gallon double NOT NULL,
type_name varchar(255) NOT NULL
);

create table pump_gas_type_assoc(
pump_ID int not null,
gas_type_ID int not null,
PRIMARY KEY(pump_ID, gas_type_ID),
foreign key (pump_ID) references pump(pump_ID),
foreign key (gas_type_ID) references gas_type(gas_type_ID)
);

create table resevoir(
resevoir_ID int not null primary key auto_increment,
gas_type_ID int not null,
holding_capacity double not null,
current_capacity double not null,
foreign key (gas_type_ID) references gas_type(gas_type_ID)
);

create table gas_supplier(
gas_supplier_ID int not null primary key auto_increment,
supplier_name varchar(255) not null,
sales_rep_name varchar(255) not null,
supplier_address varchar(255) not null,
phone_number varchar(255) not null
);

create table gas_invoice(
invoice_ID int not null primary key auto_increment,
gallons_delivered double NOT NULL,
gas_type_ID int not null,
amount_due double not null,
invoice_date date not null,
gas_supplier_ID int not null,
foreign key (gas_supplier_ID) references gas_supplier(gas_supplier_ID),
foreign key (gas_type_ID) references gas_type(gas_type_ID)
);

create table aisle(
aisle_ID int not null primary key auto_increment,
category varchar(255) not null
);

create table product(
product_ID int not null primary key auto_increment,
product_name varchar(255) not null,
sell_by date not null,
retail_price double not null,
aisle_ID int not null,
foreign key (aisle_ID) references aisle(aisle_ID)
);

create table product_supplier(
supplier_ID int not null primary key auto_increment,
supplier_name varchar(255) not null,
sales_rep_name varchar(255) not null,
supplier_address varchar(255) not null,
phone_number varchar(255) not null
);


create table product_invoice(
invoice_ID int primary key,
product_ID int not null,
amount_due double not null,
quantity_delivered int not null,
supplier_ID int not null,
foreign key (product_ID) references product(product_ID),
foreign key (supplier_ID) references product_supplier(supplier_ID)
);

create table inventory(
store_ID int not null,
product_ID int not null,
quantity int not null,
beginning_quantity int not null,
primary key(store_ID, product_ID),
foreign key (store_ID) references store(store_ID),
foreign key (product_ID) references product(product_ID)
);

create table partner_business(
partner_id int not null primary key auto_increment,
business_type varchar(255) not null,
contract_start_date date not null,
contract_end_date date,
store_ID int not null,
foreign key (store_ID) references store(store_ID)
);


create table rewards_program_account(
account_ID int not null auto_increment,
store_ID int not null,
first_name varchar(255) not null,
middle_initial varchar(1) null,
last_name varchar(255) not null,
rewars_points int not null,
primary key(account_ID, store_ID),
foreign key (store_ID) references store(store_ID)
)









