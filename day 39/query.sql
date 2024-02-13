Find the top 2 accounts with the maximum number of unique patients on a monthly basis in MYSQL.

Note: Prefer the account if with the least value in case of same number of unique patients

select 
    account_id,
    MONTH(date) AS month,
    COUNT(DISTINCT patient_id) AS unique_patients_count
FROM
    patient_logs
GROUP BY
    account_id, MONTH(date)
ORDER BY
    unique_patients_count DESC, account_id ASC
LIMIT 2;
