import mysql.connector
import time
import os

#Below line creates a DB connection
ems_db = mysql.connector.connect(  host="localhost",  user="manager",  password="manager@123",  database="emp_mgmt_system")

#Cursor objects interact with the MySQL server using a ems_db object.
myquery = ems_db.cursor()

#Below line executes query on MySQL connection established using the provided credentials i.e manager.
myquery.execute("select e.emp_id,concat(first_name,' ',last_name),mobile_number,project_id from employee e join official_data o on e.emp_id = o.emp_id where project_id ='prj0001';")

#Below line fetches the query output from mysql and stores it in the query_result
query_result = myquery.fetchall()
#Using the time module of python we are getting the current timestamp to create the new file with timestamp
now = time.strftime("%Y%m%d-%H%M%S")
filename = "myfile" + str(now)+".txt"

print("Opening file {}".format(filename))

#Below line is used to open the file in write mode and using the forloop below that we'll be writing the data into the text file and close the file stream
file1 = open(filename,"w")

for x in query_result:
    for word in x :
       file1.writelines(word + "\t")  
    file1.writelines("\n")
file1.close()

print("data has been successfully written to text file {}\n".format(filename))

#Below will be writing the output to python screen fetching it from the file which has been written just now
file1 = open(filename,"r+")   
print("Output from file is \n")
read=file1.readlines()
for i in read:
    print(i + "\n")
