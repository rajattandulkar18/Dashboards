use BankLoanDatabase
select * from bank_loan_data
--avg int rate
select avg(int_rate) as Avg_Interest_Rate from bank_loan_data
--0.12--//
select round(avg(int_rate),4)  * 100as Avg_Interest_Rate from bank_loan_data

select round(avg(int_rate),4)  * 100as PMTD_Avg_Interest_Rate from bank_loan_data
where month(issue_date) = 11 and year(issue_date) = 2021
--11.94--



