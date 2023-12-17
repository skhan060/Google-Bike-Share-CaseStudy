# Google Cyslistic Bike Share Case Study

## 📝 Introduction 
The **Cyclistic Bike Share Case Study** is an end of course capstone project for the **Google Data Analytics Certificate** offered by Coursera. In this project, I will perform real world tasks as an efficient data analyst following the data analysis process of <ins>ask, prepare, process, analyze, share and act</ins> to analyze the data made available. 

## 💬 Background
Cyclistic is a fictional **bike-share company** based in Chicago that launched a successful bike-sharing program in 2016. Since then the program has expanded significantly to a fleet of 5,824 bicycles and a network of 692 geotracked stations located across the city. Cyclistic offers a large number of bicycles across numerous stations which allows customers to rent bikes from one station and return them to any other station within the network at their convenience. Consequently, this promotes cycling as a mode of transportation which in turn results in the success of Cyclistic's bike-sharing program. 

So far, Cyclistic's marketing strategy has relied on building general awareness and appealing to broad consumer segments. Hence, following this stratergy Cyclistic offers flexibile pricing plans that target diverse diverse needs of users including single-ride passes, full-day passes, and annual memberships. Furthermore, Cyclistice also offers different types of bikes which include reclining bikes, hand tricycles, and cargo bikes which makes bike sharing more inclusive for individuals with disabilities. Furthermore, about 8% of riders use the assistive options. We also know that Cyclistic users are more likely to ride for leisure whereas about 30% use them to commute to work each day. 

The company's marketing director, Lily Moreno, believes that the company’s future success depends on maximizing the number of annual memberships by converting casual riders to memebers. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends to come up with a conversion stratergy.

## ⚙ Approach/Steps
### 1. Ask
**Business Task -** design marketing strategies to **convert casual riders to members**

Three questions will guide the future marketing program:
 
> 1. How do annual members and casual riders use Cyclistic bikes differently?
> 2. Why would casual riders buy Cyclistic annual memberships?
> 3. How can Cyclistic use digital media to influence casual riders to become members?

Moreno has assigned me the first question to you as a Data Analyst to answer: **How do annual members and casual riders use Cyclistic bikes differently?**

### 2. Prepare
#### 🔗 Quick Links
**Data Source:** [divvy-tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html) <br>
[Note that the data has been made available by Motivate International Inc. under this [<ins>license</ins>](https://www.divvybikes.com/data-license-agreement).]

**Tools:** <br>
- Data cleaning & processing - SQL on Google Big Query & Spreadsheets (.CSV)
- Data visualization - [Tableau](https://public.tableau.com/app/profile/saad.khan6444/viz/CyclisticBikeShare_17016300215350/Totaltripsvsdays)

### 3. Process
The basis for this analysis is **2022** data and the steps for processing the data are as follow:
1) [Data Combining](https://github.com/skhan060/Google-Bike-Share-CaseStudy/blob/main/01_Data_Combining.sql)
2) [Data Exploration](https://github.com/minbean/Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study/blob/main/02_Data_Exploration.sql)
3) [Data Cleaning](https://github.com/minbean/Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study/blob/main/03_Data_Cleaning.sql)
4) [Data Analysis](https://github.com/minbean/Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study/blob/main/04_Data_Analysis)

#### Data Combining
The 12 tables from **January 2022 to December 2022** were stacked and combined into a single table. The table consists of 5,667,717 rows.

#### Data Exploration
I ran the queries for each column from left to right in order to determine the **data type** and to uncover any **missing values, outliers, inconsistencies, and errors** within the dataset. 

The data set consists of **13 variables**, as shown in the following: <br>

| **No.**|  **Variable**       |  **Description**                                        |
|--------|------------------   | --------------------------------------------------------|
| 1      | ride_id             | Unique ID assigned to each ride                         |
| 2      | rideable_type       | classic, docked, or electric                            |
| 3      | started_at          | Date and time at the start of trip                      |
| 4      | ended_at            | Date and time at the end of trip                        |
| 5      | start_station_name  | Name of the station where the ride journey started from |
| 6      | start_station_id    | ID of the station where the ride journey started from   |
| 7      | end_station_name    | Name of the station where the ride trip ended at        |
| 8      | end_station_id      | ID of the station where the ride trip ended at          |
| 9      | start_lat           | Latitude of starting station                            |
| 10     | start_lng           | Longitude of starting station                           |
| 11     | end_lat             | Latitude of ending station                              |
| 12     | end_lng             | Longitude of ending station                             |                            
| 13     | member_casual       | Type of membership of each rider                        |

and the **data type** of each variable is depicted below:

<img width="352" alt="DataType" src="https://github.com/minbean/Google-Data-Analytics-Capstone-Project-Cyclistic-Case-Study/assets/101321188/3f2e5e1d-b18e-4c9b-92e8-c6e35ce8ae12">

