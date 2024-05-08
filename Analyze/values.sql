  WITH hour_counts_member AS (
    SELECT
      hour, COUNT(hour) AS count_hour, member_casual
    FROM `first-campaign-415415.cyclistic.212223-tripdata_cleaned_combined`
    WHERE member_casual = 'member'
    GROUP BY hour, member_casual
  ),

  day_counts_member AS (
    SELECT
      day_of_week, COUNT(day_of_week) AS count_day, member_casual
    FROM `first-campaign-415415.cyclistic.212223-tripdata_cleaned_combined`
    WHERE member_casual = 'member'
    GROUP BY day_of_week, member_casual
  ),

  month_counts_member AS (
    SELECT
      month, COUNT(month) AS count_month, member_casual
    FROM `first-campaign-415415.cyclistic.212223-tripdata_cleaned_combined`
    WHERE member_casual = 'member'
    GROUP BY month, member_casual
  ),

  biketype_counts_member AS (
    SELECT
      rideable_type, COUNT(rideable_type) AS count_biketype, member_casual
    FROM `first-campaign-415415.cyclistic.212223-tripdata_cleaned_combined`
    WHERE member_casual = 'member'
    GROUP BY rideable_type, member_casual
  ),

  hour_counts_casual AS (
    SELECT
      hour, COUNT(hour) AS count_hour, member_casual
    FROM `first-campaign-415415.cyclistic.212223-tripdata_cleaned_combined`
    WHERE member_casual = 'casual'
    GROUP BY hour, member_casual
  ),

  day_counts_casual AS (
    SELECT
      day_of_week, COUNT(day_of_week) AS count_day, member_casual
    FROM `first-campaign-415415.cyclistic.212223-tripdata_cleaned_combined`
    WHERE member_casual = 'casual'
    GROUP BY day_of_week, member_casual
  ),

  month_counts_casual AS (
    SELECT
      month, COUNT(month) AS count_month, member_casual
    FROM `first-campaign-415415.cyclistic.212223-tripdata_cleaned_combined`
    WHERE member_casual = 'casual'
    GROUP BY month, member_casual
  ),

  biketype_counts_casual AS (
    SELECT
      rideable_type, COUNT(rideable_type) AS count_biketype, member_casual
    FROM `first-campaign-415415.cyclistic.212223-tripdata_cleaned_combined`
    WHERE member_casual = 'casual'
    GROUP BY rideable_type, member_casual
  )

  SELECT CAST(hour AS STRING) AS value, member_casual
  FROM hour_counts_member
  WHERE count_hour = (
      SELECT MAX(count_hour)
      FROM hour_counts_member
  )

  UNION ALL

  SELECT day_of_week, member_casual
  FROM day_counts_member
  WHERE count_day = (
      SELECT MAX(count_day)
      FROM day_counts_member
  )

  UNION ALL

  SELECT month, member_casual
  FROM month_counts_member
  WHERE count_month = (
      SELECT MAX(count_month)
      FROM month_counts_member
  )

  UNION ALL

  SELECT rideable_type, member_casual
  FROM biketype_counts_member
  WHERE count_biketype = (
      SELECT MAX(count_biketype)
      FROM biketype_counts_member
  )

  UNION ALL

  SELECT CAST(hour AS STRING), member_casual
  FROM hour_counts_casual
  WHERE count_hour = (
      SELECT MAX(count_hour)
      FROM hour_counts_casual
  )

  UNION ALL

  SELECT day_of_week, member_casual
  FROM day_counts_casual
  WHERE count_day = (
      SELECT MAX(count_day)
      FROM day_counts_casual
  )

  UNION ALL

  SELECT month, member_casual
  FROM month_counts_casual
  WHERE count_month = (
      SELECT MAX(count_month)
      FROM month_counts_casual
  )

  UNION ALL

  SELECT rideable_type, member_casual
  FROM biketype_counts_casual
  WHERE count_biketype = (
      SELECT MAX(count_biketype)
      FROM biketype_counts_casual
  )