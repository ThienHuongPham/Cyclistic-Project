CREATE TABLE `first-campaign-415415.cyclistic.map` AS(
  SELECT
    start_station_name AS station_name,
    member_casual,
    AVG(start_lat) AS lat,
    AVG(start_lng) AS lng,
    COUNT(ride_id) AS total_trips,
    "start" AS type
  FROM `first-campaign-415415.cyclistic.212223-tripdata_cleaned_combined`
  WHERE start_station_name IS NOT NULL
  GROUP BY start_station_name, member_casual

  UNION ALL

  SELECT
    end_station_name AS station_name,
    member_casual,
    AVG(end_lat) AS lat,
    AVG(end_lng) AS lng,
    COUNT(ride_id) AS total_trips,
    "end" AS type
  FROM `first-campaign-415415.cyclistic.212223-tripdata_cleaned_combined`
  WHERE end_station_name IS NOT NULL
  GROUP BY end_station_name, member_casual
);


--Find the number of station that each group used
SELECT member_casual, COUNT (DISTINCT station_name) AS number_of_station
FROM `first-campaign-415415.cyclistic.map`
GROUP BY member_casual;

--Find top 10 most famous station for annual members
SELECT station_name, SUM(total_trips) AS no_of_trips
FROM `first-campaign-415415.cyclistic.map`
WHERE member_casual = 'member'
GROUP BY station_name
ORDER BY SUM(total_trips) DESC
LIMIT 10;

--Find top 10 most famous station for casual riders
SELECT station_name, SUM(total_trips) AS no_of_trips
FROM `first-campaign-415415.cyclistic.map`
WHERE member_casual = 'casual'
GROUP BY station_name
ORDER BY SUM(total_trips) DESC
LIMIT 10
