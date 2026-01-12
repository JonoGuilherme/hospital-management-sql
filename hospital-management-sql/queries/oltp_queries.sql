-- Basic queries
SELECT * FROM Patient;

-- Search patient by partial name
SELECT * FROM Patient
WHERE name LIKE '%Carrillo%';

-- Appointments on a specific date
SELECT 
    a.*, 
    p.name AS patient_name, 
    d.name AS doctor_name
FROM Appointment a
JOIN Patient p ON a.patient_id = p.patient_id
JOIN Doctor d ON a.doctor_id = d.doctor_id
WHERE appointment_date = '2025-01-25';

-- Number of appointments by specialty
SELECT d.specialty, COUNT(*) AS total_appointments
FROM Appointment a
JOIN Doctor d ON a.doctor_id = d.doctor_id
GROUP BY d.specialty;

-- Average hospitalization days per patient
SELECT p.name, 
AVG(DATEDIFF(h.discharge_date, h.admission_date)) AS average_days
FROM Hospitalization h
JOIN Patient p ON h.patient_id = p.patient_id
GROUP BY p.name;

-- Most frequently performed exams
SELECT exam_type, COUNT(*) AS total
FROM Exam
GROUP BY exam_type
ORDER BY total DESC;
