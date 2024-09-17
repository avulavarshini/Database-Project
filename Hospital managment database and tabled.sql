-- Create the database
CREATE DATABASE HospitalManagement;

-- Use the database
USE HospitalManagement;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE
);

-- Create Doctors table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Specialty VARCHAR(100) NOT NULL,
    DepartmentID INT,
    ContactNumber VARCHAR(15) UNIQUE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) ON DELETE SET NULL
);

-- Create Nurses table
CREATE TABLE Nurses (
    NurseID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    ContactNumber VARCHAR(15) UNIQUE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) ON DELETE SET NULL
);

-- Create Patients table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
    BirthDate DATE NOT NULL,
    ContactNumber VARCHAR(15) UNIQUE,
    Address VARCHAR(100) NOT NULL
);


-- Create Wards table
CREATE TABLE Wards (
    WardID INT PRIMARY KEY,
    WardName VARCHAR(50) NOT NULL UNIQUE,
    Capacity INT NOT NULL CHECK (Capacity > 0)
);

-- Create Appointments table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    AppointmentDate DATE NOT NULL,
    AppointmentTime TIME NOT NULL,
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('Scheduled', 'Completed', 'Cancelled')),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID) ON DELETE CASCADE,
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID) ON DELETE CASCADE
);

-- Create MedicalRecords table
CREATE TABLE MedicalRecords (
    RecordID INT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT,
    Diagnosis TEXT NOT NULL,
    Treatment TEXT,
    RecordDate DATE NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID) ON DELETE CASCADE,
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID) ON DELETE SET NULL
);


CREATE TABLE Medications (
    MedicationID INT PRIMARY KEY,
    PatientID INT NOT NULL,
    MedicationName VARCHAR(100) NOT NULL,
    Dosage VARCHAR(50) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID) ON DELETE CASCADE
);

-- Create Bills table
CREATE TABLE Bills (
    BillID INT PRIMARY KEY,
    PatientID INT NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    BillingDate DATE NOT NULL,
    PaymentStatus VARCHAR(20) NOT NULL CHECK (PaymentStatus IN ('Paid', 'Pending', 'Overdue')),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID) ON DELETE CASCADE
);


