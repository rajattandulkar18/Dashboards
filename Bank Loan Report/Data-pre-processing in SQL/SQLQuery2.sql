use BankLoanDatabase
select * from bank_loan_data
select count(id) as Total_Loan_Applications from bank_loan_data

select count(id) as Total_Loan_Applications from bank_loan_data 
where MONTH(issue_date) = 12 and YEAR(issue_date) = 2021