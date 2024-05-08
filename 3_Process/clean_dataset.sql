CREATE TABLE `first-campaign-415415.cyclistic.212223-tripdata_cleaned_combined` AS (
  SELECT
    ride_id,
    rideable_type,
    started_at,
    ended_at,
    TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length_min,
    EXTRACT(HOUR FROM started_at) AS hour,
    CASE EXTRACT(DAYOFWEEK FROM started_at)
      WHEN 1 THEN 'Sunday'
      WHEN 2 THEN 'Monday'
      WHEN 3 THEN 'Tuesday'
      WHEN 4 THEN 'Wednesday'
      WHEN 5 THEN 'Thursday'
      WHEN 6 THEN 'Friday'
      WHEN 7 THEN 'Saturday'
      END AS day_of_week,
    CASE EXTRACT(MONTH FROM started_at)
      WHEN 1 THEN 'January'
      WHEN 2 THEN 'Febuary'
      WHEN 3 THEN 'March'
      WHEN 4 THEN 'April'
      WHEN 5 THEN 'May'
      WHEN 6 THEN 'June'
      WHEN 7 THEN 'July'
      WHEN 8 THEN 'August'
      WHEN 9 THEN 'September'
      WHEN 10 THEN 'October'
      WHEN 11 THEN 'November'
      WHEN 12 THEN 'December'
      END AS month,
    EXTRACT(YEAR FROM started_at) AS year,
    start_station_name,
    end_station_name,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual
  FROM `first-campaign-415415.cyclistic.212223-tripdata-merge`
  WHERE TIMESTAMP_DIFF(ended_at, started_at, MINUTE) > 0
  ORDER BY started_at
);
