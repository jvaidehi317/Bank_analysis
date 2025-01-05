create database Bank_analytics;
use Bank_analytics;
select * from bank_proj;

###1st KPi  Loan amount vs installment
select grade,sum(loan_amnt) as Total_loan, sum(installment) as Installments_paid
from bank_proj
group by grade
order by grade;

###2nd KPI Loan status
select loan_status,sum(loan_amnt)
from bank_proj
group by loan_status;

###3rd KPI Home ownership vs last payment amount
select home_ownership, sum(last_pymnt_amnt) as last_payment
from bank_proj
group by home_ownership;

###4th KPI Varification status vs recoveries
select verification_status, sum(total_amnt/recoveries)*100
from bank_proj
group by verification_status;

select * from bank_proj;

###5th KPI statewise recoveries
select addr_state, sum(recoveries)
from bank_proj
group by addr_state
order by addr_state;

