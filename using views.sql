USE HospitalManagement;

-- View for Patient Medical History
CREATE VIEW PatientMedicalHistory AS
SELECT p.PatientID, p.FirstName, p.LastName, mr.Diagnosis, mr.Treatment, mr.RecordDate
FROM Patients p
JOIN MedicalRecords mr ON p.PatientID = mr.PatientID;

-- View for Pending Bills
CREATE VIEW PendingBills AS
SELECT b.BillID, p.FirstName, p.LastName, b.Amount, b.BillingDate
FROM Bills b
JOIN Patients p ON b.PatientID = p.PatientID
WHERE b.PaymentStatus = 'Pending';
