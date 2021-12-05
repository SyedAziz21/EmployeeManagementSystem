CREATE USER 'manager'@'localhost' IDENTIFIED BY 'manager@123';
CREATE USER 'finance'@'localhost' IDENTIFIED BY 'finance@123';
CREATE USER 'hr'@'localhost' IDENTIFIED BY 'hr@123';
CREATE USER 'employee'@'localhost' IDENTIFIED BY 'employee@123';
CREATE USER 'itadmin'@'localhost' IDENTIFIED BY 'itadmin@123';



GRANT select ON emp_mgmt_system.* TO 'manager'@'localhost';
GRANT select, insert, update, delete ON emp_mgmt_system.company_branch TO  'manager'@'localhost';
GRANT select, insert, update, delete ON emp_mgmt_system.project_details TO  'manager'@'localhost';

GRANT select ON emp_mgmt_system.* TO  'hr'@'localhost';
GRANT select, insert, update, delete ON emp_mgmt_system.employee TO  'hr'@'localhost';
GRANT select, insert, update, delete ON emp_mgmt_system.emp_address TO  'hr'@'localhost';
GRANT select, insert, update, delete ON emp_mgmt_system.emp_education TO  'hr'@'localhost';
GRANT select, insert, update, delete ON emp_mgmt_system.official_data TO  'hr'@'localhost';

GRANT select ON emp_mgmt_system.employee_directory TO 'employee'@'localhost';
GRANT ALL PRIVILEGES ON * . * TO 'itadmin'@'localhost';
GRANT ALL PRIVILEGES ON emp_mgmt_system.bank_details TO  'finance'@'localhost';

