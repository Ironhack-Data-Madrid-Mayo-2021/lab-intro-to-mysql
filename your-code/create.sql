USE lab_mysql;

CREATE TABLE cars (
car_id INT,
VIN INT PRIMARY KEY,
manufacturer VARCHAR(80) NOT NULL,
model VARCHAR(80) NOT NULL,
year DATE NOT NULL,
color VARCHAR(80) NOT NULL
);

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
name VARCHAR(80) NOT NULL,
phone_number INT NOT NULL,
email VARCHAR(80),
address VARCHAR(80) NOT NULL,
city VARCHAR(80) NOT NULL,
state_province VARCHAR(80) NOT NULL,
country VARCHAR(80) NOT NULL,
zip_code INT
);

CREATE TABLE salespersons (
staff_id INT PRIMARY KEY,
name VARCHAR(80) NOT NULL,
store VARCHAR(80) NOT NULL
);

CREATE TABLE invoices (
invoice_number INT PRIMARY KEY,
date DATE,
car_VIN INT,
customer_id INT,
staff_id INT,
FOREIGN KEY(car_VIN) REFERENCES cars(VIN) ON DELETE CASCADE,
FOREIGN KEY(customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,
FOREIGN KEY(staff_id) REFERENCES salespersons(staff_id) ON DELETE CASCADE
);