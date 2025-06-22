-- Creating table

Create Table Inventory
(
sku_id Serial Primary Key,
category Varchar(120),
name Varchar(150) Not Null,
mrp Numeric(8,2),
discountPercent Numeric(5,2),
availableQuantity Integer,
discountedSellingPrice Numeric(8,2),
weightInGms Integer,
outOfStock Boolean,
quantity Integer
);