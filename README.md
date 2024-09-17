# Database-Project

                        Hospital Management System Database Project
This project is a Hospital Management System built using SQL to manage the various aspects of hospital operations. The database covers departments, doctors, patients, appointments, medical records, billing, and more.

Project Overview:
The primary objective of this project is to design and implement a relational database that efficiently stores and manages hospital data. The database provides functionalities such as tracking patient information, managing appointments, handling medical records, monitoring billing, and more.

Database Details:
Database Name: HospitalManagementSystemDB_New
The database contains a comprehensive set of tables, relationships, triggers, and views to cover the major functional areas of hospital management.

                                Tables Created
Departments

Stores information about the hospital's various departments (e.g., Cardiology, Neurology).
Columns:
DepartmentID (Primary Key)
DepartmentName
Doctors

Stores information about doctors working in the hospital.
Columns:
DoctorID (Primary Key)
FirstName
LastName
Specialty
DepartmentID (Foreign Key to Departments)
ContactNumber
Nurses

Stores information about the nursing staff.
Columns:
NurseID (Primary Key)
FirstName
LastName
DepartmentID (Foreign Key to Departments)
ContactNumber
Patients

Stores information about patients registered in the hospital.
Columns:
PatientID (Primary Key)
FirstName
LastName
Gender
BirthDate
ContactNumber
Address
Wards

Contains information about hospital wards where patients are admitted.
Columns:
WardID (Primary Key)
WardName
Capacity
Appointments

Manages patient appointments with doctors.
Columns:
AppointmentID (Primary Key)
PatientID (Foreign Key to Patients)
DoctorID (Foreign Key to Doctors)
AppointmentDate
AppointmentTime
Status (e.g., Scheduled, Completed, Cancelled)
MedicalRecords

Stores the medical history of patients.
Columns:
RecordID (Primary Key)
PatientID (Foreign Key to Patients)
DoctorID (Foreign Key to Doctors)
Diagnosis
Treatment
RecordDate
Medications

Keeps track of the medications prescribed to patients.
Columns:
MedicationID (Primary Key)
PatientID (Foreign Key to Patients)
MedicationName
Dosage
StartDate
EndDate
Bills

Manages billing information for patients.
Columns:
BillID (Primary Key)
PatientID (Foreign Key to Patients)
Amount
BillingDate
PaymentStatus (e.g., Paid, Pending, Overdue)


                              Project Functionalities
Data Storage: Efficient storage of hospital-related data using relational tables.
Data Integrity: Utilized primary and foreign keys to maintain data integrity between tables.
Triggers: Created a trigger (MarkOverdueBills) that automatically marks bills as "Overdue" if not paid within 30 days.
Indexes: Added indexes to improve the performance of frequently queried columns (e.g., Specialty in the Doctors table and AppointmentDate in the Appointments table).
Views: Designed views for common operations:
PatientMedicalHistory: Displays patient medical records.
PendingBills: Lists all unpaid bills.

                      How to Use This Database
Database Creation: Create the database using the provided SQL script.
Table Creation: Use the SQL commands to create tables and set up relationships.
Insert Sample Data: Populate tables with sample data to test the system.
Data Queries: Execute SQL queries to interact with the database for various operations like patient registration, scheduling appointments, billing, etc.
Triggers: Automatically manage overdue billing with triggers.

                          Technologies Used
.Database: MySQL
.SQL Features: Tables, Indexes, Foreign Keys, Triggers, Views

                          Future Enhancements
.Implement stored procedures for complex operations.
.Introduce user roles and permissions for better security.
.Add more triggers for automatic data management (e.g., automatic appointment reminders).
