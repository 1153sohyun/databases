-- https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_groupby_orderby
-- categoryID 별로 sum, count, avg price 보기, Products 테이블 대상
SELECT sum(Price), count(Price), avg(Price), CategoryID FROM Products
group by CategoryID;
