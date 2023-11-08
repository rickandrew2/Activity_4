--feat/create-database-veterinary
CREATE DATABASE veterinary;

--feat/create-table-owners
CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
);

--feat/create-table-animals
CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

--feat/create-table-appointments
CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

--feat/create-table-doctors
CREATE TABLE doctors(
	doctorid INT PRIMARY KEY, 
	dfirstname VARCHAR(50),
	dlastname VARCHAR(50),
	speciality VARCHAR(50), 
	phone VARCHAR(15),
	email VARCHAR(50)	
);

--feat/create-table-invoices
CREATE TABLE invoices (
	invoiceid INT PRIMARY KEY,
	appointid INT,
	totalamount NUMERIC (10,2),
	paymentdate TIME,
	FOREIGN KEY (appointid) REFERENCES appointments (appointid)
);
