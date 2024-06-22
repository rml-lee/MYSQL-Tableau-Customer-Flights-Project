# Customer-Flights-Project

# Business Task
This dataset contains information related to a promotional campaign conducted in 2018 by an airline to boost program enrollment. 
We'll examine the historical customer booking and flight activity, as well as the results of the campaign.

Domain: Marketing and Customer Analytics. It involves aspects of promotional campaigns, customer behavior, and loyalty program analysis.

## Table of Contents
- [Data Source](#data-source)
- [Data Dictionary](#data-dictionary)
- [Data Cleaning & Exploration](#data-cleaning-&-Exploration)
- [Data Schema](#data-schema)
- [Data Transformation](#data-transformation)
- [Analysis/Findings](#analysisfindings)

# Data Source
Airline Loyalty Campaign Program Impact on Flights - [Kaggle](https://www.kaggle.com/datasets/agungpambudi/airline-loyalty-campaign-program-impact-on-flights?select=Customer+Flight+Activity.csv)

# Data Dictionary

## Customer Flight Activity

| Field                        | Description                                                         |
|------------------------------|---------------------------------------------------------------------|
| Loyalty Number               | Customer's unique loyalty number                                    |
| Year                         | Year of the period                                                  |
| Month                        | Month of the period                                                 |
| Flights Booked               | Number of flights booked for member only in the period              |
| Flights with Companions      | Number of flights booked with additional passengers in the period   |
| Total Flights                | Sum of Flights Booked and Flights with Companions                   |
| Distance                     | Flight distance traveled in the period (km)                         |
| Points Accumulated           | Loyalty points accumulated in the period                            |
| Points Redeemed              | Loyalty points redeemed in the period                               |
| Dollar Cost Points Redeemed  | Dollar equivalent for points redeemed in the period in CDN          |

## Customer Loyalty History

| Field                        | Description                                                         |
|------------------------------|---------------------------------------------------------------------|
| Loyalty Number               | Customer's unique loyalty number                                    |
| Country                      | Country of residence                                                |
| Province                     | Province of residence                                               |
| City                         | City of residence                                                   |
| Postal Code                  | Postal code of residence                                            |
| Gender                       | Gender                                                              |
| Education                    | Highest education level (High school or lower > College > Bachelor > Master > Doctor) |
| Salary                       | Annual income                                                       |
| Marital Status               | Marital status (Single, Married, Divorced)                          |
| Loyalty Card                 | Loyalty card status (Star > Nova > Aurora)                          |
| CLV                          | Customer lifetime value - total invoice value for all flights ever booked by member |
| Enrollment Type              | Enrollment type (Standard / 2018 Promotion)                         |
| Enrollment Year              | Year Member enrolled in membership program                          |
| Enrollment Month             | Month Member enrolled in membership program                         |
| Cancellation Year            | Year Member cancelled their membership                              |
| Cancellation Month           | Month Member cancelled their membership                             |

# Data Cleaning & Exploration
Effective data analysis begins with exploring the data, gathering insights, and ensuring the data is clean and well-structured. To facilitate this process, i've provided a Jupyter Notebook file that performs the necessary data cleaning operations. By running this script, the dataset is prepared for accurate and reliable analysis.

You can access the notebook file for Data Cleaning & Exploration [here](https://github.com/rml-lee/MYSQL-Tableau-Customer-Flights-Project/blob/main/Data%20Cleaning%20%26%20Exploration%20-%20Airline%20Loyalty%20Campaign%20Program%20Impact%20on%20Flights.ipynb).

# Data Schema
After cleaning the data, this is our schema that will be used throughout this project.

![customer_flight_activity](https://github.com/rml-lee/MYSQL-Tableau-Customer-Flights-Project/assets/160198611/8c12f0af-f320-4cba-a141-7c1335e2fc6e)


# Data Transformation
The provided SQL script contains a set of questions with queries used to gather insight about this dataset using MYSQL. You can access the SQL file [here](https://github.com/rml-lee/MYSQL-Tableau-Customer-Flights-Project/blob/main/Customer%20Flights%20Project.sql).


# Analysis/Findings
