USE [BankLoan DB]
SELECT * FROM bank_loan_data
SELECT COUNT(id) AS Total_loan_Applications from bank_loan_data

SELECT COUNT(id) AS MTD_Total_loan_Applications from bank_loan_data
WHERE MONTH(issue_date)=12 AND YEAR(issue_date)=2021;

SELECT COUNT(id) AS PMTD_Total_loan_Applications from bank_loan_data
WHERE MONTH(issue_date)=11 AND YEAR(issue_date)=2021;

SELECT SUM(loan_amount) AS Total_Funded_Amount from bank_loan_data

SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount from bank_loan_data
WHERE MONTH(issue_date)=12 AND YEAR(issue_date)=2021;

SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount from bank_loan_data
WHERE MONTH(issue_date)=12 AND YEAR(issue_date)=2021;

SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount from bank_loan_data
WHERE MONTH(issue_date)=11 AND YEAR(issue_date)=2021;

SELECT SUM(TOTAL_PAYMENT) as total_payment_received FROM bank_loan_data

SELECT SUM(TOTAL_PAYMENT) as MTD_total_payment_received FROM bank_loan_data
WHERE MONTH(issue_date)=12 AND YEAR(issue_date)=2021;

SELECT SUM(TOTAL_PAYMENT) as PMTD_total_payment_received FROM bank_loan_data
WHERE MONTH(issue_date)=11 AND YEAR(issue_date)=2021;

SELECT ROUND(AVG(int_rate)*100 ,2) as Avg_Interest_Rate from bank_loan_data

SELECT ROUND(AVG(int_rate)*100 ,2) as MTD_Avg_Interest_Rate from bank_loan_data
WHERE MONTH(issue_date)=12 AND YEAR(issue_date)=2021;

SELECT ROUND(AVG(int_rate)*100 ,2) as PMTD_Avg_Interest_Rate from bank_loan_data
WHERE MONTH(issue_date)=11 AND YEAR(issue_date)=2021;

SELECT ROUND(AVG(dti)*100 ,2) as Avg_DTI from bank_loan_data

SELECT ROUND(AVG(dti)*100 ,2) as MTD_Avg_DTI from bank_loan_data
WHERE MONTH(issue_date)=12 AND YEAR(issue_date)=2021;

SELECT ROUND(AVG(dti)*100 ,2) as PMTD_Avg_DTI from bank_loan_data
WHERE MONTH(issue_date)=11 AND YEAR(issue_date)=2021;

SELECT 
(COUNT(CASE WHEN loan_status='Fully Paid' or loan_status='current' THEN id END)*100)/
COUNT(id) AS Good_loan_Percentage from bank_loan_data

SELECT Count(id) as Good_loan_applications from bank_loan_data
WHERE loan_status='fully paid' or loan_status='current'

SELECT Sum(loan_amount) as Good_loan_funded_amount from bank_loan_data
WHERE loan_status='fully paid' or loan_status='current'

SELECT Sum(total_payment) as Good_loan_total_received_amount from bank_loan_data
WHERE loan_status='fully paid' or loan_status='current'

SELECT 
Round((COUNT(CASE WHEN loan_status='Charged off' THEN id END)*100.0)/
COUNT(id),2) AS Bad_loan_Percentage from bank_loan_data

SELECT count(id) as bank_bad_loan_applications from bank_loan_data
where loan_status='Charged off'

SELECT Sum(loan_amount) as Bad_loan_funded_amount from bank_loan_data
WHERE loan_status='Charged off'

SELECT Sum(total_payment) as Bad_loan_total_received_amount from bank_loan_data
WHERE loan_status='Charged off'


SELECT
        loan_status,
        COUNT(id) AS LoanCount,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
        bank_loan_data
    GROUP BY
        loan_status

 
 SELECT 
        MONTH(issue_date) as Month_Number,
        DATENAME(MONTH,issue_date)as Month_Name,
        COUNT(id) AS Total_loan_applications,
        SUM(loan_amount) AS Total_Funded_Amount,
        SUM(total_payment) as Total_Received_Amount
        FROM bank_loan_data
        GROUP BY MONTH( issue_date),DATENAME(MONTH , issue_date)
        ORDER BY Month_Number;

SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY address_state
ORDER BY COUNT(ID) DESC;

SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY term
ORDER BY term

SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length

SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY purpose
ORDER BY Count(id) DESC


SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY count(id) DESC
