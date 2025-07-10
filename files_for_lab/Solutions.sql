use bank;
show tables;

SELECT client_id
FROM client
WHERE district_id = 1
LIMIT 5;

SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

SELECT amount from loan
ORDER BY amount ASC
LIMIT 3;

SELECT DISTINCT status from loan
ORDER BY status ASC;

SELECT loan_id
FROM loan
ORDER BY amount DESC
LIMIT 1;

-- What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount

select 
	account_id,
    amount
from loan
ORDER BY account_id ASC
LIMIT 5;

-- What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?
SELECT
	account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC;

-- What are the unique values of k_symbol in the order table?
-- Note: There shouldn't be a table name order, since order is reserved from the ORDER BY clause. You have to use backticks to escape the order table name.
SELECT DISTINCT k_symbol
FROM `order`;

SELECT order_id
FROM `order`
WHERE account_id = 34;

SELECT DISTINCT account_id
FROM `order`
WHERE order_id > 29539 and order_id < 29561;

SELECT DISTINCT amount
FROM `order`
WHERE account_to = 30067122;

SELECT 
	trans_id,
	date,
	type,
    amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

SELECT
	district_id,
	COUNT(client_id) as number_of_clients
FROM client
WHERE district_id < 10
GROUP BY
	district_id
ORDer BY district_id ASC;

select
type,
count(card_id) as most_frequent_card
FROM card
GROUP BY type
ORDER BY most_frequent_card DESC;

select account_id,
sum(amount) as total_amount
from loan
group by account_id
order by total_amount desc
limit 10;

select date,
	count(loan_id) as loans_by_date
from loan
WHERE date < 930907
group by date
ORDER BY date DESC;

SELECT
    date,
    duration,
    COUNT(loan_id) AS number_of_loans
FROM
    loan
WHERE
    date >= 19971201 AND date < 19980101
GROUP BY
    date,
    duration
ORDER BY
    date ASC,
    duration ASC;
    
SELECT
    date,
    duration,
    COUNT(loan_id) AS number_of_loans
FROM
    loan
WHERE
    date >= 19971201 AND date < 19980101
GROUP BY
    date,
    duration
ORDER BY
    date ASC,
    duration ASC;