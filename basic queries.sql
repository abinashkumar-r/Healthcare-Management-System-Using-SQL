create database HMS;
create table Appointments(
Appointment_ID int,
Patient_ID int,
Doctor_ID int,
Appointment_Date date,
Appointment_Time time,
Appointment_Status text);

create table Billing(
Bill_ID int,
Appointment_ID int,
Amount double,
Payment_status text,
Payment_Date date);