use BankLoanDatabase
select * from bank_loan_data

select round(avg(dti),6) * 100 as Avg_DTI from bank_loan_data
--13.33--//

select round(avg(dti),4) * 100 as MTD_Avg_DTI from bank_loan_data
where month(issue_date) = 12 and year(issue_date) = 2021
--13.67--
--pmtd--
select round(avg(dti),4) * 100 as PMTD_Avg_DTI from bank_loan_data
where month(issue_date) = 11 and year(issue_date) = 2021
--13.3--
