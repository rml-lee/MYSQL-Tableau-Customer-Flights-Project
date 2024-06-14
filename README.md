# Customer-Flights-Project

# Briefing
This dataset contains information related to a promotional campaign conducted in 2018 by an airline to boost program enrollment. 
We'll examine the historical customer booking and flight activity, as well as the results of the campaign.

Domain: Marketing and Customer Analytics. It involves aspects of promotional campaigns, customer behavior, and loyalty program analysis.

Original Dataset: Airline Loyalty Campaign Program Impact on Flights - [Kaggle](https://www.kaggle.com/datasets/agungpambudi/airline-loyalty-campaign-program-impact-on-flights?select=Customer+Flight+Activity.csv)


# Data Schema
![customer_flight_activity](https://github.com/rml-lee/MYSQL-Tableau-Customer-Flights-Project/assets/160198611/8c12f0af-f320-4cba-a141-7c1335e2fc6e)



# Data Dictionary

## Table of Contents
- [Customer Flight Activity](#customer-flight-activity)
- [Customer Loyalty History](#customer-loyalty-history)

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




# Summary/Findings
