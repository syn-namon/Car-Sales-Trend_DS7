# Car Sales Report
Data Science Institute - Cohort 6 - Team 7 Project 
Goal: Predict which category of car a customer is likely to purchase based on demographic factors and historical purchase data.

# Members:
* ...

# Project Overview
##### Source: [Kaggle - Car Sales Report](https://www.kaggle.com/datasets/missionjee/car-sales-report/data)
##### Features: ...
This project was processed with help of classification modelling to understand the impact of demographic factors on the popularity of a specific car model based on historical purchase data. The features which were used for the predictions are following: gender, annual income.
Our primary stakeholders include marketing teams, commercial teams, and business strategists, as they are responsible for the promoting and sales processes and growth of the business.
While dataset used for analysis has big enough population (3022 unique entries), there are some possible risks/biases that are important to mention:
 - The income feature depends on the gender, which affects customer ability to afford a specific range of the car. (adding the source for the statistics)
 - There could be a possibility when a car is bought by a parent or a partner for the person of the opposite gender. The dataset doesn't provide enough of details to analyze this possibility and its impact on the prediction.
 - The limited demographic data (gender and income) could cause less accurate prediction. Such factors as age, marriage status, and amount of kids can affect the trend as well.

 To address our business question, we will analyze key factors such as gender and income to identify their impact on the customers' choice of car's model and validate the results by splitting the dataset into training and validation portions.


 # Methodology
 ### Steps taken:
 - Data Cleaning: Handling missing values, removing inconsistencies, and ensuring data readiness.
 - Pre-analysis, finding correlation: Understanding patterns, correlations, and data distribution.
 - Classification analysis and validation: applying linear classification models to determine how our demographic features affect the customers' choice during purchasing a car. Additionally, creating training and test sets, assessing model accuracy. 
 - Visualization: Creating plots to represent insights and model results.
 - Conclusion

 ### Technical Stack:

#### Programming Language:
 - Python
 - SQL

#### Libraries Used:
- Numpy: matrix operations
- Pandas: data analysis
- Matplotlib: creating graphs and plots
- Seaborn: enhancing matplotlib plots
- SKLearn: classification analysis
