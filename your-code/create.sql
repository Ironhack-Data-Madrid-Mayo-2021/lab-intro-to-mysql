USE lab_mysql;
CREATE TABLE cars(
	vehicle_id_number INT PRIMARY KEY,
	manufacturer VARCHAR(40) NOT NULL,
	model VARCHAR(40) NOT NULL,
	year DATE,
	color VARCHAR(20)
);
CREATE TABLE sales_person(
	staff_id INT PRIMARY KEY,	
	name VARCHAR(60),
    store VARCHAR(60)
);
CREATE TABLE customers(
	customer_id INT PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	phone INT,
	email VARCHAR(3) NOT NULL,
	adress VARCHAR(3),
	city VARCHAR(6),
	province VARCHAR(14),
	country VARCHAR(20),
	z_code CHAR
);
CREATE TABLE invoices(
	invoice_number INT,
    date DATE,
    car INT,
    customer INT,
    sales_person INT
);