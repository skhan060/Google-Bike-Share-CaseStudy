-- Create the columns 'month and' 'day_of week' where 1 represents Sunday, 7 represents Monday 
-- Determine the ride length in minutes 
-- Remove rows with null values 
CREATE TABLE `cyclistic_202208_202307.cyclistic_data_Aug2022_to_Dec2022_clean` AS (
  SELECT 
  ride_id, 
  rideable_type,
  started_at,
  ended_at,
  ride_length_in_mins,
  CASE 
  EXTRACT(MONTH FROM started_at)
    WHEN 1 THEN 'August'
    WHEN 2 THEN 'September'
    WHEN 3 THEN 'October'
    WHEN 4 THEN 'November'
    
  END AS month,
  CASE EXTRACT(DAYOFWEEK FROM started_at)
    WHEN 1 THEN 'Sunday'
    WHEN 2 THEN 'Monday'
    WHEN 3 THEN 'Tuesday'
    WHEN 4 THEN 'Wednesday'
    WHEN 5 THEN 'Thursday'
    WHEN 6 THEN 'Friday'
    WHEN 7 THEN 'Saturday'    
  END AS day_of_week,
  start_station_name,
  start_station_id,
  end_station_name,
  end_station_id,
  start_lat,
  start_lng,
  end_lat,
  end_lng,
  member_casual,
FROM `my-cyclistic-da.cyclistic_202208_202307.cyclistic_data_Aug2022_to_Dec2022` AS t1
JOIN 
  (SELECT ride_id,
   TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length_in_mins
  FROM `my-cyclistic-da.cyclistic_202208_202307.cyclistic_data_Aug2022_to_Dec2022`) AS t2
USING(ride_id)
WHERE ride_length_in_mins > 1 AND ride_length_in_mins < 1440 AND
  start_station_name IS NOT NULL AND
  start_station_id IS NOT NULL AND
  end_station_name IS NOT NULL AND
  end_station_id IS NOT NULL AND
  start_lat IS NOT NULL AND
  start_lng IS NOT NULL AND
  end_lat IS NOT NULL AND
  end_lng IS NOT NULL
);
