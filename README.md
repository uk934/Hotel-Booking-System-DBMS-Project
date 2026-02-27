🏨 Hotel Booking System – DBMS Project

📌 Project Overview
The Hotel Booking System is a simple relational database project developed for the DBMS course.
This system is designed to manage hotel reservations, customers, payments, and administration details efficiently.
The database is implemented using MySQL / MariaDB and follows basic Entity-Relationship modeling concepts.

🎯 Objectives
- Store customer details
- Manage hotel information
- Record reservations
- Track payments
- Maintain relationships between entities

🗂️ Database Entities
The project contains 5 main entities:
1️⃣ Customer
customer_id (Primary Key)
name
email
phone
address
2️⃣ Hotel
hotel_id (Primary Key)
hotel_name
location
rating
contact_number
3️⃣ Reservation
reservation_id (Primary Key)
room_type
check_in
check_out
customer_id (Foreign Key)
hotel_id (Foreign Key)
4️⃣ Payment
payment_id (Primary Key)
reservation_id (Foreign Key)
amount
payment_method
payment_date
5️⃣ Admin
admin_id (Primary Key)
name
email
phone
hotel_id (Foreign Key)

🔗 Relationships
- One Customer can make multiple Reservations.
- One Hotel can have multiple Reservations.
- One Reservation can have multiple Payments.
- One Hotel can have multiple Admins.

🛠️ Technologies Used
- MySQL / MariaDB
- SQL (DDL commands)
- ER Modeling Concepts

📊 Features
✔ Simple and clean database structure
✔ Primary and Foreign key relationships
✔ Minimal entity complexity
✔ Easy to understand and implement

📚 Academic Information
Course: Database Management System (UCS4001)
University: IILM University
Semester: 4th Semester (2026)
🚀 Future Enhancements
Online payment gateway integration
Room availability tracking
Staff management module
User login authentication system
