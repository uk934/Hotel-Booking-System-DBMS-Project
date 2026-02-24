🏨 Hotel Booking System – DBMS Project
📌 Project Overview

This project demonstrates the design and implementation of a relational database for a Hotel Booking System. The system manages customer information, hotel details, room availability, bookings, and payment records using structured database concepts.

🎯 Objectives

Store customer details

Maintain hotel and room information

Record booking transactions

Track payment details

Establish relationships between entities

🧩 Entities & Attributes
Customer

customer_id (PK)

name

email

phone

address

Hotel

hotel_id (PK)

hotel_name

location

rating

contact_number

Room

room_id (PK)

room_type

price

availability

hotel_id (FK)

Booking

booking_id (PK)

check_in

check_out

customer_id (FK)

room_id (FK)

Payment

payment_id (PK)

amount

payment_method

payment_date

booking_id (FK)

🔗 Relationships

Customer → Booking (One-to-Many)

Hotel → Room (One-to-Many)

Room → Booking (One-to-Many)

Booking → Payment (One-to-One)

🔑 Keys Used

Primary Keys:
customer_id, hotel_id, room_id, booking_id, payment_id

Foreign Keys:
hotel_id (Room), customer_id (Booking), room_id (Booking), booking_id (Payment)

✅ Features / Advantages

✔ Structured data storage
✔ Data integrity & consistency
✔ Reduced redundancy
✔ Efficient querying
✔ Scalable design

🛠 Technologies Used

MariaDB / MySQL

SQL

ER Modeling (Draw.io)
