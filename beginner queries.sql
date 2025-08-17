#List all patients with their name, age, and gender.
select Name, Age, Gender from patients;


#List all doctors and their specialties.
select Name, Specialty from doctors;


#Show all appointments scheduled after 2025-01-01.
select*from appointments
where Appointment_Date>'2025-01-01'
order by Appointment_Date asc;


#Find all appointments for a specific doctor
select*from appointments
where Doctor_ID=15;


#List all prescriptions with medicine name and dosage.
select Prescription_ID, Medicine, Dosage from prescriptions;


#Get all bills where payment status is 'Pending'.
select*from billing
where Payment_status='Pending';


#Find doctors who are Cardiologists.
select Name, Specialty from doctors
where Specialty='Cardiologist';


#List patients aged above 60.
select Patient_ID, Name, Age, Gender from patients
where Age>60 
order by Age asc;


#Show all appointments with status = 'No Show'.
select*from appointments
where Appointment_Status='no show';


#Display all appointments along with patient name and doctor name (using JOIN).
select appointments.Appointment_ID, appointments.Appointment_Date,appointments.Appointment_Status,patients.Name,doctors.Name from appointments
join patients
on
appointments.Patient_ID = patients.Patient_ID
join doctors
on
doctors.Doctor_ID=appointments.Doctor_ID;

alter table doctors
change patient_Name Doctor_Name text;

alter table patients
change Name Patient_Name text;


#Display all appointments along with patient name and doctor name (using JOIN).
select appointments.Appointment_ID, appointments.Appointment_Date,appointments.Appointment_Status,patients.Patient_Name,doctors.Doctor_Name from appointments
join patients
on
appointments.Patient_ID = patients.Patient_ID
join doctors
on
doctors.Doctor_ID=appointments.Doctor_ID;
