-- FULL JOIN on Multiple Tables
-- In this example, we perform a FULL JOIN across the Books, Authors, and Publishers tables to combine all related records into a single result set.

SELECT 
    b.BOOK_ID, 
    b.BOOK_NAME, 
    a.AUTHOR_NAME, 
    p.PUBLISHER_NAME 
FROM Books b
FULL JOIN Authors a ON b.BOOK_ID = a.AUTHOR_ID
FULL JOIN Publishers p ON b.BOOK_ID = p.PUBLISHER_ID;

-- FULL JOIN with WHERE Clause
-- Now, we want to filter the results from the above join based on a specific condition. We will select only books that have "Sharma" in the book name.

SELECT 
    b.BOOK_ID, 
    b.BOOK_NAME, 
    a.AUTHOR_NAME, 
    p.PUBLISHER_NAME 
FROM Books b
FULL JOIN Authors a ON b.BOOK_ID = a.AUTHOR_ID
FULL JOIN Publishers p ON b.BOOK_ID = p.PUBLISHER_ID
WHERE b.BOOK_NAME LIKE '%Sharma%';
