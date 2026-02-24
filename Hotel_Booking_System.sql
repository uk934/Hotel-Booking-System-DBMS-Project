CREATE DATABASE hotel_booking;
USE hotel_booking;

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(200)
);

CREATE TABLE Hotel (
    hotel_id INT PRIMARY KEY,
    hotel_name VARCHAR(100),
    location VARCHAR(100),
    rating DECIMAL(2,1),
    contact_number VARCHAR(15)
);

CREATE TABLE Room (
    room_id INT PRIMARY KEY,
    hotel_id INT,
    room_type VARCHAR(50),
    price DECIMAL(10,2),
    availability VARCHAR(20),
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id)
);

CREATE TABLE Booking (
    booking_id INT PRIMARY KEY,
    customer_id INT,
    room_id INT,
    check_in_date DATE,
    check_out_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (room_id) REFERENCES Room(room_id)
);

CREATE TABLE Payment (
    payment_id INT PRIMARY KEY,
    booking_id INT,
    amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    payment_date DATE,
    FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
);
INSERT INTO Customer VALUES
(1,'Rahul Sharma','rahul@gmail.com','9876543210','Delhi'),
(2,'Anita Verma','anita@gmail.com','9123456780','Noida'),
(3,'Karan Mehta','karan@gmail.com','9988776655','Mumbai'),
(4,'Priya Singh','priya@gmail.com','9090909090','Lucknow'),
(5,'Amit Patel','amit@gmail.com','9898989898','Ahmedabad');
INSERT INTO Hotel VALUES
(101,'Grand Palace','Delhi',4.5,'9998887777'),
(102,'Sea View','Mumbai',4.2,'8887776666'),
(103,'Royal Stay','Jaipur',4.7,'7776665555'),
(104,'City Inn','Noida',4.0,'6665554444'),
(105,'Sunrise Hotel','Goa',4.3,'5554443333');
INSERT INTO Room VALUES
(201,101,'Deluxe',3000,'Available'),
(202,102,'Suite',5000,'Booked'),
(203,103,'Standard',2000,'Available'),
(204,104,'Deluxe',3500,'Booked'),
(205,105,'Suite',5500,'Available');
INSERT INTO Booking VALUES
(301,1,201,'2026-03-01','2026-03-05'),
(302,2,202,'2026-03-02','2026-03-06'),
(303,3,203,'2026-03-10','2026-03-12'),
(304,4,204,'2026-03-15','2026-03-18'),
(305,5,205,'2026-03-20','2026-03-25');
INSERT INTO Payment VALUES
(401,301,12000,'UPI','2026-02-21'),
(402,302,20000,'Card','2026-02-21'),
(403,303,4000,'Cash','2026-02-22'),
(404,304,10500,'UPI','2026-02-23'),
(405,305,27500,'Card','2026-02-24');
