-- Drop the database if it exists and create a new one
DROP DATABASE IF EXISTS hotelmanagementsystem;
CREATE DATABASE hotelmanagementsystem;
USE hotelmanagementsystem;

-- Create the login table
CREATE TABLE login (
    username VARCHAR(25) PRIMARY KEY, 
    password VARCHAR(25)
);

-- Insert default login credentials
INSERT INTO login VALUES ('admin', '12345');

-- Create the employee table
CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(25), 
    age VARCHAR(10), 
    gender VARCHAR(15), 
    job VARCHAR(30), 
    salary VARCHAR(15), 
    phone VARCHAR(15), 
    email VARCHAR(40), 
    aadhar VARCHAR(20)
);

-- Create the room table
CREATE TABLE room (
    roomnumber VARCHAR(10) PRIMARY KEY, 
    availability VARCHAR(20), 
    cleaning_status VARCHAR(20), 
    price VARCHAR(20), 
    bed_type VARCHAR(20)
);

-- Create the driver table
CREATE TABLE driver (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20), 
    age VARCHAR(10), 
    gender VARCHAR(15), 
    company VARCHAR(20), 
    brand VARCHAR(20), 
    available VARCHAR(20), 
    location VARCHAR(40)
);

-- Create the customer table
CREATE TABLE customer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    document VARCHAR(20), 
    number VARCHAR(30), 
    name VARCHAR(30), 
    gender VARCHAR(15), 
    country VARCHAR(20), 
    room VARCHAR(10), 
    checkintime VARCHAR(80), 
    deposit VARCHAR(20)
);

-- Create the department table
CREATE TABLE department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    department VARCHAR(30), 
    budget VARCHAR(30)
);

-- Insert default values into the department table
INSERT INTO department (department, budget) VALUES 
    ('Front Office', '500000'),
    ('Housekeeping', '40000'),
    ('Food and Beverage', '23000'),
    ('Kitchen or Food Production', '540000'),
    ('Security', '320000');