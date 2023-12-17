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
2) [Data Exploration](https://github.com/skhan060/Google-Bike-Share-CaseStudy/blob/main/02_Data_Exploration.sql)
3) [Data Cleaning](https://github.com/skhan060/Google-Bike-Share-CaseStudy/blob/main/03_Data_Cleaning.sql)
4) [Data Analysis](https://github.com/skhan060/Google-Bike-Share-CaseStudy/blob/main/04_Data_Analysis.sql)

#### Data Combining
The 4 tables from **August 2022 to Novenmber 2022** were stacked and combined into a single table. The table consists of 2,383,691 rows.

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

#### Data Cleaning
The dataset was cleaned by:
- Removing the trips with **null values**.
- Adding 3 columns: '**ride_length_in_mins**', '**day_of_week**' and '**month**'.
- Excluding the **rides with duration less than a minute** or **longer than a day**.

In total, **1,748,302** rows were returned.

### 4. Analyze
#### Data Analysis
The analysis question is: 
> How do annual members and casual riders use Cyclistic bikes differently?

The cleaned data is imported into Tableau for analysis and the figures plotted are displayed in the following.

### - Total Rides in 2022
The figure below shows the **total number of rides** carried out by Cyclistic members and casual riders in **2022**. 
![Membership Types](https://github.com/skhan060/Google-Bike-Share-CaseStudy/assets/153567661/5d1a7aca-6a06-4bb2-9c7f-5e89ff299df6)

- **Cyclistic members** recorded a **greater bicycle activity** than casual riders. The total rides for Cyclistic members are 1,080,882 while 708,971 trips for casual riders. 
- **Cyclistic members** accounted for about **60.4%** of total rides whereas casual riders made up **39.6%** of total rides from August 2022 to November 2022. 
<br>

### - Types of Bikes
The types of bicycles used for the trips are displayed as follow:
![Types of Bikes](https://github.com/skhan060/Google-Bike-Share-CaseStudy/assets/153567661/56e7cbaa-5a31-4074-a44e-b18ee502dc25)

- There are **three types of bicycles**: <ins>*classic, electric and docked bikes*</ins>.
- Cyclistic members and casual riders prefer show a higher preference for **classic bicycles over electric bicycles**.
- Casual riders have also used the docked bicycles. 
<br>

### - Average Ride Duration
The average ride length is plotted against the months comparing users (member vs. casual):

![Avg Ride Length (member vs. casual)]((https://github.com/skhan060/Google-Bike-Share-CaseStudy/assets/153567661/c66e86a6-d079-4e42-baae-6ae346b8447e)
- The average ride length for casual users ranges from  **23.5 min** to **17.3 min** from August through November 2022.
- The average ride length for member users ranges from  **13.3 min** to **10.9 min** from August through November 2022.
<br>

### - Trips Taken in a Month
. Total number of trips are plotted against the months comparing users (member vs. casual):

![Total Rides (Month)](https://github.com/skhan060/Google-Bike-Share-CaseStudy/assets/153567661/30c51ae8-bcb7-4455-a0a7-db8fb144881d)
- Both Cyclistic members and casual riders have the **lowest activity**, 179,893 rides and 72,767 rides respectively in **November 2022**.
- **Cyclistic members** have the **highest activity** (331,165 rides) in **August 2022**.
- **Casual riders** have the **greatest activity** (267,530 rides) in **August 2022**.
<br>

### - Trips Taken in a Week
The bar chart below is used to study the daily user activity over a week.

![Total Rides (Week)](https://github.com/skhan060/Google-Bike-Share-CaseStudy/assets/153567661/c46271ab-e0ab-4e43-9dff-d22032800eb8)
- Generally, bike rides are **most frequented** on **Saturdays**. 
- **Cyclistic members** have the **highest activity** (234,417 rides) on **Thursdays** while the **lowest activity** (151,129 rides) on **Sundays**.
- **Casual riders** have the **greatest activity** (193,786 rides) on **Saturdays** while the **least activity** (111,113 rides) on **Mondays**.
<br>

### - Average Ride Length in a Week
The mean ride duration across the week is displayed as follow.

![Avg  Ride Length (Week)](https://github.com/skhan060/Google-Bike-Share-CaseStudy/assets/153567661/2a1c01b7-cf5b-42eb-8048-2ecdafcac76c)
- **Cyclistic members** cycled the **longest on Saturday** with an average ride length of 13.86 minutes.
- On the other hand, **casual riders cycled the longest on Sunday** with a mean trip duration of 25.11 minutes.

### 5. Share
![Cyclistic Bike Share Dashboard]((https://github.com/skhan060/Google-Bike-Share-CaseStudy/assets/153567661/881cc21c-c574-4729-9a1c-9b24ac943ac0)
View [Cyclistic Bike Share Dashboard](https://public.tableau.com/app/profile/saad.khan6444/viz/CyclisticBikeShare_17016300215350/Totaltripsvsmonths#1).

The similiarities and differences between Cyclistic members and casual riders were drawn from the dashboard above.

**Similarities:**
- Both Cyclistic members and casual riders **prefer riding bicycles in the spring and summer seasons** (from May to September). However, the number of rides decrease since September. This may be due to change of season in which the weather temperature drops and becomes uncomfortable for rides. 
- Both Cyclistic members and casual riders **prefer classic bicycles over electric bicycles**. 
- Both Cyclistic members and casual riders have **higher average ride duration on weekends as compared to on weekdays**.

**Differences:**
- **Cyclistic members** go on **more rides** than casual riders.
- **Cyclistic members** have **smaller average ride length** (12.41 minutes) than casual riders (23.82 minutes). Hence, this may suggest that the Cyclistic members take the bicycles for **short trips or short distance travel**. 
- **Cyclistic members** show **consistent rides** throughout the week while casual riders have the busiest activites on weekends and lowest activities during weekdays. This may indicate that the Cyclistic members use the bicycles for ***purpose-oriented rides** such as work or errands while the casual riders use bicycles for leisure or recreational activities.

