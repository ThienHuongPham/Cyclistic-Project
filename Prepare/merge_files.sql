--Combining all data tables into a single table containing data from Jan 2021 to Dec 2023

CREATE TABLE `first-campaign-415415.cyclistic.212223-tripdata-merge` AS (
  SELECT * FROM `first-campaign-415415.cyclistic.202101-tripdata`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202102-tripdata`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202103-tripdata`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202104-tripdata`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202105-tripdata`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202106-tripdata-p0`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202106-tripdata-p1`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202107-tripdata-p0`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202107-tripdata-p1`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202108-tripdata-p0`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202108-tripdata-p1`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202109-tripdata-p0`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202109-tripdata-p1`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202110-tripdata-p0`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202110-tripdata-p1`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202111-tripdata`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202112-tripdata`
  UNION ALL

  SELECT * FROM `first-campaign-415415.cyclistic.202201-tripdata`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202202-tripdata`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202203-tripdata`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202204-tripdata`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202205-tripdata-p0`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202205-tripdata-p1`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202206-tripdata-p0`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202206-tripdata-p1`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202207-tripdata-p0`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202207-tripdata-p1`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202208-tripdata-p0`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202208-tripdata-p1`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202209-tripdata-p0`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202209-tripdata-p1`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202210-tripdata-p0`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202210-tripdata-p1`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202211-tripdata`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202212-tripdata`
  UNION ALL

  SELECT * FROM `first-campaign-415415.cyclistic.202301-tripdata`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202302-tripdata`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202303-tripdata`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202304-tripdata`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202305-tripdata-p0`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202305-tripdata-p1`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202306-tripdata-p0`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202306-tripdata-p1`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202307-tripdata-p0`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202307-tripdata-p1`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202308-tripdata-p0`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202308-tripdata-p1`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202309-tripdata-p0`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202309-tripdata-p1`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202310-tripdata-p0`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202310-tripdata-p1`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202311-tripdata`
  UNION ALL
  SELECT * FROM `first-campaign-415415.cyclistic.202312-tripdata`
);
