# Real Estate Sales Analysis

## Overview

This repository contains the analysis of real estate sales data. The analysis utilizes a dataset containing 1,000 residential sales transactions across various projects. The analysis was performed using Excel for **data cleaning and preparation**, SQL for **data querying and aggregation**, Power BI for **data visualization**, and Google Colab (Python) for **data modeling and predictive analytics**.

## Dataset Description

The dataset includes the following columns:
- `transaction_id` – Unique identifier for each transaction
- `sale_date` – Date the sale was made
- `project_name` – Name of the SMDC project
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

* Studio units are the most frequently sold, but 2BR units yield the highest average selling price.
* Locations near major business districts tend to have higher average prices and more transactions.

## Anomalies and Patterns

1. One project showed unusually high sale prices compared to others in the same location.  
2. A few agents consistently outperformed peers regardless of project or payment mode.

## Root Cause Analysis

1. High sale prices in one project were due to premium features and limited availability.  
2. Top-performing agents had multiple listings across high-demand locations.

## Recommendations

1. Focus marketing and inventory on high-performing projects and unit types.  
2. Analyze strategies of top agents and replicate their approach for broader sales team performance.

