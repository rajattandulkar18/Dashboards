use BankLoanDatabase
select * from bank_loan_data
--total loan applications
select count(id) as Total_Loan_Applications from bank_loan_data
--mtd--
select count(id) as MTD_Total_Loan_Applications from bank_loan_data 
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021
--pmtd--
select count(id) as PMTD_Total_Loan_Applications from bank_loan_data 
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021
--(MTD-PMTD)/PMTD

--total funded amount--
--mtd--
select sum(loan_amount) as MTD_Total_Funded_Amount from bank_loan_data 
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021
--pmtd--
select sum(loan_amount) as PMTD_Total_Funded_Amount from bank_loan_data 
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021
--total amount recieved--
--mtdd--
select sum(total_payment) as MTD_Total_Amount_Recieved from bank_loan_data
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021
--pmtd--
select sum(total_payment) as PMTD_Total_Amount_Recieved from bank_loan_data
where MONTH(issue_date) = 11 and YEAR(issue_date) = 2021


select avg(int_rate) from bank_loan_data
