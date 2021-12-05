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