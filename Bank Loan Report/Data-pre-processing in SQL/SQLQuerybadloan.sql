use BankLoanDatabase
--Bad_Loan_Percentage--
select
     (count(case when loan_status = 'Charged Off' then id
	 end) * 100.0)/
	        count(id) as Bad_Loan_Percentage
from bank_loan_data
--13.824657818332--

--Bad_Loan_Applications--
select count(id) as Bad_Loan_Applications from bank_loan_data
where loan_status = 'Charged Off'
--5333--

--Bad_Loan_Recieved_Amount--
select sum(total_payment) as Bad_Loan_Recieved_Amount from bank_loan_data
where loan_status = 'Charged Off'
--37284763--

--Bad_Loan_Funded_Amount--
select sum(loan_amount) as Bad_Loan_Funded_Amount from bank_loan_data
where loan_status = 'Charged Off'
