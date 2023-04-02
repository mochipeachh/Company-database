create database Company;

use Company;

create table if not exists manager(
	man_id smallint not null primary key auto_increment,
    first_name varchar(50),
    last_name varchar(50) not null );

insert into manager values (1, "Lamees", "khan") ;

select * from manager;

create table if not exists employee(
	emp_id smallint not null primary key auto_increment,
	first_name varchar(50),
	last_name varchar(50) not null,
	dep_id smallint not null,
	dep_name varchar(5),
	emp_role varchar(20),
	manager_id smallint,
	foreign key (manager_id) references manager(man_id) );

insert into employee values (1, "Ryan", "Lee", "1", "duck", "duck feeder", "1");

select * from employee;


