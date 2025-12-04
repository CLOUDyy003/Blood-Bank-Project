SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS recipient;
DROP TABLE IF EXISTS donor;
DROP TABLE IF EXISTS blood_banks;
DROP TABLE IF EXISTS blood_type;
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE blood_type (
  blood_type_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  group_name VARCHAR(5) NOT NULL UNIQUE,
  description VARCHAR(100)
);

CREATE TABLE blood_banks (
  bank_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  bank_name VARCHAR(150) NOT NULL,
  location VARCHAR(200),
  phone VARCHAR(30)
);

CREATE TABLE donor (
  donor_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100),
  dob DATE,
  phone VARCHAR(30),
  email VARCHAR(150),
  blood_type_id INT UNSIGNED NOT NULL,
  bank_id INT UNSIGNED,
  last_donation_date DATE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (blood_type_id) REFERENCES blood_type(blood_type_id),
  FOREIGN KEY (bank_id) REFERENCES blood_banks(bank_id)
);

CREATE TABLE recipient (
  recipient_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100),
  dob DATE,
  phone VARCHAR(30),
  blood_type_id INT UNSIGNED NOT NULL,
  bank_id INT UNSIGNED,
  medical_record VARCHAR(100),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (blood_type_id) REFERENCES blood_type(blood_type_id),
  FOREIGN KEY (bank_id) REFERENCES blood_banks(bank_id)
);

CREATE TABLE inventory (
  inventory_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  bank_id INT UNSIGNED NOT NULL,
  blood_type_id INT UNSIGNED NOT NULL,
  units_available INT UNSIGNED DEFAULT 0,
  last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (bank_id) REFERENCES blood_banks(bank_id),
  FOREIGN KEY (blood_type_id) REFERENCES blood_type(blood_type_id)
);
