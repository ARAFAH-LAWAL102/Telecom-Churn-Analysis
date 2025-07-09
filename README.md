# Telecom-Churn-Analysis
# Project Background
The telecom company has been operating for several years, offering voice, data, and roaming services across various regions. With a growing customer base and rising competition, the company faces increasing customer churn. This project aims to identify factors contributing to churn, using SQL-based data cleaning and EDA, and translate these insights into a Power BI dashboard for strategic decision-making.

# Insights and Recommendations are provided on the following key areas:

1) Churn Rate and Customer Behavior

2) Contract Renewal & Tenure Segmentation

3) Data Plan, Charges & Usage Metrics

4) Service Call Patterns & Roaming Fees

The SQL queries used to inspect and clean the data can be found here: SQL Data Cleaning

SQL queries for business questions: EDA SQL Queries
[The dataset] (https://github.com/ARAFAH-LAWAL102/Telecom-Churn-Analysis/blob/main/telecom_churn.csv)

The Power BI Dashboard used to visualize churn insights: Dashboard Link

# Data Structure 

The cleaned dataset includes 3,333 customer records with the following columns:

Churn: 1 if customer left, 0 if retained

AccountWeeks: Tenure in weeks

ContractRenewal: 1 = renewed, 0 = not renewed

DataPlan: 1 = yes, 0 = no

DataUsage: Monthly data in GB

CustServCalls: Number of service calls

DayMins, DayCalls: Avg daytime minutes/calls

MonthlyCharge: Monthly bill

OverageFee: Last 12-month peak overage

RoamMins: Avg monthly roaming minutes

Initial SQL steps included transforming binary columns to readable labels, binning tenure into ranges, and checking missing/null values.

# Executive Summary

The analysis reveals a churn rate of 14.5%, with the majority of churners having no data plan, multiple service calls, and higher monthly charges and overage fees. Churn was more likely among users who did not renew their contracts and those with 200+ active weeks. Roaming usage was also slightly higher among churners. These insights empower the business to reduce churn by targeting these key segments.
# PREVIEW



# Insights Deep Dive

Category 1: Churn & Contract Behavior

Churn rate = 14.5% of 3,333 customers

Most churners had not renewed their contracts

Customers in the 200+ weeks range churned more than those with longer tenure

Category 2: Data Plan & Usage

83% of churners did not have a data plan

Data users had lower churn despite higher average usage

Churners had slightly higher average monthly charges ($59)

Category 3: Call Center & Roaming Metrics

Customers with 5+ service calls had a 61% churn rate in that group

Roaming minutes were higher among churners (10.7 vs 10.2 mins/month)

Category 4: Charges & Fees

Churners paid more in overage fees (avg $10.6)

Monthly charges correlated with churn: higher bills increased likelihood to leave
# RECOMMENDATION
1. Promote Data Plans

From Insight: 83% of churners did not have a data plan.
Action: Design promotional offers for customers without a data plan to increase engagement and reduce churn risk.

2. Improve Support Services

From Insight: 61% churn rate among customers with 5+ service calls.
Action: Streamline customer service operations, introduce callback options, and track support satisfaction to lower churn.


3. Offer Loyalty Incentives

From Insight: Most churners fall in the 200+ weeks tenure range.
Action: Create loyalty programs targeting mid-tenure customers (50–150 weeks) to encourage retention.

4. Optimize Pricing and Fee Structures

From Insight: Churners had higher monthly charges ($60) and overage fees ($10.6).
Action: Introduce tiered billing plans, waive initial overage charges, and offer fee transparency in customer onboarding.


5. Monitor Roaming Trends

From Insight: Roaming users churn more (10.7 vs 10.2 mins/month).
Action: Target roaming users with customized roaming packages and proactive usage alerts.



