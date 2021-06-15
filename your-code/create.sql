DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS Cars;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Salespersons;

USE lab_mysql;

CREATE TABLE Invoices(
	invoice_number INT PRIMARY KEY,
    invoice_date DATE NOT NULL,
	car_vin VARCHAR(50),
    customer_id INT,
    salesperson_id INT
);

CREATE TABLE Cars(
	vin VARCHAR(50) PRIMARY KEY,
    manufacturer VARCHAR(45) NOT NULL,
    model VARCHAR(45) NOT NULL,
    car_year YEAR(4) NOT NULL,
    color VARCHAR(20)
);

CREATE TABLE Customers(
	customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    phone VARCHAR(25) NOT NULL,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL,
    city VARCHAR(45) NOT NULL,
    province VARCHAR(45) NOT NULL,
    country VARCHAR(45) NOT NULL,
    postal_code INT NOT NULL
);

CREATE TABLE Salespersons(
	staff_id INT PRIMARY KEY,
    staff_name VARCHAR(45) NOT NULL,
    store VARCHAR(45) NOT NULL
);

ALTER TABLE Invoices
ADD FOREIGN KEY (customer_id)
REFERENCES Customers(customer_id)
ON DELETE SET NULL;

ALTER TABLE Invoices
ADD FOREIGN KEY (salesperson_id)
REFERENCES Salespersons(staff_id)
ON DELETE SET NULL;

ALTER TABLE Invoices
ADD FOREIGN KEY (car_vin)
REFERENCES Cars(vin)
ON DELETE SET NULL;