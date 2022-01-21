

-------------------------------------------------------------------
-- WARM UPS & REFERENCE                                          --
-------------------------------------------------------------------

-- 1. View entire table:
   SELECT * FROM products;

-- 2. Only 10 rows from table:
--    In PostgreSQL:
   SELECT * FROM products LIMIT 10;

--    In SQL Server:
--    SELECT TOP(10) * FROM products;

-- 3. Only 2 columns from table:
   SELECT title, price FROM products;

-- 4. Order by a column:
   SELECT * FROM products ORDER BY price;

-- 5. Order by a column descending:
   SELECT * FROM products ORDER BY price DESC;

-- 6. Distinct values in column:
   SELECT DISTINCT price FROM products;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Write a SQL query to view the entire 'users' table.
SELECT *  FROM users;

-- 2. View the first 5 rows of the 'users' table. 
SELECT * From users
LIMIT 5;

-- 3. View the 'users' table ordered by when the users was created.
SELECT * From users
Order by created_at;


-- 4. Write a SQL query to view the entire 'purchases' table.
SELECT *  FROM purchases;

-- 5. View the name and state columns of the 'purchases' table.
SELECT name, state  FROM purchases;

-- 6. Use LIMIT and ORDER BY to see the 10 most recent purchases. 
SELECT * FROM purchases
Order by created_at desc
LIMIT 10;
-- 7. Use a DISTINCT query to see which states people have made purchases from. 
SELECT DISTINCT state FROM purchases;

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. You can use DISTINCT on multiple columns as well.
--    Use DISTINCT on the purchases table to see which states each user has made orders from.
SELECT DISTINCT state, user_id  FROM purchases;

-- 2. Modify the query above to ORDER BY user_id, so you can see the data user-by-user.
SELECT DISTINCT state, user_id  FROM purchases
order by user_id
