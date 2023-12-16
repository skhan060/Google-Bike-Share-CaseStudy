-- Types of bike
SELECT member_casual, rideable_type, 
COUNT(*) AS total_rides
FROM `my-cyclistic-da.cyclistic_202208_202307.cyclistic_data_Aug2022_to_Dec2022_clean`
GROUP BY member_casual, rideable_type;
-- total rides for member with classic bike is the highest (657424) while lowest (62563)) for casual with docked_bike. 

-- No. of rides per month.
SELECT member_casual, month, 
COUNT(*) AS total_rides_per_month
FROM `my-cyclistic-da.cyclistic_202208_202307.cyclistic_data_Aug2022_to_Dec2022_clean`
GROUP BY member_casual, month
ORDER BY member_casual;

-- No.of rides per day of week 
SELECT member_casual, day_of_week,COUNT(*) AS total_rides_per_week
FROM `my-cyclistic-da.cyclistic_202208_202307.cyclistic_data_Aug2022_to_Dec2022_clean`
GROUP BY member_casual,day_of_week
ORDER BY member_casual;

-- Average ride length per day of week
SELECT member_casual, day_of_week, 
AVG(ride_length_in_mins) AS avg_ride_length, 
AVG(AVG(ride_length_in_mins)) OVER(PARTITION BY member_casual) AS combined_avg_ride_length
FROM `my-cyclistic-da.cyclistic_202208_202307.cyclistic_data_Aug2022_to_Dec2022_clean`
GROUP BY member_casual, day_of_week
ORDER BY member_casual;
