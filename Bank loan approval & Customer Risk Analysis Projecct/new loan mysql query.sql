-- 1. Create a new database for your loan project
CREATE DATABASE loan_db;

-- 2. Tell MySQL you want to use this database
USE loan_db;
SELECT 
    loan_status, 
    ROUND(AVG(cibil_score), 0) AS average_credit_score,
    COUNT(*) AS total_loans
FROM final_loan_data_cleaned
GROUP BY loan_status;
DESCRIBE final_loan_data_cleaned;

SELECT 
    CASE 
        WHEN annual_income < 3000000 THEN 'Low Income (<30L)'
        WHEN annual_income BETWEEN 3000000 AND 7000000 THEN 'Medium Income (30L - 70L)'
        ELSE 'High Income (>70L)'
    END AS income_bracket,
    COUNT(*) AS total_applicants,
    SUM(CASE WHEN TRIM(loan_status) = 'Approved' THEN 1 ELSE 0 END) AS approved_loans,
    ROUND(
        (SUM(CASE WHEN TRIM(loan_status) = 'Approved' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 
        2
    ) AS approval_rate_percentage
FROM final_loan_data_cleaned
GROUP BY income_bracket
ORDER BY approval_rate_percentage DESC;

SELECT 
    CASE 
        WHEN cibil_score >= 750 THEN 'Low Risk (Excellent Credit 750+)'
        WHEN cibil_score BETWEEN 650 AND 749 THEN 'Medium Risk (Good Credit 650-749)'
        ELSE 'High Risk (Poor Credit <650)'
    END AS risk_segment,
    COUNT(*) AS total_applicants,
    SUM(CASE WHEN TRIM(loan_status) = 'Approved' THEN 1 ELSE 0 END) AS approved_loans,
    ROUND(
        (SUM(CASE WHEN TRIM(loan_status) = 'Approved' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 
        2
    ) AS approval_rate_percentage
FROM final_loan_data_cleaned
GROUP BY risk_segment
ORDER BY approval_rate_percentage DESC;