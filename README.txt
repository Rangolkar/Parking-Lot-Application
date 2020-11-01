Team A - Members:
1. Parthmesh Shivrame - pkshivra
2. Shubham Shah - sashah6
3. Radhika Angolkar - rangolk

Files required to run the application:
1. create_and_insert_schema.py : Creates the schema from the file CREATE_schema.sql and inserts the data from INSERT_schema.sql 
2. CREATE_schema : Create table schema. 
3. INSERT_schema  : Insert Querries required to populate the default data.
4. parkingFunctions.py : This file contains all the logic and implementation to execute the query and the pull the data.
5. db_cli.py : This file contains the front end code for the application and the display logic. 
6. sql_connector.py : This file contains the MySQL connection logic and exception handler for the connection.

####Keep all the files in the same folder, as they have been imported into each other###

The code was tested and implemented on a windows machine.
Testing hardware specifications:
Operating System: Windows 8 and Windows 10 

Software Version:
1.MySQL version 8.0.21
2.Python version 3.8 and above

Install the below mentioned modules through windows cli: 
Go to cmd, and perform the below mentioned commands:
1. pip install mysql-connector-python
2. pip install datetime
3. pip install python-dateutil

Environment Setup:
1. Before executing the create_and_insert_schema.py, please enter your MySQL Credentials:  
Inside create_and_insert_schema.py change the username, password and host with your details

Go to Line no: 6 of create_and_insert_schema.py 
cnx = mysql.connector.connect(user='root', password='root', host='127.0.0.1')
Modify the user to your user id for MySQL and password as your MySQL password and host on which the server is located.

2. Run  create_and_insert_schema.py through the cli:
Command: python create_and_insert_schema.py 
This will load the database schema and insert details in your table.

3. Now, add your credentials to sql_connector.py file:  
Inside sql_connector.py change the username, password and host with your details like previous step in the below line
Line no: 15
self.cnx = mysql.connector.connect( user="root", password="root", host="127.0.0.1", database="dbms" )
Modify the user to your user id for MySQL and password as your MySQL password and host on which the server is located.

4. Starting the Application:
Command:
python db_cli.py 

After running the above command, various roles will be displayed:
1. UPS Admin: Admin of the parking lot.
2. University Employee: Employee functions are available [Non visitor].
3. Student: Student functions are availble [Non visitor].
4. Visitor: Visitor functions are avialble [Visitor].
5. Test Query: Any query to be executed through the cli.
6. Sample Test Queries: All the queries and functions supported by the application.


5.
Select an appropriate role from above.
The authentication for each role is mainted as below:

University ID	Password	Type
1000000		abc123		Admin
1006020		abc123		Employee
1006022		abc123		Employee
10079999		abc123		Employee
1006003		abc123		Student
1006135		abc123		student

If you wish to skip the authentication step, select role 6.

6. All the function inputs are guided through the cli as an interactive prompt.
For more details about the assigned queries and the functions, refer "InstructionsToRunFunctions.pdf" 


