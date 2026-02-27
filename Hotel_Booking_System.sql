CREATE DATABASE hotel_booking;
USE hotel_booking;

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(15),
    address VARCHAR(100)
);

CREATE TABLE Hotel (
    hotel_id INT PRIMARY KEY,
    hotel_name VARCHAR(50),
    location VARCHAR(50),
    rating FLOAT,
    contact_number VARCHAR(15)
);

CREATE TABLE Reservation (
    reservation_id INT PRIMARY KEY,
    room_type VARCHAR(30),
    check_in DATE,
    check_out DATE,
    customer_id INT,
    hotel_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id)
);

CREATE TABLE Payment (
    payment_id INT PRIMARY KEY,
    reservation_id INT,
    amount FLOAT,
    payment_method VARCHAR(30),
    payment_date DATE,
    FOREIGN KEY (reservation_id) REFERENCES Reservation(reservation_id)
);

CREATE TABLE Admin (
    admin_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(15),
    hotel_id INT,
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id)
);
