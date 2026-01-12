# Hospital Management System – SQL Database Project

##  Project Overview
This project implements a **relational database system** for a hospital
management scenario, covering patient care, medical appointments,
hospitalizations, exams, and billing.

The project demonstrates **database modeling, transactional SQL (OLTP)** and
**analytical SQL (OLAP)** to support both daily operations and business analysis.

---

##  Business Context
Healthcare organizations require reliable systems to manage patient data,
medical services, and financial transactions.

This database was designed to:
- Support hospital operational workflows
- Track medical services and billing
- Enable analytical reporting for decision-making
- Optimize query performance through indexing

---

##  Database Schema
The database includes the following core entities:
- Patients
- Doctors
- Appointments
- Exams
- Hospitalizations
- Billing records

**Entity-Relationship Diagram (ERD):**

![Database Schema](images/database_schema.png)

---

##  Database Design
- Fully normalized relational schema
- Primary and foreign key constraints
- Referential integrity enforcement
- Clear separation of transactional and analytical use cases

---

##  Core Features

###  OLTP (Transactional Queries)
- Patient registration
- Appointment scheduling
- Exam records
- Hospitalization tracking
- Billing generation
- SQL transactions for atomic operations

###  OLAP (Analytical Queries)
- Revenue analysis by service type
- Revenue analysis by health plan
- Monthly revenue trends
- Exam frequency analysis
- Room occupancy analysis
- Performance insights for hospital operations

---

##  Performance Optimization
Indexes were created to improve query performance:
- Patient identification (CPF)
- Doctor specialty filtering
- Billing date aggregation
- Service type grouping

---

##  Technologies Used
- MySQL
- SQL (DDL, DML, OLTP, OLAP)
- Relational Data Modeling
