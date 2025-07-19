# 🚗 Car Sales Analysis 

## Data Science Institute - Cohort 6 — Team 7 - Final Project
For our capstone project in the Data Science Certificate program at the University of Toronto’s Data Sciences Institute, we set out to explore real-world questions using a dataset on car sales. 

<!-- Entered name as per the Team project list. Should we order it by first or last name or leave it as is? -->
## Members
- Aloysius Felix Rozario 
- Hamid Baniasadi
- Nguyen Thuy Duong Le
- Shailesh Thapa
- Inna Semenykhina
- Farhan Rashid
- Nasir Paracha

<!-- We can share ownership of this section -->
## Project Overview
- [Purpose and Overview](#purpose-and-overview) <!-- ST, IS-->
- [Project Scope](#project-scope) <!-- DL-->
- [Methodology](#methodology) <!-- IS -->
- [Understanding the Data](#understanding-the-data) <!-- Can be deleted -->
- [Data Cleaning](#data-cleaning) <!-- AL -->
- [Data Exploration](#data-exploration) <!-- AL -->
- [Data Visualization](#data-visualization) <!-- TBD -->
- [Team Videos](#team-videos) <!-- TBD -->
- [Conclusion](#conclusion) <!-- TBD -->
- [Credits and Source](#credits) <!-- Done -->

### Purpose and Overview 
TBD

### Project Scope
TBD

### Methodology
TBD

### Understanding the Data
TBD

### Data Cleaning
After reviewing the dataset for common issues such as missing values, duplicate entries, and inconsistent formatting. Some columns, like Engine, included special characters that needed to be removed, while the Date column was converted into a standard format to allow for time-based analysis. We also ensured that numeric fields like Price ($) and Annual Income were properly typed and free from invalid entries.

### Data Exploration
With a clean dataset, we began exploring trends and patterns using summary statistics and visualizations. 

- ```Car_id:``` 23,906 Unique identifier

- ```Date:``` Date of sale - January, 2022, to December 2023

- ```Customer Name, Gender, Annual Income:``` Customer demographics
    * Total Unique Customers: 3,022
    * Gender Breakdown: 
_This skew suggests a strong male majority in recorded customer profiles._
        * Male: 18,798 (~79%)
        * Female: 5,108 (~21%)
    * Annual Income:
_Income distribution is wide, indicating a diverse customer base from lower to high-income groups._
        * Minimum: $10,080
        * Maximum: $11,200,000
        * Mean: $830,840
        * Median (50%): $735,000
- ```Company, Model, Engine, Transmission, Color, Body Style:``` Vehicle specifications
    * Total Unique Companies: 30
    * Total Unique Models: 154
    * Engine Types (2 total): 2
        * Double Overhead Camshaft: 12,571
        * Overhead Camshaft: 11,335
    * Transmission Types: 2
        * Automatic (Auto): 12,571
        * Manual: 11,335
    * Total Unique Colors: 3
    * Total Unique Body Styles: 5

- ```Price ($):``` Final sale price
    * Price Range: $1,200 – $85,800

- ```Dealer_Name, Dealer_No, Dealer_Region:``` Dealer details

- ```Phone:``` Customer contact (anonymized numeric field)

> ### SUVs were the most popular body style

![Chart showing the top 5 body styes sold](/Top%205%20Body%20Styles%20Sold.png)

> ### Automatic transmissions dominated sales across all regions

![Chart showing transmission types across dealer regions](/Transmission%20Types%20Across%20Dealer%20Regions.png)

> ### Brands like Toyota, Ford, and BMW consistently appeared among the top sellers

![Chart showing top three brands sales count](/Sales%20Count%20For%20Toyota,%20Ford,%20And%20BMW.png)

> ### Car prices varied significantly based on model, region, and customer income level

![Chart showing price distribution of the cars](/Distribution%20of%20Car%20Prices.png)

This exploration guided us in choosing the most relevant features for our later visualizations and predictive modeling, and gave us a solid understanding of the automotive sales landscape reflected in the data.

### Data Visualization

### Team Videos
TBD

### Conclusion
TBD

### Credits and Source
The data was sourced from Kaggle.\
[Car Sales Report](https://www.kaggle.com/datasets/missionjee/car-sales-report/data)
