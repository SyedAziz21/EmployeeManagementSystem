CREATE DATABASE emp_mgmt_system;

USE emp_mgmt_system;
 
SHOW TABLES;

CREATE TABLE emp_address (  
        country varchar(30),
        state varchar(20),
        city varchar(20),
        zipcode varchar(8),
        primary key(zipcode)
        );

CREATE TABLE employee (
        emp_id varchar(10),
        first_name varchar(20),
        last_name varchar(20),
        date_of_birth DATE,
        place_of_birth varchar(20),
        nationality varchar(10),
        gender varchar(6),
        marital_status varchar(10),
        branch_id varchar(6),
        email_id varchar(35),
        mobile_number varchar(10),
        address varchar(35),
        zipcode varchar(6),
        salary double,        
        PRIMARY KEY (emp_id),
		FOREIGN KEY (zipcode) REFERENCES emp_address(zipcode)  
        );
		
CREATE TABLE emp_identification (       
        id_number varchar(10),
        drv_license varchar(10),
        dl_expiry date,
        passport_number varchar(10),
        pp_expiry date,
        pp_issue_place varchar(10),
        pp_issue_date date,
        PRIMARY KEY (id_number)
        );
		

CREATE TABLE emp_education (       
        emp_id varchar(10),
        degree varchar(30),
        year_of_completion year,
        qualification_level char(1),
        university varchar(35),
		FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
        );
        
		
CREATE TABLE emp_experience (        
        emp_id varchar(10),
        joining_date date,
        designation varchar(30),
        exp int,
        company_address varchar(25),
        FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
        );
		
CREATE TABLE bank_details (  
        ifsc_code varchar(15),
        bank_name varchar(30),
        Location varchar(12),
        branch_manager varchar(20),
        primary key(ifsc_code)
        );
		
CREATE TABLE company_branch (  
        branch_id varchar(8),
        branch_head varchar(30),
        city varchar(20),
        number_of_employees int,
        country varchar(20),
        primary key(branch_id)
        );

CREATE TABLE project_details (  
        project_id varchar(8),
        project_name varchar(18),
        client varchar(18),
        years_of_contract int,
        number_of_employees int,
        project_manager varchar(20),
        primary key(project_id)
        );

CREATE TABLE official_data (  
        emp_id varchar(8),
        branch_id varchar(8),
        manager_id varchar(8),
        hr_id varchar(8),
        account_number varchar(18),
        ifsc_code varchar(15),
        designation varchar(25),
        project_id varchar(8), 
        primary key(emp_id),
		FOREIGN KEY (branch_id) REFERENCES company_branch(branch_id),
		FOREIGN KEY (ifsc_code) REFERENCES bank_details(ifsc_code),
		FOREIGN KEY (project_id) REFERENCES project_details(project_id)
		
        );