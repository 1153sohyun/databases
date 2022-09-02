
CREATE TABLE Categories
(
  CategoryID   VARCHAR NOT NULL COMMENT '카테고리번호',
  CategoryName VARCHAR NULL     COMMENT '카테고리이름',
  Description  VARCHAR NULL     COMMENT '설명서',
  PRIMARY KEY (CategoryID)
);

CREATE TABLE Customers
(
  CustomerName VARCHAR NULL     COMMENT '고객명',
  ContactName  VARCHAR NULL     COMMENT '연락처',
  Address      INT     NULL     COMMENT '주소',
  City         VARCHAR NULL     COMMENT '도시',
  Postalcode   INT     NULL     COMMENT '우편번호',
  Country      VARCHAR NULL     COMMENT '지역',
  Customer_ID  VARCHAR NOT NULL COMMENT '고객ID',
  PRIMARY KEY (Customer_ID)
);

CREATE TABLE Employees
(
  LastName   VARCHAR NULL     COMMENT '이름(성)',
  BirthDate  INT     NULL     COMMENT '생년월일',
  Photo      VARCHAR NULL     COMMENT '사진',
  Notes      VARCHAR NULL     COMMENT '비고',
  EmployeeID INT     NOT NULL COMMENT '직원ID',
  PRIMARY KEY (EmployeeID)
);

CREATE TABLE OrderDetails
(
  OrderDetailID VARCHAR NULL     COMMENT '주문상세정보',
  ProductID     VARCHAR NULL     COMMENT '제품번호',
  Quantity      INT     NULL     COMMENT '양',
  OrderID       INT     NOT NULL COMMENT '주문번호',
  PRIMARY KEY (OrderID)
);

CREATE TABLE Orders
(
  OrderDate   INT     NULL     COMMENT '주문날짜',
  EmployeeID  INT     NOT NULL COMMENT '직원ID',
  ShipperID   VARCHAR NOT NULL COMMENT '배송번호',
  OrderID     INT     NOT NULL COMMENT '주문번호',
  ShipperID   VARCHAR NOT NULL COMMENT '배송자ID',
  EmployeeID  INT     NOT NULL COMMENT '직원ID',
  Customer_ID VARCHAR NOT NULL COMMENT '고객ID',
  CategoryID  VARCHAR NOT NULL COMMENT '카테고리번호',
  ProductID   VARCHAR NOT NULL COMMENT '제품번호',
  SupplierID  VARCHAR NOT NULL COMMENT '공급번호'
);

CREATE TABLE Products
(
  ProductID   VARCHAR NOT NULL COMMENT '제품번호',
  ProductName VARCHAR NULL     COMMENT '제품이름',
  SupplierID  VARCHAR NULL     COMMENT '배송번호',
  CategoryID  VARCHAR NULL     COMMENT '카테고리번호',
  Unit        INT     NULL     COMMENT '갯수',
  Price       INT     NULL     COMMENT '가격',
  PRIMARY KEY (ProductID)
);

CREATE TABLE Shippers
(
  ShipperName VARCHAR NULL     COMMENT '배송자이름',
  Phone       INT     NULL     COMMENT '폰번호',
  ShipperID   VARCHAR NOT NULL COMMENT '배송자ID',
  PRIMARY KEY (ShipperID)
);

CREATE TABLE Suppliers
(
  SupplierID   VARCHAR NOT NULL COMMENT '공급번호',
  SupplierName VARCHAR NULL     COMMENT '공급자이름',
  ContactName  VARCHAR NULL     COMMENT '공급자번호',
  Address      INT     NULL     COMMENT '주소',
  City         VARCHAR NULL     COMMENT '도시',
  PostalCode   INT     NULL     COMMENT '우편번호',
  Country      VARCHAR NULL     COMMENT '나라',
  Phone        INT     NULL     COMMENT '휴대폰번호',
  ProductID    VARCHAR NOT NULL COMMENT '제품번호',
  PRIMARY KEY (SupplierID)
);

ALTER TABLE Orders
  ADD CONSTRAINT FK_OrderDetails_TO_Orders
    FOREIGN KEY (OrderID)
    REFERENCES OrderDetails (OrderID);

ALTER TABLE Orders
  ADD CONSTRAINT FK_Shippers_TO_Orders
    FOREIGN KEY (ShipperID)
    REFERENCES Shippers (ShipperID);

ALTER TABLE Orders
  ADD CONSTRAINT FK_Employees_TO_Orders
    FOREIGN KEY (EmployeeID)
    REFERENCES Employees (EmployeeID);

ALTER TABLE Orders
  ADD CONSTRAINT FK_Customers_TO_Orders
    FOREIGN KEY (Customer_ID)
    REFERENCES Customers (Customer_ID);

ALTER TABLE Orders
  ADD CONSTRAINT FK_Categories_TO_Orders
    FOREIGN KEY (CategoryID)
    REFERENCES Categories (CategoryID);

ALTER TABLE Orders
  ADD CONSTRAINT FK_Products_TO_Orders
    FOREIGN KEY (ProductID)
    REFERENCES Products (ProductID);

ALTER TABLE Orders
  ADD CONSTRAINT FK_Suppliers_TO_Orders
    FOREIGN KEY (SupplierID)
    REFERENCES Suppliers (SupplierID);
