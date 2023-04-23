FROM mysql/mysql-server:latest
COPY init.sql /docker-entrypoint-initdb.d/
WORKDIR ./db/
COPY doctor_appointment.sql .

