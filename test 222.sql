create table loans(deal_id int primary key,
				  merchant_id int,
				  funded_data date,
				  industry varchar(50),
				  type varchar(50));
				  
				  
create table submissions(deal_id int primary key,
						loan_amount int,
						interest_rate int,
						rate_type varchar(50))
						
						
						
insert into loans values(1,1,'01/01/2016','Retail','New')
insert into loans values(1010,1,'6/23/2017','Retail','Renewal')
insert into loans values(1251,1,'10/01/2017','Retail','Renewal')


insert into submissions values(1,10000,8.75,'variable')
insert into submissions values(100,10000,11.37,'fixed');
insert into submissions values(1010,15000,8.25,'fixed');
insert into submissions values(1251,40000,4.75,'variable');



SELECT submissions.loan_amount, loans.deal_id , loans.merchant_id from submissions
INNER JOIN loans
ON loans.deal_id = submissions.deal_id
where loans.type = 'Renewal' 


