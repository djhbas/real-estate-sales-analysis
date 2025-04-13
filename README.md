# Real Estate Sales Analysis

## Overview

This repository contains the analysis of real estate sales data. The analysis utilizes a dataset containing 1,000 residential sales transactions across various projects. The analysis was performed using Excel for **data cleaning and preparation**, SQL for **data querying and aggregation**, Power BI for **data visualization**, and Google Colab (Python) for **data modeling and predictive analytics**.

## Dataset Description

The dataset includes the following columns:
- `transaction_id` – Unique identifier for each transaction
- `sale_date` – Date the sale was made
- `project_name` – Name of the project
- `unit_type` – Type of residential unit sold (e.g., Studio, 1BR, 2BR)
- `selling_price` – Final sale price of the unit
- `location` – City or area where the project is located
- `sales_agent` – Agent who closed the deal
- `payment_mode` – Method of payment used by the buyer

## Analysis Performed

The analysis includes the following steps:

1.  **Data Cleaning and Preparation (Excel):**
    -   Conditional Formatting
    -   Pivot Tables and Charts
    -   Sorting and Filtering
    -   VLOOKUP

2.  **Data Aggregation and Querying (SQL):**
    -   Average selling price per unit type  
    -   Total sales amount and the number of sales for each agent  
    -   Retrieve all transactions from the last 30 days  
    -   Total sales amount by location and sort the results in descending order  
    -   Projects with more than 10 transactions and the average selling price for each project  
    -   Top 3 highest selling prices for each unit type  
    -   Total sales amount and average selling price for each payment mode  
    -   Sales agent who made the highest total sales in a specific year  
    -   Average selling price for each project in each location, and projects where the average price is higher than the overall average price  
    -   Top-selling projects by unit type in each location (ranked by total sales)

3.  **Data Visualization (Power BI):**
    -   Monthly Sales Trend
    -   Total Sales by Location
    -   Average Selling Price per Unit Type
    -   Top Performing Sales Agents
    -   Project Sales Comparison

4.  **Predictive Analytics (Python/Google Colab):**
    -   Linear Regression Model to predict selling price based on project, unit type, and location.
    -   Model evaluation using metrics.

## Summary of Findings

* Makati generated the highest total revenue among all locations, indicating strong demand and higher price points.
* 2BR units had the highest average selling price, while Studio units had the lowest, reflecting buyer preferences for larger spaces.

## Anomalies and Patterns

1. Pasay recorded the lowest total revenue despite having multiple projects, suggesting weaker market demand or lower pricing strategies.
2. Sales peaked significantly in August 2024, hinting at a possible seasonal trend or campaign-driven performance.

## Root Cause Analysis

1. Pasay's low revenue may be due to limited high-value inventory or reduced promotional efforts in the area.
2. The sales spike in August 2024 may be attributed to targeted sales campaigns or special buyer incentives launched during that period.

## Recommendations

1. Reassess marketing strategies and pricing for projects in Pasay to boost visibility and competitiveness.
2. Replicate or scale August's successful sales strategies to other months to sustain high performance year-round.
