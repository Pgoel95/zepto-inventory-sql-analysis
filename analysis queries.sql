select * from inventory;

-- Products which are currently out of stock

select distinct name As "Product Name", category As "Product Category"
from Inventory
where outOfStock is True
or availableQuantity = 0;

-- Total Inventory Value by Category

With unique_products As(
  Select name,
         Min(category) As category,
         Max(discountedSellingPrice) As price,
         Max(availableQuantity) As quantity
  From Inventory
  Where availableQuantity > 0
  Group By name
)
Select category,
       Sum(price * quantity) As total_inventory_value
From unique_products
Group By category
Order By total_inventory_value Desc;

-- Which products have the highest discount percentage?

With unique_discounted_products As(
  Select name,
         Min(category) As category,
         Max(mrp) As mrp,
         Max(discountedSellingPrice) As price,
         Round(((Max(mrp) - Max(discountedSellingPrice)) / Max(mrp)) * 100, 2) As discount_pct
  From Inventory
  Group By name
),
ranked_discounts As (
  Select *,
         Row_number() Over (Partition By discount_pct Order By name) As rn
  From unique_discounted_products
)
Select name, category, mrp, price, discount_pct
From ranked_discounts
Where rn = 1
Order By discount_pct Desc
Limit 10;

-- Which products have been marked as out of stock but still show available quantity > 0?

Select *
From Inventory
Where outOfStock is True
And availableQuantity > 0;

-- Which products weigh the most per unit price (₹)?

With ranked_products As (
  Select *,
         Round(weightInGms / discountedSellingPrice, 2) As gms_per_rupee,
         Row_Number() Over (Partition By name Order By weightInGms / discountedSellingPrice Desc) As rn
  From Inventory
)
Select name, weightInGms, discountedSellingPrice, gms_per_rupee
From ranked_products
Where rn = 1
Order By gms_per_rupee Desc
Limit 10;

-- What is the average selling price and discount by category?

Select category,
Round(Avg(mrp), 2) as avg_mrp,
Round(Avg(discountedSellingPrice), 2) as avg_selling_price,
Round(Avg((mrp - discountedSellingPrice) / mrp * 100), 2) as avg_discount_pct
From inventory
Group by category
Order by avg_discount_pct Desc;
