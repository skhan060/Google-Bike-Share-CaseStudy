-- Check the number of null values in each column
SELECT COUNT(*) - COUNT(ride_id) ride_id,
 COUNT(*) - COUNT(rideable_type) rideable_type,
 COUNT(*) - COUNT(started_at) started_at,
 COUNT(*) - COUNT(ended_at) ended_at,
 COUNT(*) - COUNT(start_station_name) start_station_name,
 COUNT(*) - COUNT(start_station_id) start_station_id,
 COUNT(*) - COUNT(end_station_name) end_station_name,
 COUNT(*) - COUNT(end_station_id) end_station_id,
 COUNT(*) - COUNT(start_lat) start_lat,
 COUNT(*) - COUNT(start_lng) start_lng,
 COUNT(*) - COUNT(end_lat) end_lat,
 COUNT(*) - COUNT(end_lng) end_lng,
 COUNT(*) - COUNT(member_casual) member_casual
FROM `my-cyclistic-da.cyclistic_202208_202307.cyclistic_data_Aug2022_to_Dec2022`;

-- start_station_name NULL VALUES = 359129
-- start_station_id   NULL VALUES = 359129
-- end_station_name   NULL VALUES = 382583
-- end_station_id     NULL VALUES = 382583

-- 1) rider_id: the length of the rider id should be uniform 
SELECT LENGTH(ride_id) as rider_id_length
FROM `my-cyclistic-da.cyclistic_202208_202307.cyclistic_data_Aug2022_to_Dec2022`
GROUP BY LENGTH(ride_id);
-- the ride_id is consistent with 16 characters.

-- 2) rideable_type: determine the type of bikes 
SELECT rideable_type
FROM `my-cyclistic-da.cyclistic_202208_202307.cyclistic_data_Aug2022_to_Dec2022`
GROUP BY rideable_type;
-- there are three types of bike: classic, electric and docked 

-- 3) started_at, ended_at: ride duration
SELECT ride_id, started_at, ended_at
FROM `my-cyclistic-da.cyclistic_202208_202307.cyclistic_data_Aug2022_to_Dec2022`
WHERE 
TIMESTAMP_DIFF(ended_at, started_at, MINUTE) <= 1 OR
TIMESTAMP_DIFF(ended_at, started_at, MINUTE) >= 1440;
-- check if the ride time is less than a minute or longer than a day 
-- the end time is behind the start time
-- TIMESTAMP is in YYYY-MM-DD hh:mm:ss UTC format 

-- 4) name & id of start_station and end_station
SELECT DISTINCT start_station_name, COUNT(*) AS start_station_count
FROM `my-cyclistic-da.cyclistic_202208_202307.cyclistic_data_Aug2022_to_Dec2022`
GROUP BY start_station_name;
-- a total of 359129 start_station_name with null values are determined

SELECT DISTINCT end_station_name, COUNT(*) AS end_station_count
FROM `my-cyclistic-da.cyclistic_202208_202307.cyclistic_data_Aug2022_to_Dec2022`
GROUP BY end_station_name;
-- a total of 382583 end_station_name with null values are found 


-- 5) lat & lng of start and end
SELECT * 
FROM `my-cyclistic-da.cyclistic_202208_202307.cyclistic_data_Aug2022_to_Dec2022`
WHERE
start_lat IS NULL OR
start_lng IS NULL OR
end_lat IS NULL OR
end_lng IS NULL;
-- 2260 null values are observed

-- 6) member_casual: type of membership 
SELECT member_casual, COUNT(*) as membership_count
FROM `my-cyclistic-da.cyclistic_202208_202307.cyclistic_data_Aug2022_to_Dec2022`
GROUP BY member_casual;
-- only two types: member and causal 
-- Casual users = 965382; Member users = 1418309
