use classicmodels;

create table facility
(facility_id int,
name varchar(100), 
state varchar(100), 
country varchar(100)); 

alter table facility modify facility_id int primary key auto_increment;

alter table facility add column city varchar(100) not null after name;

describe facility;