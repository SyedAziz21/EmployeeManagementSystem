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
	identification_number varchar(12),
        project_id varchar(8), 
        primary key(emp_id),
		FOREIGN KEY (branch_id) REFERENCES company_branch(branch_id),
		FOREIGN KEY (ifsc_code) REFERENCES bank_details(ifsc_code),
		FOREIGN KEY (project_id) REFERENCES project_details(project_id)
		
        );

--Index

create index idx_emp_id on employee (emp_id);
create index idx_zip on employee (emp_id, zipcode);
create index idx_ifsc on bank_details (ifsc_code);
create index idx_zip_code on emp_address (zipcode);


--Views

CREATE VIEW employee_directory
AS
  SELECT e.emp_id                           AS employee_id,
         Concat(first_name, ' ', last_name) AS employee_name,
         e.date_of_birth                    AS DOB,
         e.gender                           AS gender,
         e.branch_id                        AS Branch_ID,
         e.email_id                         AS Email,
         e.mobile_number                    AS Contact_Number,
         city,
         state,
         e.zipcode                          AS zipcode,
         country,
         od.manager_id                      AS Manager_ID,
         od.hr_id                           AS hr_id,
         od.designation                     AS Designation,
         od.project_id                      AS Project_ID,
         pd.project_name                    AS project_name,
         pd.project_manager                 AS Project_Manager
  FROM   employee e
         LEFT JOIN emp_address ea
                ON e.zipcode = ea.zipcode
         LEFT JOIN official_data od
                ON e.emp_id = od.emp_id
         LEFT JOIN project_details pd
                ON od.project_id = pd.project_id; 



CREATE VIEW combined_data_view
AS
  SELECT e.emp_id                           AS employee_id,
         Concat(first_name, ' ', last_name) AS employee_name,
         e.date_of_birth                    AS DOB,
         e.gender                           AS gender,
         place_of_birth,
         nationality,
         e.branch_id                        AS Branch_ID,
         branch_head,
         e.email_id                         AS Email,
         e.mobile_number                    AS Contact_Number,
         ea.city,
         ea.state,
         e.zipcode                          AS zipcode,
         ea.country                         AS Country,
         od.manager_id                      AS Manager_ID,
         od.hr_id                           AS hr_id,
         od.designation                     AS Designation,
         od.project_id                      AS Project_ID,
         pd.project_name                    AS project_name,
         pd.project_manager                 AS Project_Manager,
         e.salary,
         od.account_number,
         od.ifsc_code,
         od.identification_number,
         pd.client,
         pd.years_of_contract,
         pd.number_of_employees,
         degree,
         year_of_completion,
         qualification_level,
         university,
         joining_date,
         exp,
         company_address,
         cb.city                            AS company_city,
         cb.number_of_employees             AS employees_in_branch,
         cb.country                         AS branch_country,
         bank_name,
         location,
         branch_manager
  FROM   employee e
         LEFT JOIN emp_address ea
                ON e.zipcode = ea.zipcode
         LEFT JOIN official_data od
                ON e.emp_id = od.emp_id
         LEFT JOIN project_details pd
                ON od.project_id = pd.project_id
         LEFT JOIN bank_details bd
                ON od.ifsc_code = bd.ifsc_code
         LEFT JOIN company_branch cb
                ON od.branch_id = cb.branch_id
         LEFT JOIN emp_experience expe
                ON e.emp_id = expe.emp_id
         LEFT JOIN emp_education edu
                ON edu.emp_id = expe.emp_id; 

--Trigger :

Delimiter //
Create Trigger default_designation BEFORE INSERT ON official_data FOR EACH ROW
BEGIN
IF NEW.designation is null THEN SET NEW.designation = 'Analyst';
END IF;
END//

