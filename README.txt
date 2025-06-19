Abstract
This document provides a detailed overview of the database management functionality for an Airbnb-like platform. 
The platform facilitates the rental of apartments and bedrooms, connecting hosts, guests and admins through an SQL database management system. 
The database is designed using a state-of-the-art PostgreSQL 15-based management system, ensuring efficient storage, retrieval, and management of data. 
Furthermore, this document highlights the key aspects of the database schema, and metadata stored within the system. 
The database is normalized to optimize performance and maintain data integrity.

Database Management Functionality
The database management system supports the following functionalities:

User Management
•	Registration and Authentication: Users are registered by providing necessary details like names and e-mail address.
•	Platform policies: Admins can provide detailed platform policies that can be viewed by users and hosts.

Listing Management
•	Creating Listings: Hosts can create new property listings with detailed descriptions, amenities and photos.
•	Updating Listings: Hosts can update or delete their existing listings.
•	Search and filter: Guests can search for listings based on various criteria like location, neighborhood, price, and ratings.
•	Booking availability: Hosts can manage accommodation availability through a cleaning schedule and availability calendar.
•	Wishlist: Guests can save accommodations via wishlists and process their bookings at different time points.
•	House rules: Hosts can provide detailed house rules for their accommodations that can be viewed by guests.
•	Cancellation policies: Hosts can provide cancellation policies that can be viewed by guests.

Booking and Payment Management
•	Booking: Guests can book available listings.
•	Payment Processing: The system processes payments through integrated payment status and further payment details.

Review and Rating System
•	Review Submission: Guests and hosts can submit reviews after a booking is completed.
•	Messages: Hosts and guests can send messages related to their bookings and experiences.
•	Complaints: Guests and hosts can submit complaints about accommodations, services or their stay.

Metadata
The metadata stored in the system includes:
•	20 tables with a total of 151 columns, 414 entries and a database size about 8606511 bytes.
•	Users table with 4 columns, 1 primary key and 34 entries.
•	Employee table with 4 columns, 1 primary key, 2 foreign keys and 20 entries.
•	Listings table with 6 columns, 1 primary key, 1 foreign key and 20 entries.
•	Bookings table with 5 columns, 1 primary key, 2 foreign keys and 20 entries.
•	Reviews table with 6 columns, 1 primary key, 3 foreign keys and 20 entries.
•	Availability_Calendar with 3 columns, 1 primary key, 1 foreign key and 20 entries.
•	Platform_Policies table with 2 columns, 1 primary key and 20 entries.
•	Super_Host_Status table with 2 columns, 1 primary key, 1 foreign key and 20 entries.
•	User_Reviews table with 2 columns, 2 foreign keys and 20 entries.
•	User_Policies table with 2 columns, 1 primary key, 1 foreign key and 20 entries.
•	Cancellation_Policy table with 3 columns, 1 primary key, 1 foreign key and 20 entries.
•	Wish_List table with 3 columns, 1 primary key, 2 foreign keys and 20 entries.
•	Amenities table with 3 columns, 1 primary key, 1 foreign key and 20 entries.
•	House_Rules table with 3 columns, 1 primary key, 1 foreign key and 20 entries.
•	Neighborhood table with 3 columns, 1 primary key, 1 foreign key and 20 entries.
•	Location table with 7 columns, 1 primary key, 1 foreign key and 20 entries.
•	Messages table with 6 columns, 1 primary key, 3 foreign keys and 20 entries.
•	Payments table with 5 columns, 1 primary key, 1 foreign key and 20 entries.
•	Complaints table with 6 columns, 1 primary key, 1 foreign key and 20 entries.
•	Cleaning_Schedule table with 4 columns, 1 primary key, 1 foreign key and 20 entries.
