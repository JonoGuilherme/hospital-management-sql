-- Revenue by service type
SELECT service_type, SUM(total_amount) AS total_revenue
FROM Billing
GROUP BY service_type
ORDER BY total_revenue DESC;

-- Revenue by health plan
SELECT 
    p.health_plan,
    SUM(b.total_amount) AS total_revenue
FROM Billing b
JOIN Patient p ON b.patient_id = p.patient_id
GROUP BY p.health_plan
ORDER BY total_revenue DESC;

-- Revenue by service type and month
SELECT 
    DATE_FORMAT(billing_date, '%Y-%m') AS billing_month,
    service_type,
    SUM(total_amount) AS total_revenue
FROM Billing
GROUP BY billing_month, service_type
ORDER BY billing_month, total_revenue DESC;

-- Revenue by payment method
SELECT payment_method, SUM(total_amount) AS total_revenue
FROM Billing
GROUP BY payment_method
ORDER BY total_revenue DESC;

-- Room occupancy
SELECT room, COUNT(*) AS total_hospitalizations
FROM Hospitalization
GROUP BY room
ORDER BY total_hospitalizations DESC;
