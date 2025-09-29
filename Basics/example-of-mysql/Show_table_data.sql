-- Ye query sirf FirstName column dikhayegi
SELECT FirstName FROM Student_information;

-- Ye query sirf EmailID column dikhayegi
SELECT EmailID FROM Student_information;

-- Ye query poora table ka data (saare columns aur rows) dikhayegi
SELECT * FROM Student_information;

-- Sirf students ke FirstName aur LastName dikhana
SELECT FirstName, LastName FROM Student_information;

-- Sirf unique LastName dekhna (duplicate remove ho jayenge)
SELECT DISTINCT LastName FROM Student_information;

-- Sirf un students ko dikhana jinke LastName 'Sharma' hai
SELECT * FROM Student_information
WHERE LastName = 'Sharma';

-- Jinke phone number +91-98 se start hote hain
SELECT * FROM Student_information
WHERE PhoneNumber LIKE '+91-98%';

-- Jinka FirstName 'Aarav' nahi hai
SELECT * FROM Student_information
WHERE FirstName <> 'Aarav';

-- Students ko LastName ke hisaab se A to Z sort karna
SELECT * FROM Student_information
ORDER BY LastName ASC;

-- Students ko FirstName ke hisaab se Z to A sort karna
SELECT * FROM Student_information
ORDER BY FirstName DESC;

-- Sirf pehle 5 records dikhana
SELECT * FROM Student_information
LIMIT 5;

-- 3rd se lekar 5th record tak dikhana
SELECT * FROM Student_information
LIMIT 2, 3;   -- (2 = skip first 2, 3 = next 3 records)

-- Total students kitne hain
SELECT COUNT(*) AS Total_Students FROM Student_information;

-- Har LastName ke students ki ginti
SELECT LastName, COUNT(*) AS Count
FROM Student_information
GROUP BY LastName;

