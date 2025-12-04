INSERT INTO blood_type (group_name, description) VALUES
('A+', 'A positive'),
('A-', 'A negative'),
('B+', 'B positive'),
('B-', 'B negative'),
('O+', 'O positive'),
('O-', 'O negative'),
('AB+', 'AB positive'),
('AB-', 'AB negative');

INSERT INTO blood_banks (bank_name, location, phone) VALUES
('City Blood Bank', 'Pune', '+91-9000011111'),
('LifeCare Blood Center', 'Mumbai', '+91-9000022222');

INSERT INTO donor (first_name,last_name,dob,phone,email,blood_type_id,bank_id,last_donation_date) VALUES
('Ravi','Kumar','1990-05-10','+91-9876543210','ravi@example.com',5,1,'2025-06-15'),
('Sana','Patel','1988-02-20','+91-9123456780','sana@example.com',1,1,'2025-07-01'),
('Arjun','Verma','1995-12-01','+91-9012345678','arjun@example.com',3,2,'2025-05-05');

INSERT INTO recipient (first_name,last_name,dob,phone,blood_type_id,bank_id,medical_record) VALUES
('Neha','Sharma','1975-11-12','+91-9988776655',5,1,'MR-001'),
('Amit','Joshi','1968-09-04','+91-9811223344',1,2,'MR-002');

INSERT INTO inventory (bank_id,blood_type_id,units_available) VALUES
(1,1,10),
(1,5,15),
(2,3,8),
(2,2,4);
