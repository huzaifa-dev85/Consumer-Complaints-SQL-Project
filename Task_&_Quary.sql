-- Task 1: Complaints received and sent to the company on the same day
SELECT COUNT(*) AS same_day_complaints
FROM complaints
WHERE date_received = date_sent_to_company;

-- Task 2: Complaints received in New York
SELECT *
FROM complaints
WHERE state_name = 'NY';

-- Task 3: Complaints received in New York and California
SELECT *
FROM complaints
WHERE state_name IN ('NY', 'CA');

-- Task 4: All rows with the word "Credit" in the Product field
SELECT *
FROM complaints
WHERE product_name LIKE '%Credit%';

-- Task 5: All rows with the word "Late" in the Issue field
SELECT *
FROM complaints
WHERE issue LIKE '%Late%';