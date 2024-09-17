USE HospitalManagement;

-- Add an index on the Doctors table to quickly find doctors by specialty
CREATE INDEX idx_doctors_specialty ON Doctors(Specialty);

-- Add an index on Appointments for quick lookup by AppointmentDate
CREATE INDEX idx_appointments_date ON Appointments(AppointmentDate);
