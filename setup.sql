CREATE DATABASE IF NOT EXISTS expense_tracker;
drop database if exists expense_tracker;
USE expense_tracker;

CREATE TABLE IF NOT EXISTS expenses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    category VARCHAR(100),
    description TEXT
);

INSERT INTO expenses (date, amount, category, description) VALUES
('2025-06-01', 1200.00, 'Groceries', 'Monthly groceries from supermarket'),
('2025-06-02', 200.00, 'Transport', 'Auto fare to work'),
('2025-06-03', 150.00, 'Food', 'Lunch with team'),
('2025-06-05', 350.00, 'Utilities', 'Internet bill'),
('2025-06-07', 90.00, 'Snacks', 'Evening tea and samosas'),
('2025-06-10', 500.00, 'Shopping', 'New jeans'),
('2025-06-12', 100.00, 'Health', 'Pharmacy visit'),
('2025-06-14', 250.00, 'Entertainment', 'Cinema with friends'),
('2025-06-18', 175.00, 'Transport', 'Train tickets'),
('2025-06-20', 300.00, 'Utilities', 'Mobile recharge'),

('2025-07-01', 1800.00, 'Groceries', 'Stocked up on essentials'),
('2025-07-02', 100.00, 'Food', 'Breakfast'),
('2025-07-04', 220.00, 'Transport', 'Uber to station'),
('2025-07-05', 480.00, 'Shopping', 'Shoes for office'),
('2025-07-06', 600.00, 'Utilities', 'Electricity bill'),
('2025-07-08', 95.00, 'Snacks', 'Tea and bun'),
('2025-07-09', 100.00, 'Health', 'Headache tablets'),
('2025-07-10', 700.00, 'Entertainment', 'Concert ticket'),
('2025-07-12', 150.00, 'Transport', 'Bus pass'),
('2025-07-13', 450.00, 'Food', 'Dinner with family'),

('2025-08-01', 1600.00, 'Groceries', 'Monthly supplies'),
('2025-08-02', 80.00, 'Snacks', 'Cafe coffee'),
('2025-08-03', 200.00, 'Transport', 'Office cab'),
('2025-08-04', 550.00, 'Shopping', 'Shirt and tie'),
('2025-08-06', 300.00, 'Utilities', 'Water bill'),
('2025-08-07', 170.00, 'Entertainment', 'Netflix subscription'),
('2025-08-09', 110.00, 'Health', 'Doctor visit'),
('2025-08-11', 180.00, 'Food', 'Lunch buffet'),
('2025-08-13', 60.00, 'Snacks', 'Juice and sandwich'),
('2025-08-15', 600.00, 'Transport', 'Weekend trip fuel'),

('2025-09-01', 2000.00, 'Groceries', 'Big basket order'),
('2025-09-02', 90.00, 'Snacks', 'Evening tea'),
('2025-09-03', 220.00, 'Transport', 'Metro card recharge'),
('2025-09-04', 480.00, 'Shopping', 'New bag'),
('2025-09-06', 320.00, 'Utilities', 'DTH recharge'),
('2025-09-07', 190.00, 'Health', 'Clinic consultation'),
('2025-09-09', 800.00, 'Entertainment', 'Event pass'),
('2025-09-10', 300.00, 'Food', 'Pizza and dessert'),
('2025-09-12', 75.00, 'Snacks', 'Street food'),
('2025-09-13', 650.00, 'Transport', 'Petrol'),

('2025-10-01', 1700.00, 'Groceries', 'Fresh produce and snacks'),
('2025-10-02', 200.00, 'Food', 'Lunch at hotel'),
('2025-10-03', 90.00, 'Snacks', 'Ice cream'),
('2025-10-05', 400.00, 'Utilities', 'Electricity + Internet'),
('2025-10-07', 300.00, 'Shopping', 'Office wear'),
('2025-10-08', 130.00, 'Health', 'Painkillers'),
('2025-10-09', 100.00, 'Transport', 'Train to city'),
('2025-10-10', 250.00, 'Entertainment', 'Theatre show'),
('2025-10-11', 125.00, 'Food', 'Breakfast with friend'),
('2025-10-13', 85.00, 'Snacks', 'Evening snacks');