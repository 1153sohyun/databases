SELECT Orders.OrderID
       , Customers.CustomerName
       , Shippers.ShipperName
       , Products.ProductName
FROM (
                     ((Orders
      Inner Join Customers
      On Orders.CustomerID = Customers.CustomerID)
      Inner Join Shippers
      On Orders.ShipperID = Shippers.ShipperID)
      Inner Join Orderdetails
      On Orders.OrderID = OrderDetails.OrderID)
      Inner Join Products
      On OrderDetails.ProductID = Products.ProductID)
;        