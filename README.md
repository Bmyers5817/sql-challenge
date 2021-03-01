# sql-challenge

This project started off a bit rocky, but once discussed with the TA, I realized my error and fixed the field definitions.  Once these were fixed all data was imported successfully.  

Once all the csv files were imported, completion of the SQL queries did not take very long.  Here is a count of results for each of the queries requested:

1. There was a total of 300,024 (all records) employees after joining the employees and salaries table.
2. There were 36,150 employees hired in 1986.
3. There were 298 managers identified in the data after joining the departments, detp_manager and employees tables.
4. This query produced 331,603 records where each employee is listed with his or her department name after joining employees, dept_emp and departments.  This identified 31,579 instances where an employee may split thier time in more than 1 department or they switched departments over time.
5. There were 20 employees where the first name is hHercules and the last name starts with B.  Interesting enough there is a mix of males and females in this resulting query. 
6. This query resulted in 52,245 employees in the Sales Department.
7. This query resulted in 137,952 employees in the Sales or Development Departments.
8. This query resulted in a total of 1,638 unique employee last names, which have varying frequencies.  The most common last name is Baba.

I do find that SQL is very efficient in drilling into information.  As I continue to watch for data analysit positions at my current company, I have seen that this language is the most commonly sought after skillset.

As I was running into challenges with bringing my database into SQLAlchemy, I opted to run some additional queries to practice SQL.  While doing so, I did query the database for ID # 499942, where I see that the name is shown as April Foolsday.

I think adding office location (street address, city and state) would have allowed for some interesting queries to be run, where one could evaluate the average salary by location.

I ran a query to see average salary by sex, and found both to be similar, where females on average were paid $52,953.84 and males were paid $52,982.00.

Finally, I ran a query to see the average salary by title.  

I wish there was a lot more data elements provided for this, as it would have been fun to explore and practice SQL.



