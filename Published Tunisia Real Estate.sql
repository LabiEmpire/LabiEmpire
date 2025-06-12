
--- CREATE A MIRROR TABLE
----------------------------------------------------------------------------------------------------------------------
CREATE TABLE Tunisa_real_estate_uncleaned
(
Governorate Varchar (100),
Delegation Varchar (100),
Locality Varchar (100),
Nature Varchar (100),
Type_of_Real_Estate Varchar (100),
Surface INT,
Price INT,
Inserted_on DATE,
);

--- COPY THE CONTENT OF OUR DATASET TO THE MIRROR TABLE
----------------------------------------------------------------------------------------------------------------------
INSERT INTO Tunisa_real_estate_uncleaned
SELECT * FROM practice.dbo.[tunisia-real-estate];

---CHECK FOR NULL VALUE
----------------------------------------------------------------------------------------------------------------------
SELECT *
FROM Tunisa_real_estate_uncleaned
WHERE Surface IS NULL
SELECT *
FROM Tunisa_real_estate_uncleaned
WHERE Price IS NULL;

---CHANGE THE PRICE COLUMN DATA TYPE TO DECIMAL 
----------------------------------------------------------------------------------------------------------------------
ALTER TABLE Tunisa_real_estate_uncleaned
ALTER COLUMN Price DECIMAL(18,2);

                                  ---THE TOTAL TRANSACTIONS
----------------------------------------------------------------------------------------------------------------------
SELECT COUNT(*) AS TOTAL_TRANSACTIONS
FROM Tunisa_real_estate_uncleaned;

                                        --- THE TOTAL REVENUE
----------------------------------------------------------------------------------------------------------------------
SELECT SUM(Price) AS Total_Revenue
FROM Tunisa_real_estate_uncleaned


                                  ---THE AVERAGE REVENUE PER TRANSACTION 
----------------------------------------------------------------------------------------------------------------------
SELECT 
SUM(Price)/ COUNT(*) AS Avg_Revenue_Per_Transaction
FROM Tunisa_real_estate_uncleaned;




                                   --- THE TOP 10 GOVERNORATE BY REVENUE GENERATED
---------------------------------------------------------------------------------------------------------------------
SELECT TOP 10 Governorate, SUM(Price) AS Total_Revenue_By_Governorate
FROM Tunisa_real_estate_uncleaned
GROUP BY Governorate
ORDER BY Total_Revenue_By_Governorate DESC;


                                               -- REVENUE BY DELEGATION
----------------------------------------------------------------------------------------------------------------------
SELECT TOP 20 
    Delegation, 
    Governorate, 
    SUM(Price) AS Total_Revenue_By_Delegation
FROM Tunisa_real_estate_uncleaned
GROUP BY Delegation, Governorate
ORDER BY Total_Revenue_By_Delegation DESC;





                                   --- AVERAGE PRICE PER SQUARE METER
---------------------------------------------------------------------------------------------------------------------
SELECT 
 Governorate,
 AVG(Price / NULLIF(Surface, 0)) AS Avg_Price_per_m2
FROM Tunisa_real_estate_uncleaned
GROUP BY Governorate
ORDER BY Avg_Price_per_m2 DESC;



                                   

                                      --- REVENUE BY TYPE OF REAL ESTATE
----------------------------------------------------------------------------------------------------------------------
SELECT Type_of_Real_Estate, 
COUNT(*) AS Transaction_Count,
SUM(Price) AS Total_Revenue_By_RealEstate
FROM Tunisa_real_estate_uncleaned
GROUP BY Type_of_Real_Estate
ORDER BY Total_Revenue_By_RealEstate DESC;




                                  --- NATURE OF REAL ESTATE PREFERENCE
----------------------------------------------------------------------------------------------------------------------
SELECT 
 Nature, 
 COUNT(*) AS Transaction_Count_Nature,
 SUM(Price) AS Transaction_Amount
FROM Tunisa_real_estate_uncleaned
GROUP BY Nature
ORDER BY Transaction_Amount DESC;

                                                --- Rental vs. Sale Dynamics
----------------------------------------------------------------------------------------------------------------------
SELECT 
 Delegation,
 COUNT(CASE WHEN Nature = 'Rental' THEN 1 END) AS Rental_Count,
 COUNT(CASE WHEN Nature = 'Sale' THEN 1 END) AS Sale_Count,
 SUM(CASE WHEN Nature = 'Rental' THEN Price ELSE 0 END) AS Rental_Value,
 SUM(CASE WHEN Nature = 'Sale' THEN Price ELSE 0 END) AS Sale_Value
FROM Tunisa_real_estate_uncleaned
GROUP BY Delegation
ORDER BY Sale_Value DESC;



                                    --- YEARLY REVENUE TREND 
----------------------------------------------------------------------------------------------------------------------
SELECT 
    YEAR(Inserted_on) AS Year,
    COUNT(*) AS Transactions,
    SUM(Price) AS Total_Revenue
   FROM Tunisa_real_estate_uncleaned
GROUP BY YEAR(Inserted_on)
ORDER BY Year;
