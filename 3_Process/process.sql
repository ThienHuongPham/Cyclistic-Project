-- Checking for number of null values in all columns
SELECT
   COUNTIF (ride_id IS NULL) AS ride_id,
   COUNTIF (rideable_type IS NULL) AS rideable_type,
   COUNTIF (started_at IS NULL) AS started_at,
   COUNTIF (ended_at IS NULL) AS ended_at,
   COUNTIF (start_station_name IS NULL) AS start_station_name,
   COUNTIF (start_station_id IS NULL) AS start_station_id,
   COUNTIF (end_station_name IS NULL) AS end_station_name,
   COUNTIF (end_station_id IS NULL) AS end_station_id,
   COUNTIF (start_lat IS NULL) AS start_lat,
   COUNTIF (start_lng IS NULL) AS start_lng,
   COUNTIF (end_lat IS NULL) AS end_lat,
   COUNTIF (end_lng IS NULL) AS end_lng,
   COUNTIF (member_casual IS NULL) AS member_casual
FROM `first-campaign-415415.cyclistic.212223-tripdata-merge`;

-- Checking for duplicate primary key ride_id
SELECT COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM `first-campaign-415415.cyclistic.212223-tripdata-merge`;

-- Ride number of each rideable_type - 3 unique types of bikes
SELECT rideable_type, COUNT(rideable_type) AS no_of_trips
FROM `first-campaign-415415.cyclistic.212223-tripdata-merge`
GROUP BY rideable_type;

-- Ride number of each type of riders: member/casual - 2 unique values
SELECT member_casual, COUNT(member_casual) AS no_of_trips
FROM `first-campaign-415415.cyclistic.212223-tripdata-merge`
GROUP BY member_casual;

--Checking number of rows, which are 16,982,657 and checking if there are duplicates
SELECT COUNT(*) FROM `first-campaign-415415.cyclistic.212223-tripdata-merge`
UNION ALL
SELECT COUNT (*)
FROM(
  SELECT DISTINCT *  FROM `first-campaign-415415.cyclistic.212223-tripdata-merge`
);

-- Checking length of ride_id
SELECT LENGTH(ride_id) AS length_ride_id
FROM `first-campaign-415415.cyclistic.212223-tripdata-merge`
GROUP BY length_ride_id;

-- Checking ride under 1-minute-length, which will be excluded from the data
SELECT *, TIMESTAMP_DIFF(ended_at, started_at, MINUTE)
FROM `first-campaign-415415.cyclistic.212223-tripdata-merge`
WHERE TIMESTAMP_DIFF(ended_at, started_at, MINUTE) <= 0
