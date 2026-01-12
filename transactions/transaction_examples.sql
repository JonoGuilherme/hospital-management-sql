-- Insert appointment
INSERT INTO Appointment 
(patient_id, doctor_id, appointment_date, appointment_time, reason, diagnosis)
VALUES 
(10, 3, '2025-05-01', '14:00:00', 'General check-up', 'Under observation');

-- Generate billing for appointment
INSERT INTO Billing 
(patient_id, billing_date, total_amount, payment_method, service_type, reference_id)
VALUES 
(10, CURDATE(), 180.00, 'Credit Card', 'Appointment', LAST_INSERT_ID());

-- Register hospitalization
INSERT INTO Hospitalization 
(patient_id, admission_date, discharge_date, room, bed, reason)
VALUES 
(25, '2025-04-10', '2025-04-15', '302', '2', 'Post-operative observation');

-- Billing for hospitalization
INSERT INTO Billing 
(patient_id, billing_date, total_amount, payment_method, service_type, reference_id)
VALUES 
(25, CURDATE(), 4750.00, 'Insurance', 'Hospitalization', LAST_INSERT_ID());
