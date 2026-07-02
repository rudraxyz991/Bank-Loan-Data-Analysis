# Bank Loan Data Analysis 🏦

## Project Overview
This project involves a comprehensive analysis of bank loan data to monitor and assess lending activities. By leveraging **SQL** for data extraction and manipulation, and **Power BI** for dynamic visualization, this project provides actionable insights into loan applications, funding amounts, and borrower repayment behaviors. 

## Problem Statement
The bank requires a robust methodology to track loan issuing metrics to make informed lending decisions. The goal of this analysis is to evaluate historical loan data, identify trends in loan categories (e.g., Good Loans vs. Bad Loans), and measure key performance indicators (KPIs) such as Total Funded Amount, Average Interest Rate, and DTI (Debt-to-Income) ratios.

## Tools Used
* **Database:** Microsoft SQL Server / MySQL *(Update to the specific SQL dialect you used)*
* **Data Visualization:** Power BI
* **Data Source:** `financial_loan.csv` (Internal Bank Data)

## Key Performance Indicators (KPIs) Analysed
Through SQL queries, the following metrics were calculated:
* **Total Loan Applications:** Tracking overall demand MTD (Month-to-Date) and PMTD (Previous Month-to-Date).
* **Total Funded Amount:** Monitoring the total volume of disbursed funds.
* **Total Amount Received:** Assessing the cash flow returned from borrowers.
* **Average Interest Rate & DTI:** Evaluating the profitability and risk associated with the loan portfolio.

## Dashboard Highlights
*(Note: Once you upload your images to the Dashboards folder, you can display them here!)*

The Power BI dashboard provides an interactive interface to explore:
1.  **Summary View:** High-level KPIs and overall loan status (Good vs. Bad).
2.  **Overview View:** Geographic distributions (State-wise analysis), Purpose of loans, and Term lengths.
3.  **Details View:** Granular borrower information and employee length trends.



## Repository Structure
* `Dataset/`: Contains the raw CSV data file.
* `SQL_Queries/`: Contains the `.sql` scripts used to clean, aggregate, and analyze the data.
* `Dashboards/`: Contains the Power BI file (`.pbix`) and static screenshots of the visualizations.

## How to Use
1. Clone the repository.
2. Load the `financial_loan.csv` into your preferred SQL database.
3. Execute the scripts in the `SQL_Queries` folder to generate the KPI tables.
4. Open the `.pbix` file in Power BI Desktop to interact with the visualizations.
