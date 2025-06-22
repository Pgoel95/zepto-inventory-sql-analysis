-- Data Cleaning

-- 1. Converted prices from paisa to rupees

Update Inventory
Set mrp = mrp / 100.0
Where mrp Is Not Null;

Update Inventory
Set discountedSellingPrice = discountedSellingPrice / 100.0
Where discountedSellingPrice Is Not Null;

-- 2. Removed records with zero or null selling price

Delete From Inventory
Where discountedSellingPrice Is Null Or discountedSellingPrice = 0;

-- 3. Removed records with missing or zero MRP

Delete From Inventory
Where mrp Is Null Or mrp = 0;

-- 4. Removed invalid weight entries

Delete From Inventory
Where weightInGms Is Null Or weightInGms = 0;

-- 5. Handled inconsistent out-of-stock flags

Update Inventory
Set outOfStock = FALSE
Where outOfStock = TRUE And availableQuantity > 0;

-- 6. Ensured all category fields are present

Delete From Inventory
Where category Is Null Or Trim(category) = '';




