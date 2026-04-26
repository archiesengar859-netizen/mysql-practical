-- Create Database
CREATE DATABASE bank_db;
USE bank_db;

-- Create Table
CREATE TABLE transactions (
    trans_id INT,
    customer_name VARCHAR(50),
    account_type VARCHAR(20),
    amount INT,
    trans_type VARCHAR(10),
    trans_date DATE
);

-- Insert Data
INSERT INTO transactions VALUES
(1, 'Amit', 'Savings', 5000, 'Deposit', '2023-01-10'),
(2, 'Neha', 'Current', 7000, 'Deposit', '2023-01-12'),
(3, 'Amit', 'Savings', 2000, 'Withdraw', '2023-01-15'),
(4, 'Rahul', 'Savings', 3000, 'Deposit', '2023-02-01'),
(5, 'Neha', 'Current', 4000, 'Withdraw', '2023-02-10'),
(6, 'Priya', 'Savings', 6000, 'Deposit', '2023-02-15'),
(7, 'Rahul', 'Savings', 1500, 'Withdraw', '2023-03-01'),
(8, 'Priya', 'Savings', 2500, 'Withdraw', '2023-03-05');

-- View Data
SELECT * FROM transactions;

-- Total Deposits
SELECT SUM(amount) AS total_deposit
FROM transactions
WHERE trans_type = 'Deposit';

-- Total Withdrawals
SELECT SUM(amount) AS total_withdraw
FROM transactions
WHERE trans_type = 'Withdraw';

-- Transactions by Customer
SELECT customer_name, SUM(amount) AS total_amount
FROM transactions
GROUP BY customer_name;

-- Advanced Query (Ranking Customers)
SELECT customer_name, SUM(amount) AS total_amount,
       RANK() OVER (ORDER BY SUM(amount) DESC) AS rank_position
FROM transactions
GROUP BY customer_name;
SELECT * FROM transactions;
USE bank_db;
SELECT * FROM transactions;