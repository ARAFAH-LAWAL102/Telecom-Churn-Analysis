-/*==========================================================================================
  TELECOM CHURN ANALYSIS – EXPLORATORY DATA ANALYSIS (EDA)
============================================================================================

  Author   : Arafah Lawal
  File     : 02_eda_queries.sql
  Purpose  : To answer key business questions by exploring the Telecom customer churn data.
             The goal is to identify why customers churn and how to reduce it.
             
  Dataset  : telecom_churn (cleaned via view `v_cleaned_churn`)
  Tools    : SQL Server (ssms)

==========================================================================================*/
-- 1. Overall Churn Distribution
SELECT 
  churn_status,
  COUNT(*) AS total_customers,
  ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM v_cleaned_churn), 2) AS percentage
FROM v_cleaned_churn
GROUP BY churn_status;

-- 2. Churn vs Data Plan
SELECT 
  data_plan_status,
  churn_status,
  COUNT(*) AS total_customers
FROM v_cleaned_churn
GROUP BY data_plan_status, churn_status
ORDER BY data_plan_status, churn_status;

--3.Churn vs Customer service calls
SELECT 
  service_calls_group,
  churn_status,
  COUNT(*) AS total_customers
FROM v_cleaned_churn
GROUP BY service_calls_group, churn_status
ORDER BY service_calls_group, churn_status;

--4.Churn vs Contract_renewal
SELECT 
  contract_status,
  churn_status,
  COUNT(*) AS total_customers
FROM v_cleaned_churn
GROUP BY contract_status, churn_status
ORDER BY contract_status, churn_status;

--5.Churn Vs Active Account weeks
SELECT 
  tenure_group,
  churn_status,
  COUNT(*) AS total_customers
FROM v_cleaned_churn
GROUP BY tenure_group, churn_status
ORDER BY tenure_group, churn_status;

--6.Average Monthly cahrge by churn
SELECT 
  churn_status,
  ROUND(AVG(MonthlyCharge), 2) AS avg_monthly_charge
FROM v_cleaned_churn
GROUP BY churn_status;

--7.Average Roam mins and Overage fee vs Churn
SELECT 
  churn_status,
  ROUND(AVG(RoamMins), 2) AS avg_roam_mins,
  ROUND(AVG(OverageFee), 2) AS avg_overage_fee
FROM v_cleaned_churn
GROUP BY churn_status;

--8.Average Data Usage by Churn
SELECT 
  churn_status,
  ROUND(AVG(DataUsage), 2) AS avg_data_usage
FROM v_cleaned_churn
GROUP BY churn_status;

--9.Day mins and Day calls by Churn
SELECT 
  churn_status,
  ROUND(AVG(DayMins), 2) AS avg_day_mins,
  ROUND(AVG(DayCalls), 2) AS avg_day_calls
FROM v_cleaned_churn
GROUP BY churn_status;

--10.Day mins vs Monthly charge by Churn
SELECT 
  churn_status,
  ROUND(AVG(DayMins), 1) AS avg_day_mins,
  ROUND(AVG(MonthlyCharge), 2) AS avg_monthly_charge
FROM v_cleaned_churn
GROUP BY churn_status;





