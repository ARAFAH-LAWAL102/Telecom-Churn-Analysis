CREATE VIEW v_cleaned_churn AS
SELECT 
  -- Readable churn status
  CASE WHEN Churn = 1 THEN 'Churned' ELSE 'Stayed' END AS churn_status,
  
  -- Binary to text
  CASE WHEN DataPlan = 1 THEN 'Yes' ELSE 'No' END AS data_plan_status,
  CASE WHEN ContractRenewal = 1 THEN 'Renewed' ELSE 'Not Renewed' END AS contract_status,

  -- Grouped customer service calls
  CASE 
    WHEN CustServCalls <= 2 THEN 'Low (0–2)'
    WHEN CustServCalls <= 4 THEN 'Medium (3–4)'
    ELSE 'High (5–9)'
  END AS service_calls_group,

  -- Grouped tenure
  CASE 
    WHEN AccountWeeks <= 60 THEN 'New'
    WHEN AccountWeeks <= 120 THEN 'Mid'
    WHEN AccountWeeks <= 180 THEN 'Loyal'
    ELSE 'Very Loyal'
  END AS tenure_group,
  AccountWeeks,
  CustServCalls,
  DataUsage,
  MonthlyCharge,
  OverageFee,
  RoamMins,
  DayMins,
  DayCalls
FROM telecom_churn;
  