--https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_case
SELECT *,
CASE WHEN  Price < 30 THEN '저렴'
WHEN Price > 60 THEN '비쌈'
ELSE '적당'
END Products
FROM Products
Where CategoryID in (3,6)
Order by CategoryID DESC;