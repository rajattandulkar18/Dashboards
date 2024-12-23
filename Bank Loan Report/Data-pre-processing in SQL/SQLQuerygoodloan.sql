use BankLoanDatabase

--Good_Loan_Recieved_Amount--
select sum(total_payment) as Good_Loan_Recieved_Amount from bank_loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'
--435786170--

--Good_Loan_Funded_Amount--
select sum(loan_amount) as Good_Loan_Funded_Amount from bank_loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'
--370224850--

--Good_Loan_Applications--
select count(id) as Good_Loan_Applications from bank_loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'
--33243--

--Good_Loan_Percentage--
select
     (count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id
	 end) * 100.0)/
	        count(id) as Good_Loan_Percentage
from bank_loan_data


