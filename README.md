# Project Overview
This project presents an end-to-end **inventory analysis for Zepto**, a fast-growing Indian quick commerce platform, using **structured SQL queries**.

The primary goal is to **analyze inventory data to generate actionable business insights**, identify patterns in pricing and stock management, and highlight opportunities to optimize product mix and profitability. The project includes **data cleaning, transformation, and exploratory SQL analysis**, all performed on a structured product catalog imported via CSV.

The dataset mimics a real-world product inventory table, containing:

- Product names and categories
- MRP (maximum retail price)
- Discounted selling price
- Available stock quantity
- Net weight per package
- Units per package (quantity)
- Stock status (outOfStock flag)

# Key Objectives

- Clean and prepare raw inventory data for analysis
- Convert price values from paisa to rupees
- Identify out-of-stock or mislabelled items
- Calculate inventory value across categories
- Find high-discount and high-value products
- Derive pricing efficiency metrics (e.g., grams per rupee, ₹ per unit)
- Analyze category-wise pricing and discount trends

# What This Project Covers?

✅ **Data Cleaning**
- Converted price columns from paisa to rupees
- Removed products with price = 0
- Standardized out-of-stock product flags
- Filtered incomplete or null records
- Removed duplicated products intelligently using grouping logic

✅ **Business Analysis via SQL**
- Q1: Products currently out of stock
- Q2: Total inventory value per category
- Q3: Products with the highest discount percentages
- Q4: Products marked "out of stock" but still showing available quantity
- Q5: Products offering the best value (highest grams per ₹)
- Q6: Category-wise average MRP, selling price, and discount %
- Bonus: Top 10 unique discount % values using ROW_NUMBER() window function

