## hospital analysis project ##
Hospital Analysis Project uses Oracle SQL and PL/SQL to analyze patient admissions, doctor performance, and regional healthcare trends. The project applies advanced queries and analytics functions to generate meaningful, real-world hospital insights for decision-making.

## Features ##
-Analyzes patient admissions and discharge trends
-Tracks doctor workload and specialty performance
-Provides province-wise and city-wise healthcare insights
-Calculates average length of hospital stay
-Identifies repeat and high-risk patients
-Uses optimized SQL queries with joins and subqueries
-Implements advanced analytics using window functions
-Includes PL/SQL procedures, functions, and cursors
-Handles real-world healthcare data scenarios
-Interview-ready, well-structured Oracle SQL project

## Files in the report ##
-creating table screenshot
-inserting value screenshot
-basic and advanced queries
-ER diagram for (healthcare relationship)
-readme file

## Database Structure
The project uses a relational database with the following tables:

- ** patients -patient_id,first_name,last_name,gender,birth_date,city,province_id,allergies,height,weight **
- ** Admissions -admission_id,patient_id,admission_date,discharge_date,dignosis,attending_doctor_id **
- ** Province_names -province_id,province_name **
- ** Doctors -doctor_id,first_name,last_name,speciality **

### ER Diagram
![ER Diagram](healthcare analysis)
---


## Sample Queries

Some example queries included in the project:
         
          ## BASIC QUERIES ##

1]Display all the patient details
4]show the patient full name
3]list all the male patients
4]display patients from a pune city
5]show all doctors
6]display doctors full_name with speciality
7]show all admissions
8]count total patients
9]list distinct diagnosis 
10]show all the province name


       ## INTERMEDIATE QUERIES ##

1]patient name with province name
2]admission details with patient_name
3]show the admisssions with doctor name
4]count patients per province
5]show the patient with allergies
6]calculate the patient age
7]show the number od admissions per patients
8]the patient admitted more than once
9]average height and weight by gender
10]find the maximum and minimum patient height

          ## ADVANCED QUERIES ##

1]Rank patients by weight
2]find patients with above-average weight
3]find the most common dignosis
4]get the latest admissions for each parient
5]calculate length of stay for each admission
6]show cumultive admissions by date
7]identify repeat patient (admitted more than once)
8]each doctors busiest admission day


        ## PL/SQL QUERIES ##
        
1]print total number of patients
2]find patient using DOB
3]cursor to display all doctor names
4]procedure to count admission for a patient
5]function to calculate hospital stay days



          ##Author##

**Shivani Balaji Shinde**