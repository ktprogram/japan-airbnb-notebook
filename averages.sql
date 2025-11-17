--- This is where I was figuring out the averages for certain things 
--- I grouped the data by neighborhood and room_type, while having the Airbnbs with the most average reviews at the top

SELECT
  neighbourhood,
  room_type,
  ROUND(AVG(price_yen), 2) AS avg_price,
  ROUND(AVG(availability_365), 2) AS avg_availability,
  ROUND(AVG(reviews_per_month), 2) AS avg_reviews
FROM `japan-airbnb-478219.listings_data.listings` 
WHERE price_yen BETWEEN 1000 AND 100000
GROUP BY neighbourhood, room_type
ORDER BY avg_reviews DESC;
