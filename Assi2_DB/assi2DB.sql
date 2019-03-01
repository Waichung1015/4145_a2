drop database assi2;
create database assi2;
use assi2;

create table if not exists broker_userinfo(
user_id int auto_increment primary key,
user_name varchar(45),
user_pwd varchar(45),
user_email varchar(45)
);

create table if not exists employer_form(
form_id int auto_increment primary key,
employer_name varchar(45),
employer_title varchar(45),
employer_dpt varchar(45),
done bool,
employee_name varchar(45)
);

create table if not exists broker_mortgage_record(
user_id int,
mortgage_id int auto_increment primary key,
form_id int,
user_realname varchar(45),
user_company varchar(45),
user_phone varchar(45),
user_address varchar(45),
user_mortgage decimal,
have_submitted bool,
have_emp_help bool,
have_done bool,
foreign key (user_id) references broker_userinfo(user_id),
foreign key (form_id) references employer_form(form_id)
);

create table if not exists employee_info(
emp_id int primary key,
emp_name varchar(45),
emp_title varchar(45),
emp_work_time decimal,
emp_salary decimal
);

create table if not exists employee_form(
mortgage_id int,
emp_id int,
form_id int primary key,
address varchar(45),
mortgage_money decimal,
foreign key (mortgage_id) references broker_mortgage_record(mortgage_id),
foreign key (emp_id) references employee_info(emp_id)
);