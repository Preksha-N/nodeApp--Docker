create user 'prek'@'%' identified by 'prek@123';
create database doctor_appointment ;
grant all privileges on doctor_appointment.* to 'prek'@'%';
