DROP DATABASE IF EXISTS Business;
CREATE DATABASE Business;
USE Business; 

CREATE TABLE customers (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    customers_id INTEGER,
    name VARCHAR(255) UNIQUE NOT NULL,
    phone_number varchar(20),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255),
    postal VARCHAR(255),
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE cars (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    vin_id VARCHAR(255) NOT NULL,
    manufacturer VARCHAR(255)  NOT NULL,
    model VARCHAR(255),
    year VARCHAR(255),
    color VARCHAR(255),
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE salesperson (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    staff_id INTEGER ,
    name VARCHAR(255) NOT NULL,
    store VARCHAR(255),
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE invoices(
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    invoice_id INTEGER NOT NULL ,
    date varchar(20),
    car VARCHAR(255) NOT NULL,
    customer VARCHAR(255) NOT NULL,
    salesperson VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
    );