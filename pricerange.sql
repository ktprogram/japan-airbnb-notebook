--- I want to find the Airbnbs from the price range of 10000 to 100000 yen. 
--- This translates to about $65 to $650 which is a broad range

SELECT 
  id,
  neighbourhood,
  price_yen,
  latitude,
  longitude,
  room_type
FROM `japan-airbnb-478219.listings_data.listings` 
WHERE latitude IS NOT NULL
  AND longitude IS NOT NULL
  AND price_yen BETWEEN 10000 AND 100000;

