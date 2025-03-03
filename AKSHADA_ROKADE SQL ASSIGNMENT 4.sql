create database customers_orders;
use customers_orders;
-- --------------------------------------------------------------------------------------------------------------
-- QUESTION [1]

create table customers
(customer_id int primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null, 
email varchar(255) unique,
phone_number varchar(20));
alter table customers modify phone_number varchar(20) not null;
describe customers;

-- --------------------------------------------------------------------------------------------------------------

-- QUESTION [2]

create table orders 
(order_id int primary key auto_increment,
customer_id int,
order_date date,
total_amount decimal(10,2));
alter table orders add constraint fk_customerid foreign key(customer_id) references customers(customer_id);
alter table orders add constraint chk_amount check (total_amount > 0);

describe orders;
-- -------------------------------------------------------------------------------------------------------------