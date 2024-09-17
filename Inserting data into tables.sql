

USE HospitalManagement;

-- Insert data into Departments table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES 
    (1, 'Cardiology'),
    (2, 'Neurology'),
    (3, 'Pediatrics'),
    (4, 'Oncology');
    
-- Insert data into Doctors table
INSERT INTO Doctors (DoctorID, FirstName, LastName, Specialty, DepartmentID, ContactNumber)
VALUES
    (1, 'John', 'Doe', 'Cardiologist', 1, '555-1234'),
    (2, 'Alice', 'Smith', 'Neurologist', 2, '555-5678'),
    (3, 'Michael', 'Brown', 'Pediatrician', 3, '555-8765');
    
-- Insert data into Nurses table
INSERT INTO Nurses (NurseID, FirstName, LastName, DepartmentID, ContactNumber)
VALUES
    (1, 'Emily', 'Davis', 1, '555-2345'),
    (2, 'Linda', 'Johnson', 2, '555-3456');
    
-- Insert data into Patients table
INSERT INTO Patients (PatientID, FirstName, LastName, Gender, BirthDate, ContactNumber, Address)
VALUES
    (1, 'Jane', 'Doe', 'F', '1990-05-15', '555-9876', '123 Elm Street'),
    (2, 'David', 'Wilson', 'M', '1985-10-22', '555-6543', '456 Oak Avenue');
    
-- Insert data into Wards table
INSERT INTO Wards (WardID, WardName, Capacity)
VALUES
    (1, 'General', 20),
    (2, 'ICU', 5);
    
-- Insert data into Appointments table
INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, AppointmentDate, AppointmentTime, Status)
VALUES
    (1, 1, 1, '2024-09-20', '10:00:00', 'Scheduled'),
    (2, 2, 2, '2024-09-21', '11:00:00', 'Completed');


-- Insert data into MedicalRecords table
INSERT INTO MedicalRecords (RecordID, PatientID, DoctorID, Diagnosis, Treatment, RecordDate)
VALUES
    (1, 1, 1, 'Hypertension', 'Medication', '2024-09-20'),
    (2, 2, 2, 'Migraine', 'Lifestyle Changes', '2024-09-21');
    
-- Insert data into Medications table
INSERT INTO Medications (MedicationID, PatientID, MedicationName, Dosage, StartDate, EndDate)
VALUES
    (1, 1, 'Amlodipine', '5mg', '2024-09-20', '2024-10-20');

-- Insert data into Bills table
INSERT INTO Bills (BillID, PatientID, Amount, BillingDate, PaymentStatus)
VALUES
    (1, 1, 250.00, '2024-09-20', 'Paid'),
    (2, 2, 150.00, '2024-09-21', 'Pending');