-- Combine data from Aug to Nov 2022 into a single table named cyclistic_data_Aug2022_to_Dec2022

CREATE TABLE `cyclistic_202208_202307.cyclistic_data_Aug2022_to_Dec2022` AS (
  SELECT * FROM `my-cyclistic-da.cyclistic_202208_202307.202208-divvy-tripdata` 
  UNION ALL
  SELECT * FROM `my-cyclistic-da.cyclistic_202208_202307.202209-divvy-publictripdata`
  UNION ALL
  SELECT * FROM `my-cyclistic-da.cyclistic_202208_202307.202210-divvy-tripdata` 
  UNION ALL
  SELECT * FROM `my-cyclistic-da.cyclistic_202208_202307.202211-divvy-tripdata` 
  );
  --The 4 tables from August 2022 to November 2022 were stacked and combined into a single table. The table consists of 2,383,691 rows.
