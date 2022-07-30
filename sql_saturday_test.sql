create database sql_test;
use sql_test;
#question 6
select purch_amt from orders order by purch_amt desc
 limit 1
 offset 4;
 #question 1
SELECT Customer.cust_name AS "Customer",
Customer.grade AS "Grade",Orders.ord_no AS "Order No."
FROM Orders, Salesman, Customer
WHERE Orders.customer_id = Customer.custemor_id
AND orders.salesman_id = salesman.salesman_id
AND Salesman.city IS NOT NULL
AND Customer.grade IS NOT NULL;
#question 2
SELECT ord_no, purch_amt, ord_date, salesman_id
FROM orders 
WHERE salesman_id IN(
SELECT salesman_id 
FROM salesman
WHERE commision = (
SELECT MAX(commision) 
FROM salesman));
#question 3
SELECT ord_no, purch_amt, ord_date, salesman_id
FROM orders
WHERE salesman_id IN (
SELECT salesman_id
FROM salesman WHERE city='nagpur');
#question 4
SELECT ord_date, SUM(purch_amt), 
SUM(purch_amt)*.15 
FROM orders 
GROUP BY ord_date 
ORDER BY ord_date;
#question 5
SELECT ord_no, purch_amt, ord_date, salesman_id FROM orders
WHERE purch_amt >(SELECT  AVG(purch_amt) FROM orders);
#question 8
Select customer_id , ba.account_number,
Case when ifnull(balance_amount,0) = 0 then   Transaction_amount else balance_amount end  as balance_amount
from Bank_Account_Details ba  
inner join
bank_account_transaction bat
on ba.account_number = bat.account_number
and account_type = "Credit Card";
#question 9
Select bank_account_details.account_number, balance_amount, transaction_amount
from bank_account_details inner join bank_account_transaction on bank_account_details.account_number = bank_account_transaction.account_number
And (date_format(Transaction_Date , '%Y-%m')  between "2020-03" and "2020-04");
#Question 10
Select ba.Customer_id, ba.Account_Number, Balance_amount, Transaction_amount, Transaction_Date
from Bank_Account_Details ba  
Left join bank_account_transaction bat
on ba.account_number = bat.account_number
And NOT ( date_format(Transaction_Date , '%Y-%m') = "2020-03" );
#question 7
#Entity:
# An entity can be a real-world object, either tangible or intangible,
#that can be easily identifiable. For example, in a college database,
#students, professors, workers, departments, and projects can be
#referred to as entities. Each entity has some associated properties
#that provide it an identity.
#Relationships:
#Relations or links between entities that have something to do with each other.
#For example - The employees table in a company's database can be associated with
#the salary table in the same database.