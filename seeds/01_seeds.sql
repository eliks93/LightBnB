INSERT INTO users (name, email, password)
VALUES ('Eli Kittross-Schnell', 'eliks@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Sam Hudson', 'Shudson@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Taco Man', 'taco@taco.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (
  owner_id,
  title,
  description, 
  thumbnail_photo_url,
  cover_photo_url,
  cost_per_night,
  parking_spaces,
  number_of_bathrooms,
  number_of_bedrooms,
  country,
  street,
  city,
  province,
  post_code,
  active
  )
VALUES(1, "Eli's awesome home!", 'description', 'thumbURL', 'coverURL', 200, 2, 1, 2, 'USA', 'Palatine', 'Seattle', 'WA', '98133', TRUE),
(2, "Sam's lame home!", 'description', 'thumbURL', 'coverURL', 1000, 1, 1, 1, 'Canada', 'Oak', 'Vancouver', 'BC', 'V6H 1N2', TRUE),
(2, "Sam's DOPE House", 'description', 'thumbURL', 'coverURL', 2500, 3, 4, 6, 'Canada', 'Timber', 'Whislter', 'BC', 'V6Z 5M3', TRUE);


INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
VALUES (1, 2, '2018-09-11', '2018-09-26'),
(2, 1, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews (
  guest_id,
  property_id,
  reservation_id,
  rating,
  message
  )
VALUES(3, 3, 3, 9, 'message'),
(1, 2, 1, 2, 'message'),
(2, 1, 2, 7.5, 'message');