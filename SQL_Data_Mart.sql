-- Installation manual:
-- 1.
-- Update Package List:
-- sudo apt update
-- 2.
-- Install PostgreSQL Server:
-- sudo apt install postgresql postgresql-contrib
-- 3.
-- Access PostgreSQL Prompt (psql):
-- sudo -u postgres psql
-- 4.
-- CREATE DATABASE sql_mart;



-- Users Table
-- Stores information about Users, their roles, names and e-mail address.
CREATE TABLE Users (
  user_id INT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role VARCHAR(20) NOT NULL
);

INSERT INTO Users (user_id, username, email, role) VALUES
    (1, 'user1', 'user1@mailbox.org', 'Host'),
    (2, 'user2', 'user2@mailbox.org', 'Guest'), 
    (3, 'user3', 'user3@mailbox.org', 'Admin'),
    (4, 'user4', 'user4@mailbox.org', 'Admin'),
    (5, 'user5', 'user5@mailbox.org', 'Host'),
    (6, 'user6', 'user6@mailbox.org', 'Guest'),
    (7, 'user7', 'user7@mailbox.org', 'Admin'),
    (8, 'user8', 'user8@mailbox.org', 'Host'),
    (9, 'user9', 'user9@mailbox.org', 'Guest'),
    (10, 'user10', 'user10@mailbox.org', 'Admin'),
    (11, 'user11', 'user11@mailbox.org', 'Host'),
    (12, 'user12', 'user12@mailbox.org', 'Guest'),
    (13, 'user13', 'user13@mailbox.org', 'Host'),
    (14, 'user14', 'user14@mailbox.org', 'Host'),
    (15, 'user15', 'user15@mailbox.org', 'Guest'),
    (16, 'user16', 'user16@mailbox.org', 'Admin'),
    (17, 'user17', 'user17@mailbox.org', 'Host'),
    (18, 'user18', 'user18@mailbox.org', 'Guest'),
    (19, 'user19', 'user19@mailbox.org', 'Admin'),
    (20, 'user20', 'user20@mailbox.org', 'Guest'),
    (21, 'user21', 'user21@mailbox.org', 'Admin'),
    (22, 'user22', 'user22@mailbox.org', 'Admin'),
    (23, 'user23', 'user23@mailbox.org', 'Admin'),
    (24, 'user24', 'user24@mailbox.org', 'Admin'),
    (25, 'user25', 'user25@mailbox.org', 'Admin'),
    (26, 'user26', 'user26@mailbox.org', 'Admin'),
    (27, 'user27', 'user27@mailbox.org', 'Admin'),
    (28, 'user28', 'user28@mailbox.org', 'Admin'),
    (29, 'user29', 'user29@mailbox.org', 'Admin'),
    (30, 'user30', 'user30@mailbox.org', 'Admin'),
    (31, 'user31', 'user31@mailbox.org', 'Admin'),
    (32, 'user32', 'user32@mailbox.org', 'Admin'),
    (33, 'user33', 'user33@mailbox.org', 'Admin'),
    (34, 'user34', 'user34@mailbox.org', 'Admin');

-- Employee Table
-- Stores information about the employee and the corresponding manager.
CREATE TABLE Employee (
  employee_id INT PRIMARY KEY,
  name VARCHAR(50),
  manager_id INT,
  user_id INT,
  FOREIGN KEY (manager_id) REFERENCES Employee(employee_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Employee (employee_id, name, manager_id, user_id) VALUES
    (1, 'Jessica', NULL, 3),
    (2, 'Karen', 1, 4),
    (3, 'Tim', 1, 7),
    (4, 'Lucas', 1, 10),
    (5, 'Thomas', 1, 16),
    (6, 'Darl', 1, 19),
    (7, 'Sam', 1, 21),
    (8, 'Fritz', 1, 22),
    (9, 'Howard', 1, 23),
    (10, 'Sarah', 1, 24),
    (11, 'Aiko', 1, 25),
    (12, 'Huesna', 1, 26),
    (13, 'Barbara', 1, 27),
    (14, 'Kevin', 1, 28),
    (15, 'Robert', 1, 29),
    (16, 'Stefan', 1, 30),
    (17, 'Ramona', 1, 31),
    (18, 'Anna', 1, 32),
    (19, 'Jeff', 1, 33),
    (20, 'Leo', 1, 34);

-- Listings Table
-- Stores listings, their corresponding hosts, location, detailed description of the accommodation and the price.
CREATE TABLE Listings (
  listing_id INT PRIMARY KEY,
  host_id INT,
  location VARCHAR(100) NOT NULL,
  description TEXT,
  price DECIMAL(10,2),
  FOREIGN KEY (host_id) REFERENCES Users(user_id)
);

INSERT INTO Listings (listing_id, host_id, location, description, price) VALUES
(1, 1, 'Paris, France', 'Cozy apartment with a view.', '150.00'),
    (2, 1, 'Barcelona, Spain', 'Sunny beachfront villa with a pool. Ideal for relaxing.', '250.00'),
    (3, 1, 'Rome, Italy', 'Historic loft near the Colosseum.', '180.00'), 
    (4, 17, 'Amsterdam, Netherlands', 'Canal-side houseboat with a fireplace.', '300.00'),
    (5, 13, 'Prague, Czech Republic', 'Quaint townhouse in Old Town.', '120.00'),
    (6, 17, 'Dublin, Ireland', 'Modern penthouse with river views.', '400.00'),
    (7, 1, 'Berlin, Germany', 'Artistic loft in a trendy area.', '130.00'),
    (8, 14, 'Athens, Greece', 'Mediterranean villa with sea views.', '280.00'),
    (9, 14, 'Vienna, Austria', 'Elegant townhouse near the city center.', '190.00'),
    (10, 1, 'Edinburgh, Scotland', 'Cozy cottage in the Highlands.', '110.00'),
    (11, 5, 'Budapest, Hungary', 'Riverside apartment with a view.', '170.00'),
    (12, 5, 'Copenhagen, Denmark', 'Scandinavian-style house with a garden.', '220.00'),
    (13, 8, 'Florence, Italy', 'Renaissance villa surrounded by vineyards.', '350.00'),
    (14, 13, 'Krakow, Poland', 'Historic townhouse in Old Town.', '160.00'),
    (15, 17, 'Lisbon, Portugal', 'Sunny apartment with river views.', '500.00'),
    (16, 14, 'Stockholm, Sweden', 'Scenic cabin in the archipelago.', '270.00'),
    (17, 17, 'Dubrovnik, Croatia', 'Seaside villa with a beach.', '140.00'),
    (18, 5, 'Brussels, Belgium', 'Modern loft in the EU district.', '320.00'),
    (19, 8, 'Reykjavik, Iceland', 'Geothermal retreat with Northern Lights views.', '200.00'),
    (20, 1, 'Zurich, Switzerland', 'Alpine chalet with mountain views.', '180.00');

-- Bookings Table
-- Stores information about bookings, the corresponding guest, listing, dates and payment status.
CREATE TABLE Bookings (
  booking_id INT PRIMARY KEY,
  guest_id INT,
  listing_id INT,
  dates TIMESTAMP,
  payment_status VARCHAR(20),
  FOREIGN KEY (guest_id) REFERENCES Users(user_id),
  FOREIGN KEY (listing_id) REFERENCES Listings(listing_id)
);

INSERT INTO Bookings (booking_id, guest_id, listing_id, dates, payment_status) VALUES
    (1, 2, 1, '2022-10-15 12:00:00', 'Paid'), 
    (2, 6, 1, '2022-11-20 15:00:00', 'Pending'),
    (3, 9, 1, '2022-12-25 10:30:00', 'Paid'),
    (4, 12, 4, '2023-01-05 08:45:00', 'Paid'),
    (5, 15, 5, '2023-02-10 18:20:00', 'Pending'),
    (6, 18, 6, '2023-03-15 14:00:00', 'Paid'),
    (7, 20, 7, '2023-04-20 09:30:00', 'Paid'),
    (8, 2, 8, '2023-05-25 11:45:00', 'Pending'),
    (9, 6, 9, '2023-06-30 16:30:00', 'Paid'),
    (10, 9, 10, '2023-07-05 13:15:00', 'Paid'),
    (11, 12, 11, '2023-08-10 17:00:00', 'Pending'),
    (12, 15, 12, '2023-09-15 10:45:00', 'Paid'),
    (13, 18, 13, '2023-10-20 14:30:00', 'Paid'),
    (14, 20, 14, '2023-11-25 12:00:00', 'Pending'),
    (15, 2, 15, '2023-12-30 08:30:00', 'Paid'),
    (16, 6, 16, '2024-01-05 16:15:00', 'Paid'),
    (17, 9, 17, '2024-02-10 11:00:00', 'Pending'),
    (18, 12, 18, '2024-03-15 09:45:00', 'Paid'),
    (19, 15, 19, '2024-04-20 13:30:00', 'Paid'),
    (20, 18, 20, '2024-05-25 15:00:00', 'Pending');

-- Reviews Table
-- Stores information about the reviews, corresponding booking and users, listing_id, the review_text and ratings.
CREATE TABLE Reviews (
  review_id INT PRIMARY KEY,
  booking_id INT,
  user_id INT,
  listing_id INT,
  review_text TEXT,
  rating INT,
  FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id),
  FOREIGN KEY (listing_id) REFERENCES Listings(listing_id)
);

INSERT INTO Reviews (review_id, booking_id, user_id, listing_id, review_text, rating) VALUES
    (1, 1, 2, 1, 'Absolutely loved the place, felt like a hidden gem!', 5),
    (2, 2, 6, 2, 'Decent spot, but could use a bit more character.', 3),
    (3, 3, 9, 3, 'Incredible stay, exceeded all expectations!', 5),
    (4, 4, 12, 4, 'Breathtaking views, a truly serene experience.', 4),
    (5, 5, 15, 5, 'Average stay, nothing too remarkable.', 3),
    (6, 6, 18, 6, 'Outstanding accommodation, felt like a dream!', 5),
    (7, 7, 20, 7, 'Cozy and inviting, perfect for a relaxing break.', 4),
    (8, 8, 2, 8, 'Bang for the buck, definitely worth it.', 4),
    (9, 9, 6, 9, 'Charming place, every detail was delightful.', 5),
    (10, 10, 9, 10, 'Meh experience, didn''t quite hit the mark.', 3),
    (11, 11, 12, 11, 'Quirky and delightful, a stay to remember!', 5),
    (12, 12, 15, 12, 'Spotless property, cleanliness was top-notch.', 4),
    (13, 13, 18, 13, 'Exceptional service, made me feel right at home.', 5),
    (14, 14, 20, 14, 'Fair stay, had its ups and downs.', 3),
    (15, 15, 2, 15, 'Luxurious vibes, felt like royalty!', 5),
    (16, 16, 6, 16,  'Tranquil retreat, perfect for unwinding.', 4),
    (17, 17, 9, 17, 'Good location, but amenities could be better.', 3),
    (18, 18, 12, 18, 'Top-notch stay, highly recommend to all!', 5),
    (19, 19, 15, 19, 'Quaint and charming, a true hidden treasure.', 4),
    (20, 20, 18, 20, 'Comfortable stay, but lacked that special touch.', 3);

-- Availability_Calendar Table
-- Stores information about the listing, date and availability status.
CREATE TABLE Availability_Calendar (
  listing_id INT,
  date TIMESTAMP,
  availability_status VARCHAR(20),
  PRIMARY KEY (listing_id, date),
  FOREIGN KEY (listing_id) REFERENCES Listings(listing_id)
);

INSERT INTO Availability_Calendar (listing_id, date, availability_status) VALUES
    (1, '2024-10-15 08:30:00', 'Available'), 
    (1, '2024-10-16 10:45:00', 'Booked'),
    (1, '2024-10-17 12:15:00', 'Available'),
    (4, '2024-10-18 14:30:00', 'Available'),
    (5, '2024-10-19 16:45:00', 'Booked'),
    (6, '2024-10-20 09:00:00', 'Available'),
    (7, '2024-10-21 11:30:00', 'Available'),
    (8, '2024-10-22 13:45:00', 'Booked'),
    (9, '2024-10-23 15:00:00', 'Available'),
    (10, '2024-10-24 17:15:00', 'Available'),
    (11, '2024-10-25 19:30:00', 'Booked'),
    (12, '2024-10-26 08:45:00', 'Available'),
    (13, '2024-10-27 10:00:00', 'Available'),
    (14, '2024-10-28 12:30:00', 'Booked'),
    (15, '2024-10-29 14:45:00', 'Available'),
    (16, '2024-10-30 17:00:00', 'Available'),
    (17, '2024-10-31 19:15:00', 'Booked'),
    (18, '2024-11-01 08:30:00', 'Available'),
    (19, '2024-11-02 10:45:00', 'Available'),
    (20, '2024-11-03 12:00:00', 'Booked');

-- Platform_Policies Table
-- Stores information about platform policies and their description.
CREATE TABLE Platform_Policies (
  policy_id INT PRIMARY KEY,
  policy_description TEXT
);

INSERT INTO Platform_Policies (policy_id, policy_description) VALUES
    (1, 'Privacy and security first! Your data is safe with us.'),
    (2, 'Top-notch customer service is our priority.'),
    (3, 'Transparency matters. Stay informed every step.'),
    (4, 'Diversity and inclusivity are core values.'),
    (5, 'Safety is paramount. Your security is our focus.'),
    (6, 'Your feedback is valued. Open communication is key.'),
    (7, 'Respect and professionalism always.'),
    (8, 'Supporting sustainability for a better future.'),
    (9, 'Continuous improvement drives us forward.'),
    (10, 'Honesty and integrity define our community.'),
    (11, 'Innovation and creativity are encouraged.'),
    (12, 'Positivity and support make our community thrive.'),
    (13, 'Fairness and equality for all.'),
    (14, 'High ethical standards guide us.'),
    (15, 'Empowerment and autonomy for users.'),
    (16, 'User satisfaction is our priority.'),
    (17, 'Collaboration leads to success.'),
    (18, 'A culture of learning and growth.'),
    (19, 'Adaptability and flexibility are valued.'),
    (20, 'Making a positive impact together.');

-- Super_Host_Status Table
-- Stores the information about the superhost status and the corresponding host_id.
CREATE TABLE Super_Host_Status (
  host_id INT,
  super_host_status BOOL,
  PRIMARY KEY (host_id),
  FOREIGN KEY (host_id) REFERENCES Users(user_id)
);

INSERT INTO Super_Host_Status (host_id, super_host_status) VALUES
(1, TRUE), 
(5, TRUE),
(8, TRUE),
(11, TRUE),
(13, TRUE),
(14, TRUE),
(17, TRUE),
(2, FALSE),
(3, FALSE),
(4, FALSE),
(6, FALSE),
(7, FALSE),
(9, FALSE),
(10, FALSE),
(18, FALSE),
(19, FALSE),
(20, FALSE),
(21, FALSE),
(22, FALSE),
(23, FALSE);

-- User_Reviews Table
-- Stores the information about review_id and the corresponding user_id.
CREATE TABLE User_Reviews (
  user_id INT,
  review_id INT,
  PRIMARY KEY (user_id, review_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id),
  FOREIGN KEY (review_id) REFERENCES Reviews(review_id)
);

INSERT INTO User_Reviews (user_id, review_id) VALUES
    (2, 1),
    (6, 2),
    (9, 3),
    (12, 4),
    (15, 5),
    (18, 6),
    (20, 7),
    (2, 8),
    (6, 9),
    (9, 10),
    (12, 11),
    (15, 12),
    (18, 13),
    (20, 14),
    (2, 15),
    (6, 16),
    (9, 17),
    (12, 18),
    (15, 19),
    (18, 20);

-- User_Policies Table
-- Stores the information about user policy_id and the corresponding policy_id.
CREATE TABLE User_Policies (
  user_id INT,
  policy_id INT,
  PRIMARY KEY (user_id, policy_id),
  FOREIGN KEY (user_id) REFERENCES Users(user_id),
  FOREIGN KEY (policy_id) REFERENCES Platform_Policies(policy_id)
);

INSERT INTO User_Policies (user_id, policy_id) VALUES
    (1, 1), 
    (1, 2),
    (1, 3),
    (2, 4),
    (3, 5),
    (4, 6),
    (5, 7),
    (6, 8),
    (7, 9),
    (8, 10),
    (9, 11),
    (10, 12),
    (11, 1),
    (12, 14),
    (13, 15),
    (14, 16),
    (15, 17),
    (16, 18),
    (17, 19),
    (18, 20);


-- Cancellation_Policy Table
-- Stores the information about cancellation policy descrition and the corresponding polcy_id and listing_id.
CREATE TABLE Cancellation_Policy (
  policy_id INT PRIMARY KEY,
  listing_id INT,
  policy_description TEXT,
  FOREIGN KEY (listing_id) REFERENCES Listings(listing_id)
);

INSERT INTO Cancellation_Policy (policy_id, listing_id, policy_description) VALUES
(1, 1, 'Guests can cancel up to 7 days before check-in for a full refund.'),
(2, 1, 'Guests can cancel up to 3 days before check-in for a full refund.'),
(3, 3, 'Guests can cancel up to 14 days before check-in for a full refund.'),
(4, 4, 'Guests can cancel up to 30 days before check-in for a full refund.'),
(5, 5, 'Guests can cancel up to 1 day before check-in for a full refund.'),
(6, 6, 'Guests can cancel up to 2 days before check-in for a full refund.'),
(7, 7, 'Guests can cancel up to 14 days before check-in for a 50% refund.'),
(8, 8, 'Guests can cancel up to 30 days before check-in for a 75% refund.'),
(9, 9, 'Guests can cancel up to 7 days before check-in for a 50% refund.'),
(10, 10, 'Guests can cancel up to 3 days before check-in for a 75% refund.'),
(11, 11, 'Guests can cancel up to 14 days before check-in for a 75% refund.'),
(12, 12, 'Guests can cancel up to 30 days before check-in for a 50% refund.'),
(13, 13, 'No refunds will be given for cancellations.'),
(14, 14, 'Guests can reschedule their stay for free within 1 year of the original check-in date.'),
(15, 15, 'Guests can cancel up to 14 days before check-in for a full refund, but a 5% processing fee will apply.'),
(16, 16, 'Guests can cancel up to 30 days before check-in for a full refund, but a 10% processing fee will apply.'),
(17, 17, 'Guests can cancel up to 7 days before check-in for a 50% refund, but a 5% processing fee will apply.'),
(18, 18, 'Guests can cancel up to 3 days before check-in for a 75% refund, but a 10% processing fee will apply.'),
(19, 19, 'Guests can cancel up to 14 days before check-in for a 75% refund, but a 5% processing fee will apply.'),
(20, 20, 'Guests can cancel up to 30 days before check-in for a 50% refund, but a 10% processing fee will apply.');

-- Wish_List Table
-- Stores the information about User wishlist including wish_id and the corresponding guest_id and listing_id.
CREATE TABLE Wish_List (
  wish_id INT PRIMARY KEY,
  guest_id INT,
  listing_id INT,
  FOREIGN KEY (guest_id) REFERENCES Users(user_id),
  FOREIGN KEY (listing_id) REFERENCES Listings(listing_id)
);

INSERT INTO Wish_List (wish_id, guest_id, listing_id) VALUES 
(1, 2, 1),
(2, 6, 2),
(3, 9, 3),
(4, 12, 4),
(5, 15, 5),
(6, 18, 6),
(7, 20, 7),
(8, 2, 8),
(9, 6, 9),
(10, 9, 10),
(11, 12, 11),
(12, 15, 12),
(13, 18, 13),
(14, 20, 14),
(15, 2, 15),
(16, 6, 16),
(17, 9, 17),
(18, 12, 18),
(19, 15, 19),
(20, 18, 20);

-- Amenities Table
-- Stores the informatin about amenity description and the corresponding amenity_id and listing_id.
CREATE TABLE Amenities (
  amenity_id INT PRIMARY KEY,
  listing_id INT,
  amenity_description TEXT,
  FOREIGN KEY (listing_id) REFERENCES Listings(listing_id)
);

INSERT INTO Amenities (amenity_id, listing_id, amenity_description) VALUES
(1, 1, 'Fully equipped kitchen with modern appliances'),
(2, 1, 'Spacious living room with a comfortable sofa'),
(3, 3, 'Private balcony with city views'),
(4, 4, 'Dining area with seating for six'),
(5, 5, 'Free parking on the premises'),
(6, 6, 'High-speed Wi-Fi and a dedicated workspace'),
(7, 7, 'Smart TV with streaming services'),
(8, 8, 'Washer and dryer in the unit'),
(9, 9, 'Air conditioning and heating'),
(10, 10, 'Iron and ironing board'),
(11, 11, 'Hair dryer'),
(12, 12, 'Coffee maker and kettle'),
(13, 13, 'Shampoo, conditioner, and body wash'),
(14, 14, 'Bathrobes and slippers'),
(15, 15, 'Free bottled water and snacks'),
(16, 16, 'Gym access'),
(17, 17, 'Pool access'),
(18, 18, 'BBQ facilities'),
(19, 19, 'Elevator access'),
(20, 20, '24/7 security surveillance');

-- House_Rules Table
-- Stores the information about house rule description and the corresponding rule_id and listing_id.
CREATE TABLE House_Rules (
  rule_id INT PRIMARY KEY,
  listing_id INT,
  rule_description TEXT,
  FOREIGN KEY (listing_id) REFERENCES Listings(listing_id)
);

INSERT INTO House_Rules (rule_id, listing_id, rule_description) VALUES
(1, 1, 'No smoking.'),
(2, 1, 'No alcohol.'),
(3, 3, 'No more than 2 people.'),
(4, 4, 'Must be cleaned daily.'),
(5, 5, 'No loud music.'),
(6, 6, 'Please turn off heater when leaving the rooms.'),
(7, 7, 'No additional visitors allowed.'),
(8, 8, 'No pets allowed.'),
(9, 9, 'Leave the bathroom door open after use.'),
(10, 10, 'Open windows daily.'),
(11, 11, 'No shoes allowed indoor.'),
(12, 12, 'Door must be locked at night.'),
(13, 13, 'Must return before 11 pm.'),
(14, 14, 'Quiet hours are from 10 PM to 8 AM'),
(15, 15, 'Please do not smoke inside the house. Smoking is only allowed in designated outdoor areas.'),
(16, 16, 'Please remove your shoes upon entering the house to keep the floors clean.'),
(17, 17, 'Please do not move any furniture without prior permission from the host'),
(18, 18, 'Quiet hours are from 11 PM to 6 AM'),
(19, 19, 'Guests are responsible for washing their dishes and putting them away before checking out.'),
(20, 20, 'Please turn off all lights, appliances, and electronics when not in use to conserve energy');

-- Neighborhood Table
-- Stores the information about the neighborhood description and the corresponding neighborhood_id and listing_id.
CREATE TABLE Neighborhood (
  neighborhood_id INT PRIMARY KEY,
  listing_id INT,
  neighborhood_description TEXT,
  FOREIGN KEY (listing_id) REFERENCES Listings(listing_id)
);

INSERT INTO Neighborhood (neighborhood_id, listing_id, neighborhood_description) VALUES
(1, 1, 'Downtown, close to popular tourist attractions and nightlife.'),
(2, 2, 'Quiet residential neighborhood with easy access to public transportation.'),
(3, 3, 'Beachfront community with water sports and outdoor activities.'),
(4, 4, 'Historic district with museums, galleries, and cultural landmarks.'),
(5, 5, 'Upscale shopping and dining district with designer boutiques and fine dining.'),
(6, 6, 'Artsy neighborhood with street art, galleries, and theaters.'),
(7, 7, 'Family-friendly neighborhood with parks, playgrounds, and family-oriented activities.'),
(8, 8, 'Business district with high-rise offices and hotels.'),
(9, 9, 'Waterfront neighborhood with marinas, boat tours, and seafood restaurants.'),
(10, 10, 'Cultural district with music venues, theaters, and art installations.'),
(11, 11, 'Mountain resort community with skiing, snowboarding, and hiking trails.'),
(12, 12, 'College town with bars, cafes, and a vibrant student population.'),
(13, 13, 'Industrial district with trendy lofts, breweries, and art studios.'),
(14, 14, 'International district with diverse cuisine, markets, and cultural experiences.'),
(15, 15, 'Seaside community with beaches, fishing, and seafood.'),
(16, 16, 'Lakefront community with water sports, boating, and outdoor recreation.'),
(17, 17, 'Rural community with farms, orchards, and outdoor activities.'),
(18, 18, 'Desert community with hiking, biking, and natural wonders.'),
(19, 19, 'Coastal community with beaches, surfing, and marine life.'),
(20, 20, 'Mountain resort with water sports, and outdoor activities.');

-- Location Table
-- Stores the information about location_id, address, city, state, country, zip code and the corresponding listing_id.
CREATE TABLE Location (
  location_id INT PRIMARY KEY,
  listing_id INT,
  address VARCHAR(200),
  city VARCHAR(100),
  state VARCHAR(100),
  country VARCHAR(100),
  zip_code VARCHAR(20),
  FOREIGN KEY (listing_id) REFERENCES Listings(listing_id)
);

INSERT INTO Location (location_id, listing_id, address, city, state, country, zip_code) VALUES
(1, 1, 'Address 1', 'Paris', 'State 1', 'France', 'Zip 1'),
(2, 2, 'Address 2', 'Barcelona', 'State 2', 'Spain', 'Zip 2'),
(3, 3, 'Address 3', 'Rome', 'State 3', 'Italy', 'Zip 3'),
(4, 4, 'Address 4', 'Amsterdam', 'State 4', 'Netherlands', 'Zip 4'),
(5, 5, 'Address 5', 'Prague', 'State 5', 'Czech Republic', 'Zip 5'),
(6, 6, 'Address 6', 'Dublin', 'State 6', 'Ireland', 'Zip 6'),
(7, 7, 'Address 7', 'Berlin', 'State 7', 'Germany', 'Zip 7'),
(8, 8, 'Address 8', 'Athens', 'State 8', 'Greece', 'Zip 8'),
(9, 9, 'Address 9', 'Vienna', 'State 9', 'Austria', 'Zip 9'),
(10, 10, 'Address 10', 'Edinburgh', 'State 10', 'Scotland', 'Zip 10'),
(11, 11, 'Address 11', 'Budapest', 'State 11', 'Hungary', 'Zip 11'),
(12, 12, 'Address 12', 'Copenhagen', 'State 12', 'Denmark', 'Zip 12'),
(13, 13, 'Address 13', 'Florence', 'State 13', 'Italy', 'Zip 13'),
(14, 14, 'Address 14', 'Krakow', 'State 14', 'Poland', 'Zip 14'),
(15, 15, 'Address 15', 'Lisbon', 'State 15', 'Portugal', 'Zip 15'),
(16, 16, 'Address 16', 'Stockholm', 'State 16', 'Sweden', 'Zip 16'),
(17, 17, 'Address 17', 'Dubrovnik', 'State 17', 'Croatia', 'Zip 17'),
(18, 18, 'Address 18', 'Brussels', 'State 18', 'Belgium', 'Zip 18'),
(19, 19, 'Address 19', 'Reykjavik', 'State 19', 'Iceland', 'Zip 19'),
(20, 20, 'Address 20', 'Zurich', 'State 20', 'Switzerland', 'Zip 20');

-- Messages Table
-- Stores the information about message text and the corresponding message_id, guest_id, host_id and listing_id.
CREATE TABLE Messages (
  message_id INT PRIMARY KEY,
  guest_id INT,
  host_id INT,
  listing_id INT,
  message_text TEXT,
  timestamp TIMESTAMP,
  FOREIGN KEY (guest_id) REFERENCES Users(user_id),
  FOREIGN KEY (host_id) REFERENCES Users(user_id),
  FOREIGN KEY (listing_id) REFERENCES Listings(listing_id)
);

INSERT INTO Messages (message_id, guest_id, host_id, listing_id, message_text, timestamp) VALUES
(1, 2, 1, 1, 'Hi, I just checked in. The place looks great!', '2024-01-01 00:00:00'),
(2, 6, 1, 2, 'Hi, thanks for staying with me! I am glad you like it. Let me know if you need anything.', '2024-01-02 00:00:00'),
(3, 9, 1, 3, 'Hi, I was wondering if you could tell me where the nearest grocery store is?', '2024-01-03 00:00:00'),
(4, 12, 17, 4, 'Hi, sure thing! There is a grocery store about a mile away on Main Street.', '2024-01-04 00:00:00'),
(5, 15, 13, 5, 'Hi, I also wanted to let you know that I will be checking out a little early tomorrow.', '2024-01-05 00:00:00'),
(6, 18, 17, 6, 'Hi, no problem. Just let me know if you need any help with that.', '2024-01-06 00:00:00'),
(7, 20, 1, 7, 'Hi, I was wondering if it is okay if I have a guest over tonight?', '2024-01-07 00:00:00'),
(8, 2, 14, 8, 'Hi, sure, just let me know who it is and what time they will be arriving.', '2024-01-08 00:00:00'),
(9, 6, 14, 9, 'Hi, I am also curious if there is a good place to get breakfast around here?', '2024-01-09 00:00:00'),
(10, 9, 1, 10, 'Hi, yes, there is a great little cafe called The Daily Grind about a block away.', '2024-01-10 00:00:00'),
(11, 12, 5, 11, 'Hi, I just wanted to let you know that I am checking out now.', '2024-01-11 00:00:00'),
(12, 15, 5, 12, 'Hi, thanks for staying here! I hope you had a great stay. Let me know if you have any feedback.', '2024-01-12 00:00:00'),
(13, 18, 8, 13, 'Hi, I will leave a review for you soon. I really enjoyed my stay!', '2024-01-13 00:00:00'),
(14, 20, 13, 14, 'Hi, thank you! I am glad you had a good stay. I will look forward to your review.', '2024-01-14 00:00:00'),
(15, 2, 17, 15, 'Hi, I just wanted to let you know that I had a great time and I will definitely be back!', '2024-01-15 00:00:00'),
(16, 6, 14, 16, 'Hi, thank you! I am glad to hear that. I hope to see you again soon!', '2024-01-16 00:00:00'),
(17, 9, 17, 17, 'Hi, I also wanted to let you know that I left a little something for you as a thank you.', '2024-01-17 00:00:00'),
(18, 12, 5, 18, 'Hi, I was wondering if you could tell me where the nearest pharmacy is? I need to pick up some medication.', '2024-01-18 00:00:00'),
(19, 15, 8, 19, 'Hi, there is a pharmacy about two miles away on Elm Street. I can give you directions if you need.', '2024-01-19 00:00:00'),
(20, 18, 1, 20, 'Hi, thank you so much! I really appreciate your help. I will let you know if I need anything else.', '2024-01-20 00:00:00');

-- Payments Table
-- Stores the information about payment_date, payment_method, amount and the corresponding payment_id and booking_id.
CREATE TABLE Payments (
  payment_id INT PRIMARY KEY,
  booking_id INT,
  amount DECIMAL(10, 2),
  payment_date TIMESTAMP,
  payment_method VARCHAR(50),
  FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);

INSERT INTO Payments (payment_id, booking_id, amount, payment_date, payment_method) VALUES
(1, 1, 100.00, '2024-01-01 00:00:00', 'Credit Card'),
(2, 2, 200.00, '2024-01-02 00:00:00', 'PayPal'),
(3, 3, 300.00, '2024-01-03 00:00:00', 'Credit Card'),
(4, 4, 400.00, '2024-01-04 00:00:00', 'Bank Transfer'),
(5, 5, 500.00, '2024-01-05 00:00:00', 'Credit Card'),
(6, 6, 600.00, '2024-01-06 00:00:00', 'PayPal'),
(7, 7, 700.00, '2024-01-07 00:00:00', 'Credit Card'),
(8, 8, 800.00, '2024-01-08 00:00:00', 'Bank Transfer'),
(9, 9, 900.00, '2024-01-09 00:00:00', 'Credit Card'),
(10, 10, 1000.00, '2024-01-10 00:00:00', 'PayPal'),
(11, 11, 1100.00, '2024-01-11 00:00:00', 'Credit Card'),
(12, 12, 1200.00, '2024-01-12 00:00:00', 'Bank Transfer'),
(13, 13, 1300.00, '2024-01-13 00:00:00', 'Credit Card'),
(14, 14, 1400.00, '2024-01-14 00:00:00', 'PayPal'),
(15, 15, 1500.00, '2024-01-15 00:00:00', 'Credit Card'),
(16, 16, 1600.00, '2024-01-16 00:00:00', 'Bank Transfer'),
(17, 17, 1700.00, '2024-01-17 00:00:00', 'Credit Card'),
(18, 18, 1800.00, '2024-01-18 00:00:00', 'PayPal'),
(19, 19, 1900.00, '2024-01-19 00:00:00', 'Credit Card'),
(20, 20, 2000.00, '2024-01-20 00:00:00', 'Bank Transfer');

-- Complaints Table
-- Stores the information about complaint text and the corresponding complaint_id, user_id and booking_id.
CREATE TABLE Complaints (
  complaint_id INT PRIMARY KEY,
  user_id INT,
  booking_id INT,
  complaint_text TEXT,
  timestamp TIMESTAMP,
  status VARCHAR(20),
  FOREIGN KEY (user_id) REFERENCES Users(user_id),
  FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);

INSERT INTO Complaints (complaint_id, user_id, booking_id, complaint_text, timestamp, status) VALUES
(1, 1, 1, 'Complaint 1', '2024-01-01 00:00:00', 'Open'),
(2, 1, 2, 'Complaint 2', '2024-01-02 00:00:00', 'Resolved'),
(3, 1, 3, 'Complaint 3', '2024-01-03 00:00:00', 'Open'),
(4, 4, 4, 'Complaint 4', '2024-01-04 00:00:00', 'Resolved'),
(5, 5, 5, 'Complaint 5', '2024-01-05 00:00:00', 'Open'),
(6, 6, 6, 'Complaint 6', '2024-01-06 00:00:00', 'Resolved'),
(7, 7, 7, 'Complaint 7', '2024-01-07 00:00:00', 'Open'),
(8, 8, 8, 'Complaint 8', '2024-01-08 00:00:00', 'Resolved'),
(9, 9, 9, 'Complaint 9', '2024-01-09 00:00:00', 'Open'),
(10, 10, 10, 'Complaint 10', '2024-01-10 00:00:00', 'Resolved'),
(11, 11, 11, 'Complaint 11', '2024-01-11 00:00:00', 'Open'),
(12, 12, 12, 'Complaint 12', '2024-01-12 00:00:00', 'Resolved'),
(13, 13, 13, 'Complaint 13', '2024-01-13 00:00:00', 'Open'),
(14, 14, 14, 'Complaint 14', '2024-01-14 00:00:00', 'Resolved'),
(15, 15, 15, 'Complaint 15', '2024-01-15 00:00:00', 'Open'),
(16, 16, 16, 'Complaint 16', '2024-01-16 00:00:00', 'Resolved'),
(17, 17, 17, 'Complaint 17', '2024-01-17 00:00:00', 'Open'),
(18, 18, 18, 'Complaint 18', '2024-01-18 00:00:00', 'Resolved'),
(19, 19, 19, 'Complaint 19', '2024-01-19 00:00:00', 'Open'),
(20, 20, 20, 'Complaint 20', '2024-01-20 00:00:00', 'Resolved');

-- Cleaning_Schedule Table
-- Stores the information about cleaning_date and the corresponding cleaning schedule_id and listing_id.
CREATE TABLE Cleaning_Schedule (
  schedule_id INT PRIMARY KEY,
  listing_id INT,
  cleaning_date TIMESTAMP,
  status VARCHAR(20),
  FOREIGN KEY (listing_id) REFERENCES Listings(listing_id)
);

INSERT INTO Cleaning_Schedule (schedule_id, listing_id, cleaning_date, status) VALUES
(1, 1, '2024-01-01 00:00:00', 'Scheduled'),
(2, 2, '2024-01-02 00:00:00', 'Completed'),
(3, 3, '2024-01-03 00:00:00', 'Scheduled'),
(4, 4, '2024-01-04 00:00:00', 'Completed'),
(5, 5, '2024-01-05 00:00:00', 'Scheduled'),
(6, 6, '2024-01-06 00:00:00', 'Completed'),
(7, 7, '2024-01-07 00:00:00', 'Scheduled'),
(8, 8, '2024-01-08 00:00:00', 'Completed'),
(9, 9, '2024-01-09 00:00:00', 'Scheduled'),
(10, 10, '2024-01-10 00:00:00', 'Completed'),
(11, 11, '2024-01-11 00:00:00', 'Scheduled'),
(12, 12, '2024-01-12 00:00:00', 'Completed'),
(13, 13, '2024-01-13 00:00:00', 'Scheduled'),
(14, 14, '2024-01-14 00:00:00', 'Completed'),
(15, 15, '2024-01-15 00:00:00', 'Scheduled'),
(16, 16, '2024-01-16 00:00:00', 'Completed'),
(17, 17, '2024-01-17 00:00:00', 'Scheduled'),
(18, 18, '2024-01-18 00:00:00', 'Completed'),
(19, 19, '2024-01-19 00:00:00', 'Scheduled'),
(20, 20, '2024-01-20 00:00:00', 'Completed');

