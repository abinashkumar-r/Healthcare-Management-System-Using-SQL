#Count total number of appointments each doctor has.
select doctors.Doctor_Name, count(appointments.Appointment_ID) as total_appointment from appointments
join doctors
on
appointments.Doctor_ID=doctors.Doctor_ID
group by Doctor_Name 
order by total_appointment asc;


#Find the most common medicine prescribed.
select medicine , count(medicine) as frequency from prescriptions
group by medicine
order by frequency desc ;


#Show number of appointments by status.
select Appointment_Status, count(Appointment_ID) as total_appointments from appointments
group by Appointment_Status
order by total_appointments desc;


#List patients who had more than 3 appointments.
select patients.Patient_Name, count(appointments.Appointment_ID) as total_appointments from patients
join appointments
on 
patients.Patient_ID=appointments.Patient_ID
group by Patient_Name
having total_appointments>3
order by total_appointments asc;


#Get the total billing amount per patient.
select patients.Patient_ID, patients.Patient_Name, sum(billing.Amount) as total_bill from patients
join appointments
on
appointments.Patient_ID=patients.Patient_ID
join billing
on
billing.Appointment_ID=appointments.Appointment_ID
group by patients.Patient_ID, patients.Patient_Name
order by total_bill desc
limit 5;


#Find average appointment bill amount by doctor.
select doctors.Doctor_ID, doctors.Doctor_Name, avg(billing.Amount) as Average_bill_amount from doctors
join appointments
on
appointments.Doctor_ID=doctors.Doctor_ID
join billing
on
billing.Appointment_ID=appointments.Appointment_ID
group by Doctor_ID, Doctor_Name
order by Average_bill_amount
 desc;


#Show doctors along with their total number of patients seen.
select doctors.Doctor_Name, count(distinct appointments.Patient_ID) as patient_seen from doctors
join appointments
on
appointments.Doctor_ID=doctors.Doctor_ID
group by doctors.Doctor_ID,doctors.Doctor_Name
order by patient_seen desc;



#Get the top 5 highest bill amounts and their patients.
select doctors.Doctor_Name, count(appointments.Patient_ID) as patient_seen from doctors
join appointments
on
appointments.Doctor_ID=doctors.Doctor_ID
group by Doctor_ID,Doctor_Name;


#Count how many times each medicine was prescribed.
select medicine, count(medicine) as frequency from prescriptions
group by medicine
order by frequency desc;


#List patients with no medical history (history = 'None').
select*from patients
where Medical_History='none'


