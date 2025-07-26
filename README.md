# 🚗 Car Sales Analysis 

<!-- This is a short summary, we can add to it as we start the project -->
## Data Science Institute - Cohort 6 — Team 7 - Final Project
For our capstone project in the Data Science Certificate program at the University of Toronto’s Data Sciences Institute, we set out to explore real-world questions using a dataset on car sales. 

<!-- Entered name as per the Team project list. Should we order it by first or last name or leave it as is? -->
 
 ## Members
 - Aloysius Felix Rozario
 - Inna Semenykhina
 - Nguyen Thuy Duong Le
 - Shailesh Thapa
 
 <!-- We can share ownership of this section -->
 # Project Overview
 - [Purpose and Overview](#purpose-and-overview)
 - [Methodology](#methodology)
 - [Project Scope](#project-scope)
 - [Understanding the Data](#understanding-the-data)
 - [Data Cleaning](#data-cleaning)
 - [Data Analysis](#data-analysis)
 - [Conclusion](#conclusion)
 - [Team Videos](#team-videos)
 - [Credits and Source](#credits)

 # Purpose and Overview

 The goal of this project is to analyze and visualize trends in the car sales market using the "Car Sales Report" dataset. Our team aims to uncover insights into sales performance across different brands, models, body types, fuel types, and price segments. 
 
 The project utilized classification modeling to understand the impact of demographic factors on the popularity of a specific car model based on historical purchase data. The features, which were used for the predictions are following: gender, annual income, price, body style, company, model, engine, transmission, color, and dealer region.
 
 The dataset shows that there are some possible risks/biases, which are important to mention:
 - The income feature depends on the gender, which affects customer ability to afford a specific range of the car. Statistics show that women earn 18% less on average than men in the USA. ([source](https://www.epi.org/blog/gender-pay-gap-2024/))
 - There could be a possibility when a car is bought by a parent or a partner for the person of the opposite gender. The dataset doesn't provide enough of details analyze this possibility and its impact on the prediction.
 - The limited demographic data (gender and income) could cause less accurate prediction. Such factors as age, marital status, and amount of kids can affect the trend as well.
 These potential risks can affect and limit the reliability of our conclusions.

 By leveraging Python-based visualization libraries such as Matplotlib, Seaborn, and Plotly in a Jupyter Notebook environment, we intend to present clear and actionable visual narratives that highlight key market dynamics.
 
 # Methodology
 ## Steps taken:
 - Data Cleaning: Handling missing values, removing inconsistencies, and ensuring data readiness.
 - Pre-analysis, finding correlation: Understanding patterns, correlations, and data distribution.
 - Classification analysis and validation: applying linear classification models to determine how our demographic features  affect the customers' choice during purchasing a car based on historical purchase data. Additionally, creating training and test sets and assessing model accuracy. 
 - Visualization: Creating plots to represent insights and model results.
 - Conclusion

 ## Technical Stack:

 ### Programming Language:
 - Python
 - SQL

 ### Libraries Used:
 - Numpy: matrix operations
 - Pandas: data analysis
 - Matplotlib: creating graphs and plots
 - Seaborn: enhancing matplotlib plots
 - SKLearn: classification analysis

 # Project Scope
 
 ## Description

 This project involves conducting classification analysis on customer demographic and historical purchase data to identify key factors that predict customer’s purchase preference for specific car categories (e.g. SUV, Sedan, Hatchback, Luxury, etc). Data splitting  and performance metrics are used to validate and ensure reliability of the analysis. Additionally, we will provide insights and recommendations for sales and product management strategies based on the findings.

 ## Stakeholders
 - **Sales Teams** – Optimize inventory and customer interaction strategy.
 - **Marketing Teams** – Use predictions for targeted campaigns and promotions.
 - **Product Managers** - Guide future product offerings and customer segmentation.
 - **Business Executives** – Make strategic decisions based on customer behavior analytics


 # Understanding the Data
 ## Data Exploration
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
    * Total Unique Dealers: 28
    * Total Unique Dealer Numbers: 7
    * Total Unique Dealer Regions: 7

 - ```Phone:``` Customer contact (anonymized numeric field)

 > ### SUVs were the most popular body style

 ![Chart showing the top 5 body styles sold](/img/Top%205%20Body%20Styles%20Sold.png)

 > ### Automatic transmissions dominated sales across all regions

 ![Chart showing transmission types across dealer regions](/img/Transmission%20Types%20Across%20Dealer%20Regions.png)

 > ### Top 5 brands by no of cars sold

![Top 5 brands by no of cars sold](/img/Top%205%20Brands%20Sold.png)

 > ### Car prices varied significantly based on model, region, and customer income level

![Histogram showing no of cars sold and customer income](/img/Distribution%20of%20Car%20Prices.png)

This exploration guided us in choosing the most relevant features for our later visualizations and predictive modeling, and gave us a solid understanding of the automotive sales landscape reflected in the data.


 # Data Cleaning
 After reviewing the dataset for common data quality issues—such as missing values, duplicate records, and inconsistent formatting—several adjustments were made. For example, the "Engine" column contained special characters that were removed to ensure consistency. The "Date" column was converted to a standardized format to enable time-based analysis. Additionally, numeric fields like "Price ($)" and "Annual Income" were checked to ensure they were correctly typed and free of invalid or non-numeric entries.

 Data validation of the "Gender" column revealed significant inconsistencies between gender-indicative names and the corresponding gender values. This suggests that the gender information was likely self-reported, possibly collected through an online form or survey. In such cases, individuals may have entered the gender they personally identify with, rather than one inferred by external criteria. Additionally, the dataset's source is listed as "Internet" on Kaggle, which supports the assumption that the gender values reflect user-provided, self-identified information.

The data review prior to cleaning was done in SQL and Python to ensure clean and smooth process of prediction.

 #### Tools used in SQL:
 - REPLACE
 - COUNT
 - DISTINCT
 - UNION
 - CTE
 - TEMP TABLE
 - CROSS JOIN
 - mathematical operations (AVG, MIN, MAX, etc.)

 #### Tools used in Python:
 - pd.to_datetime
 - .strftime
 - .nunique
 - .value_counts
 - .describe
 - .items
 - matplotlib.pyplot (for pre-analysis visualization)

 Results:
 - No missing values in the dataset;
 - No whitespaces or random symbols in both numeric and categorical columns;
 - Summary statistics for all columns:
   
 ![Summary statistics for all columns](/img/Summary_statistics_for_all_columns.png)

 - Summary statistics for numerical features:
   
 ![Summary statistics for numerical features](/img/Summary_statistics_for_numerical_features.png)

 # Data Analysis

 ### Why We Chose to Use a Machine Learning Model:
 Our project aims to identify key factors that influence a customer's preference for specific car categories (e.g., SUV, Sedan, Hatchback, etc.). While exploratory data analysis and visualizations helped us uncover general trends and correlations, in order to strengthen the insights, we chose to build a Classification Model and experimented with 2 different algorithms, Logistic Regression and Random Forest. Both models provide value-added insights to our project in the following ways: 

 ### Predictive Power:
 By using a classification model, we can predict which car category a potential customer is likely to purchase based on their demographic and purchase history. Random Forest model performs well in terms of accuracy making it valuable for sales and marketing teams to tailor their strategies.

 ### Interpretability:
 Logistic Regression model with its reliance on optimized feature coefficients offers clear insights into which features (e.g., income, region, engine type) are most influential in shaping customer preferences. This supports data-driven decision-making for product planning and dealership targeting.

 ### Business Value:
 The aligned outcomes from both models provide actionable insights that go beyond historical trends — enabling personalized product recommendations and segmentation strategies, which are critical for automotive businesses aiming to optimize customer engagement.
 - For the categories where the model is strong:
   - **Sales team** can focus more inventory and engage more confidently with offering of upsell options.
   - **Marketing team** can leverage strong prediction for email marketing and segmentation to achieve higher conversion rate with focused messaging.
   - **Product managers** can develop bundled features, add-ons and focused product lines.
   - **Business Executives** can optimize forecasting demand to better support dealer stocking and refine regional strategy.
- For the categories where the model is weaker:
  - All stakeholders should consider manual review or additional signals (behavioral or location-based signals) before making decisions.
 ### Portfolio Strength:
 Incorporating a machine learning model demonstrates our team’s capability to move from data analysis to predictive modeling, an important skill set for data science roles.

 By balancing accuracy with interpretability, the model enhances our project’s impact while staying aligned with our original business question and stakeholder needs.

 ### Model Performance Summary: 
 #### Similarity:  
 - Weakest Predicted Category: Hardtop
 - Moderate Predicted Category: Sedan/Hatchback

 ##### Difference:
- Logistic Regression model: 
  - Strongest Predicted Category: SUV
  - Moderate Predicted Category: Passenger
  - Accuracy: low average accuracy (39%)
  - Interpretability: strong in showing the contribution of individual features
- Random Forest model: 
  - Strongest Predicted Category: Passenger
  - Moderate Predicted Category: SUV
  - Accuracy: high average accuracy (71%)
  - Interpretability: less transparent in showing the contribution of individual features
 
 ![Car Category Popularity Actual Purchases vs Predicted Purchases Based on Random Forest Model](/img/Car_Category_Popularity_Actual_Purchases_vs_Predicted_Purchases_Based_on_Random_Forest_Model.png)

Overall, while the model is promising, its performance varies across classes, making it valuable as a decision-support tool but not yet a fully autonomous system. More data and factors should be collected and reviewed to improve the model. 

 # Conclusion
 This project applied classification modeling to predict customers' preferred car category (SUV, Sedan, etc.) based on demographic and product-related features, including gender, annual income, dealer region, engine type, transmission, price, etc. The model aimed to identify the most popular car category among various customer segments.
 
 During experimentation, two classification models were applied: Logistic Regression and Random Forest Classifier. Both models identified the same trend in car category popularity; however, their prediction accuracy differed significantly. Logistic Regression achieved an accuracy of 39%, while Random Forest Classifier reached 71%, making it the stronger model overall. Despite its lower accuracy, Logistic Regression successfully captured the overall trend in car preferences, supporting the findings of the Random Forest model. Therefore, Random Forest is the preferred choice for more accurate and reliable predictions. 

 Our recommendation for the business stakeholders is to make use of the classification model as a decision-support tool but not yet a fully autonomous system. Continuous improvement is needed in expanding dataset and cross-department data collaboration to enrich model inputs and model maturity. 

 Limitations and Considerations
  The analysis faced several data-related limitations that may affect model reliability:
 * Inconsistent Gender Data: Gender values were likely self-reported, leading to potential mismatches with demographic  assumptions.
 * Income-Gender Bias: The income feature may reflect societal disparities, such as the gender pay gap, influencing car affordability.
 * Unclear Buyer Identity: The dataset doesn’t confirm if the buyer and demographic details belong to the same person (e.g., purchases made by parents or partners).
 * Limited Demographics: Key factors like age, marital status, and family size are missing, reducing prediction accuracy.
 Based on these limitations we can suggest that broader and more detailed data would improve future model performance and could provide more insights.

 # Team Videos
 TBD

 # Credits and Source
 The data was sourced from Kaggle.\
 [Car Sales Report](https://www.kaggle.com/datasets/missionjee/car-sales-report/data)
