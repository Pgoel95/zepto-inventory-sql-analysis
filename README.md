# Project Overview
This project presents an end-to-end **inventory analysis for Zepto**, a fast-growing Indian quick commerce platform, using **structured SQL queries**.

The primary goal is to **analyze inventory data to generate actionable business insights**, identify patterns in pricing and stock management, and highlight opportunities to optimize product mix and profitability. The project includes **data cleaning, transformation, and exploratory SQL analysis**, all performed on a structured product catalog imported via CSV.

The dataset mimics a real-world product inventory table, containing:

- Product names and categories
- MRP (maximum retail price)
- Discounted selling price
- Available stock quantity
- Net weight per package (weightInGms)
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

✅ **Advanced SQL Concepts Used**
- Common Table Expressions (CTEs)
- Aggregate functions (SUM, AVG, MAX, ROUND)
- Window functions (ROW_NUMBER() OVER (PARTITION BY ...))
- Data type conversions and safe filtering
- Grouping and ordering logic

💡 **Insights Extracted**
- Some categories like **Cooking Essentials** hold the majority of total inventory value
- Products like **salt, potatoes, onions** offer the highest grams per rupee
- **Fruits & Vegetables** category offers the highest average discount percentage
- **453 products** are currently out of stock — which may impact availability
- Some products are inconsistently labeled as **outOfStock** while still showing stock

🎯 **Why This Project Matters**

This project demonstrates **how SQL can be used for business decision-making**, not just data extraction. It simulates a real retail analytics task you might find in a company like Zepto, BigBasket, or Blinkit — where operations, marketing, and product teams rely on inventory insights to:
- Optimize pricing
- Improve product availability
- Increase margins
- Prioritize restocking



