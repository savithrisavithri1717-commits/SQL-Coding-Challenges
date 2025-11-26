-- to create database
create database hospitals;
use hospitals;


create table patients(
    patient_id int primary key,
    patient_name varchar(50),
    age int,
    gender varchar(10),
    admissiondate date);
    
alter table patients
add doctorassigned varchar(50);

alter table patients
modify patient_name varchar(100);

rename table patients to patient_info;

truncate table patient_info;

drop table patient_info;

    
    
    
