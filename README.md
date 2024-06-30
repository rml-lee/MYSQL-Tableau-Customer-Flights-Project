# Customer-Flights-Project

# Business Task
This dataset contains information related to a promotional campaign conducted in 2018 by an airline in order to boost program enrollment. 
We're going to extract some insights and trends about historical customer booking and flight activity, as well as analyze the results of the campaign.

Domain: Marketing and Customer Analytics. It involves aspects of promotional campaigns, customer behavior, and loyalty program analysis.

## Table of Contents
- [Data Source](#data-source)
- [Data Dictionary](#data-dictionary)
- [Data Cleaning & Exploration](#data-cleaning--Exploration)
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

Tools used:
| Python | Jupyter | Pandas | Numpy | Conda |
|--------|-------|---------|--------|-------|
| <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/cc008c2a-1e65-46fe-99aa-fcef90c84b2b" width="55" height="55"/> | <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/029ca083-0c94-40b2-96bc-5a4ccd5199bb" width="50" height="55"/> | <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/1f1bf784-7c28-491e-9c70-d78a8cfd9ec3" width="55" height="55"/> | <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/ca024f21-791d-4cc9-836a-710df995811a" width="55" height="55"/> | <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/752b8489-df2a-457b-ab2e-294b34774a78" width="55" height="55"/> |


In this section, you'll find a Jupyter Notebook that demonstrates my proficiency in data cleaning and exploration using pandas. This notebook showcases various techniques to clean and preprocess raw data, ensuring that it's ready for analysis.

You can access the Jupyter Notebook file [here](https://github.com/rml-lee/MYSQL-Tableau-Customer-Flights-Project/blob/main/Data%20Cleaning%20%26%20Exploration%20-%20Airline%20Loyalty%20Campaign%20Program%20Impact%20on%20Flights.ipynb).

# Data Schema
After cleaning the data, this is our schema that will be used throughout this project.

![customer_flight_activity](https://github.com/rml-lee/MYSQL-Tableau-Customer-Flights-Project/assets/160198611/8c12f0af-f320-4cba-a141-7c1335e2fc6e)


# Data Transformation

Tools used:
| MySQL |
| ----- |
| <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/a1f80d2c-f675-4c97-b497-f21377fd0042" width="55" height="55"/> |

The provided SQL script contains a set of questions with queries used to gather insight about this dataset using MySQL. You can access the SQL file [here](https://github.com/rml-lee/MYSQL-Tableau-Customer-Flights-Project/blob/main/Customer%20Flights%20Project.sql).


# Analysis/Findings

Tools used:
| Tableau |
| ------- |
| <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/fb9f12dc-8640-4197-b3f6-ab0ce2241bc1" width="55" height="55"/> |

To conclude, I've provided an analysis of the results from a few of the questions provided within the SQL file. This section will also include visuals for our data and discussing the implications and potential impact on the business or research problem at hand. The goal is to provide a thorough and actionable understanding of the data, guiding informed decision-making.

You can review the results here.
