insert into emp_address(country, state, city, zipcode) values 
('United States of America','Illinois','Chicago','60007'),
('United States of America','Georgia','Atlanta','30304'),
('United States of America','Illinois','Chicago','60009'),
('Austria','Vienna','Vienna','22200'),
('Austria','Styria','Graz','8010'),
('United Kingdom','england','London','43140'),
('United Kingdom','England','England','72046'),
('United Kingdom','Wales','Cardiff','CF10'),
('United Kingdom','England','Bristol','6011'),
('United Kingdom','England','Bristol','6010'),
('United Kingdom','England','Manchester','M1'),
('Canada','Québec','Montreal','H1A0A5'),
('Canada','Ontario','Toronto','57268'),
('Canada','Ontario','Toronto','66777'), 
('India','Maharastra','Mumbai','400008'),
('India','Haryana','Chandigarh','160002'),
('India','Telangana','Kurnool','518001'),
('India','Telangana','Hyderabad','500024'),
('India','Delhi','Delhi','110064'),
('India','Odisha','Odisha','759026'),
('France','le-de-France','Paris','75440'),
('France','le-de-France','Paris','75460'),
('Canada','British columbia','vancouver','V5Z'),
('United States of America','Massachusetts','Boston','2101');


insert into bank_details(ifsc_code, bank_name, Location, branch_manager) values
('FR0PRS','Bank of France','Paris','John Walker'),
('BNKENG0CRD','Bank of England','Cardiff','Jennifer Winget'),
('SBIN2BLR','State Bank of India','Bangalore','Ramakrishna'),
('BNKAUSVNA','Bank of Austria','Vienna','Holly Peter'),
('CNB78TNT','International Canadian Bank','Toronto','Patrick James'),
('BOA0NY','Bank of America','New York','Louis Matthews');


insert into company_branch(branch_id, branch_head, city, number_of_employees,country) values
('AMR001','Donna','Boston',156,'America'),
('UK005','Rachel','Cardiff',20,'United Kingdom'),
('FR565','James','Paris',5,'France'),
('AUS001','Shane','Vienna',4,'Austria'),
('CAN110','James','Vancouver',50,'Canada'),
('IND112','Shane','Bangalore',150,'India');


insert into employee (emp_id, first_name, last_name,  date_of_birth, place_of_birth,nationality,gender, marital_status,branch_id, email_id ,mobile_number, address, zipcode, salary)  values
('10001','Rajkumar','Rao',cast('1990-07-02' as  date),'Mumbai','Indian','Male','Married','IND112','RaoRajkumar@gmail.com','9593241556','','400008',134000),
('10002','Rakul Preeth','Singh',cast('1996-11-12' as  date),'Chandigarh','Indian','Female','Single','IND112','SinghRakul Preeth@gmail.com','971124563','','160002',110000),
('10003','Tom','Hanks',cast('1990-02-03' as  date),'Toronto','Canadian','Male','Married','CAN110','HanksTom@gmail.com','126058617','','57268',134000),
('10004','Srimayee','Bandarupalli',cast('1990-03-04' as  date),'Kurnool','Indian','Female','Married','IND112','BandarupalliSrimayee@gmail.com','165458629','','518001',134000),
('10005','Abdur','Rahman',cast('1996-12-13' as  date),'Hyderabad','Indian','Male','Single','IND112','RahmanAbdur@gmail.com','6365948102','','500024',110000),
('10006','Ayush','Gupta',cast('1996-08-14' as  date),'Delhi','Indian','Male','Single','IND112','GuptaAyush@gmail.com','6514648201','','110064',110000),
('10007','Nikhil','Kumar',cast('1995-06-21' as  date),'Odisha','Indian','Male','','IND112','KumarNikhil@gmail.com','8881559659','','759026',114000),
('10008','Rachel','Scott',cast('1989-01-10' as  date),'London','British','Female','Divorced','UK005','ScottRachel@gmail.com','165458611','','43140',140000),
('10009','Dana','',cast('1996-01-15' as  date),'Paris' ,'French','Female','Single','FR565','Dana@gmail.com','165458626','','75440',114000),
('10010','Simon','Doyle',cast('1989-10-11' as  date),'Paris','French','Male','Divorced','FR565','DoyleSimon@gmail.com','126458614','','75460',140000),
('10011','Emma','Clarke',cast('1996-05-16' as  date),'vancouver','Canadian','Female','Single','CAN110','ClarkeEmma@gmail.com','165458623','','V5Z',110000),
('10012','Frank','Gallo',cast('1990-02-05' as  date),'Atlanta','American','Male','Married','AMR001','GalloFrank@gmail.com','971124963','','30304',134000),
('10013','Sophia','Mathews',cast('1990-01-06' as  date),'England','British','Female','Married','UK005','MathewsSophia@gmail.com','165458614','','72046',134000),
('10014','Alberto','Bryant',cast('1996-11-17' as  date),'Toronto','Canadian','Male','Single','CAN110','BryantAlberto@gmail.com','126258657','','66777',110000),
('10015','Joe','Peterson',cast('1991-01-20' as  date),'Vienna','Austrian','Male','Single','AUS001','PetersonJoe@gmail.com','971125563','','22200',128000),
('10016','Paul','Walker',cast('1992-05-22' as  date),'Manchester','British','Male','Single','UK005','WalkerPaul@gmail.com','125658619','','M1',125000),
('10017','Aidan','',cast('1990-06-07' as  date),'Bristol','British','Male','Married','UK005','Aidan@gmail.com','125458617','','6010',134000),
('10018','James','Rick',cast('1988-02-24' as  date),'Montreal','Canadian','Male','','CAN110','RickJames@gmail.com','125858627','','H1A0A5',140000),
('10019','Harry','Potter',cast('1989-03-08' as  date),'Boston','American','Male','Married','AMR001','PotterHarry@gmail.com','971124763','','2101',140000),
('10020','Peter','Benett',cast('1993-03-18' as  date),'Chicago','American','Male','Single','AMR001','BenettPeter@gmail.com','971125163','','60009',122000),
('10021','Donna','',cast('1989-11-24' as  date),'Chicago','American','Female','','AMR001','Donna@gmail.com','971124583','','60007',134000),
('10022','Hermione','Grangel',cast('1993-07-19' as  date),'Vienna','Austrian','Female','Single','AUS001','GrangelHermione@gmail.com','165428966','','22200',114000),
('10023','Olivia','Bryant',cast('1993-01-23' as  date),'Cardiff','British','Female','Single','UK005','BryantOlivia@gmail.com','165458617','','CF10',122000),
('10024','Jessica','James',cast('1993-11-25' as  date),'Bristol','British','Female','Single','UK005','JamesJessica@gmail.com','165458620','','6011',114000),
('10025','Shane','Mathews',cast('1989-02-09' as  date),'Graz','Austrian','Male','Married','AUS001','MathewsShane@gmail.com','971125363','','8010',140000);

insert into project_details (project_id,project_name,client, years_of_contract,number_of_employees,project_manager) values
('prj0001','Ovsi','UAL',2,5,'Tom Hanks'),
('prj0005','PNR','UAL',3,4,'Sophia Mathews'),
('prj0012','Credit','Citigroup',1,8,'Srimayee'),
('prj0300','Operations','Titan',5,3,'Rajkumar'),
('prj0023','Analytics','Forevermark',1,12,'Frank'),
('prj0010','Ape','BHEL',10,15,'Aidan');


insert into official_data (emp_id, branch_id, manager_id, hr_id, account_number, ifsc_code, designation, identification_number, project_id ) values 
('10011','CAN110','10025','10016','154892245','CNB78TNT','Assistant HR','','prj0001'),
('10003','CAN110','10010','10025','154891245','CNB78TNT','Assistant VP','IDF4735','prj0023'),
('10013','UK005','10019','10025','109846531','BNKENG0CRD','Assistant VP','IDF2997','prj0012'),
('10008','UK005','10018','10025','109845671','BNKENG0CRD','COO','','prj0300'),
('10007','IND112','10001','10016','2254989567','SBIN2BLR','DBA','','prj0001'),
('10014','CAN110','10017','10011','154891945','CNB78TNT','Developer','','prj0023'),
('10018','CAN110','NA','10025','154890045','CNB78TNT','Director','','prj0012'),
('10016','UK005','10025','10025','109850599','BNKENG0CRD','HR ','','prj0300'),
('10025','AUS001','10018','NA','19325844','BNKAUSVNA','HR Head','IDF1456','prj0001'),
('10020','AMR001','10001','10016','565123581','BOA0NY','IT Admin','','prj0023'),
('10002','IND112','10001','10011','2254999672','SBIN2BLR','IT Admin','','prj0012'),
('10006','IND112','10001','10011','2254995532','SBIN2BLR','Junior Analyst','','prj0300'),
('10009','FR565','10012','10011','80547975','FR0PRS','Junior Developer','','prj0300'),
('10005','IND112','10017','10011','2254999673','SBIN2BLR','Junior Developer','','prj0001'),
('10001','IND112','10013','10025','2254983527','SBIN2BLR','Operations Manager','','prj0023'),
('10022','AUS001','10012','10016','19325964','BNKAUSVNA','Senior Analyst','','prj0012'),
('10024','UK005','10012','10016','109854934','BNKENG0CRD','Senior Analyst','','prj0300'),
('10015','AUS001','10017','10016','19325894','BNKAUSVNA','Senior Developer','','prj0300'),
('10023','UK005','10017','10016','109854522','BNKENG0CRD','Senior Developer','','prj0001'),
('10012','AMR001','10021','10025','565118581','BOA0NY','Senior Manager','IDF2090','prj0023'),
('10004','IND112','10021','10025','2254983567','SBIN2BLR','Senior Manager','IDF6321','prj0012'),
('10017','UK005','10019','10025','109850571','BNKENG0CRD','Senior Manager','IDF2769','prj0300'),
('10019','AMR001','10008','10025','565121581','BOA0NY','Vice President','IDF6098','prj0001'),
('10021','AMR001','10008','10025','565118581','BOA0NY','Vice President','IDF7525','prj0023'),
('10010','FR565','10008','10025','80546975','FR0PRS','Vice President','IDF5439','prj0012');


insert into emp_experience (emp_id,joining_date,designation,exp,company_address) values
('10018',cast('2008-08-12' as date),'Director',15,'Vancover,Canada'),
('10008',cast('2007-06-15' as date),'Coo',12,'cardiff, United kingdom'),
('10025',cast('2010-09-03' as date),' HR Head',14,'Boston, America'),
('10019',cast('2008-11-18' as date),'Vice president',14,'Boston, America'),
('10010',cast('2011-03-20' as date),'Vice president ',14,'Paris, France'),
('10021',cast('2014-10-04' as date),'Vice president ',12,'Boston, America'),
('10013',cast('2011-08-17' as date),'Assistant Vp',13,'cardiff, United kingdom'),
('10003',cast('2015-02-18' as date),'Assistant Vp',11,'Vancover,Canada'),
('10012',cast('2011-05-14' as date),'Senior Manager',13,'Boston, America'),
('10004',cast('2013-11-20' as date),'Senior Manager',11,'Bangalore, India'),
('10017',cast('2012-12-01' as date),'Senior Manager',13,'cardiff, United kingdom'),
('10001',cast('2013-01-01' as date),'Operation Manager',13,'Bangalore, India'),
('10015',cast('2014-07-15' as date),'Senior Developer',12,'Vienna, Austria');


insert into emp_education (emp_id,degree,year_of_completion,qualification_level,university) values
('10012','Bachelors of Engineering','2002','B','Yale University'),
('10019','Bachelors of Engineering','2001','B','Columbia University'),
('10020','Masters of Science','2007','M','University of Chicago'),
('10021','Masters of Science','2003','M','Cornell University'),
('10015','Bachelors of Engineering','2003','B','University of Vienna'),
('10022','Bachelors of Engineering','2005','B','University of Graz'),
('10025','Bachelors of Engineering','2001','B','University of Vienna'),
('10008','Masters of Science','2003','M','Kings College London'),
('10013','Bachelors of Engineering','2002','B','Oxford University'),
('10016','Masters of Science','2006','M','University of Cambridge'),
('10017','Bachelors of Engineering','2002','B','University of Manchester'),
('10023','Bachelors of Engineering','2005','B','University College London'),
('10024','Bachelors of Engineering','2005','B','Kings College London'),
('10003','Masters of Science','2004','M','University of Waterloo'),
('10011','Bachelors of Engineering','2008','B','University of Alberta'),
('10014','Bachelors of Engineering','2008','B','University of Waterloo'),
('10018','Bachelors of Engineering','2000','B','University of British Columbia'),
('10009','Bachelors of Engineering','2008','B','University of Paris-Saclay'),
('10010','Bachelors of Engineering','2001','B','Sciences Po'),
('10001','Bachelors of Engineering','2002','B','Indian Institute of Technology'),
('10002','Bachelors of Engineering','2008','B','Osmania University'),
('10004','Masters of Science','2004','M','JNTUH'),
('10005','Masters of Science','2010','M','BR Ambedkar University'),
('10006','Bachelors of Engineering','2008','B','Osmania University'),
('10007','Masters of Science','2009','M','Indian Institute of Technology');


insert into emp_identification (id_number,drv_license,dl_expiry,passport_number,pp_expiry,pp_issue_place,pp_issue_date) values
('IDF6098','DRV3546',cast('2030-06-03' as date),'PP3052',cast('1930-02-05' as date),'',cast('2020-02-05' as date)),
('IDF7525','DRV234',cast('2025-09-05' as date),'PP4925',cast('2027-06-07' as date),'',cast('2017-06-07' as date)),
('IDF5439','DRV4290',cast('2028-11-09' as date),'PP8765',cast('2029-06-08' as date),'',cast('2019-06-08' as date)),
('IDF2090','DRV2113',cast('2025-04-08' as date),'PP9098',cast('2028-06-09' as date),'',cast('2018-06-09' as date)),
('IDF6321','DRV3009',cast('2024-10-31' as date),'PP2130',cast('2029-06-10' as date),'',cast('2019-06-10' as date)),
('IDF2769','DRV4480',cast('2026-08-28' as date),'PP6543',cast('2025-06-11' as date),'',cast('2015-06-11' as date)),
('IDF1456','DRV2170',cast('2023-12-18' as date),'PP2876',cast('2028-06-12' as date),'',cast('2018-06-12' as date)),
('IDF4735','DRV4327',cast('2026-03-07' as date),'PP1935',cast('2026-06-13' as date),'',cast('2016-06-13' as date)),
('IDF2997','DRV3876',cast('2025-10-20' as date),'PP2087',cast('2028-06-14' as date),'',cast('2018-06-14' as date));
