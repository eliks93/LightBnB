SELECT properties.*,  reservations.*, avg(property_reviews.rating)
FROM properties
JOIN reservations ON properties.id = property_id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY properties.id, reservations.id, reservations.end_date 
HAVING reservations.end_date < now()::date
ORDER BY reservations.start_date
LIMIT 10;