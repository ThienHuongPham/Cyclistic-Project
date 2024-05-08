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
