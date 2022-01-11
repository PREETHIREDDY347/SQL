create database HRDB


create table regions(REGION_ID int primary key,
                     REGION_NAME varchar(25)) 

create table countries(COUNTRY_ID char(2) primary key,
                       COUNTRY_NAME varchar(40),
					   REGION_ID int references regions(REGION_ID))


create table locations(LOCATION_ID int primary key,
                       STREET_ADDRESS varchar(25),
					   POSTAL_CODE varchar(12),
					   CITY varchar(30),
					   STATE_PROVINCE varchar(12),
					   COUNTRY_ID char(2) references countries(COUNTRY_ID))


create table departments(DEPARTMENT_ID int primary key,
                         DEPARTMENT_NAME varchar(30),
						 MANAGER_ID int,
						 LOCATION_ID int references locations(LOCATION_ID))
						 
						 
create table jobs(JOB_ID varchar(10) primary key,
                  JOB_TITLE varchar(35),
				  MIN_SALARY Int,
				  MAX_SALARY int)



create table job_history(EMPLOYEE_ID int primary key,
                         START_DATE date,
						 END_DATE date,
						 JOB_ID varchar(10) references jobs(JOB_ID),
						 DEPARTMENT_ID int references departments(DEPARTMENT_ID))


create table employees(EMPLOYEE_ID int references job_history(EMPLOYEE_ID),
                       FIRST_NAME varchar(20),
					   LAST_NAME varchar(25),
					   EMAIL varchar(25),
					   PHONE_NUMBER varchar(20),
					   HIRE_DATE date,
					   JOB_ID varchar(10) references jobs(JOB_ID),
					   SALARY int,
					   COMMISSION_PCT int,
					   MANAGER_ID int,
					   DEPARTMENT_ID int)


create table job_grades(GRADE_LEVEL varchar(2),
                        LOWEST_SAL int,
						HIGHEST_SAL int)
					   
					  
					   