# E-Commerce Data Analytics Project

An end-to-end E-Commerce Data Analytics project developed as part of the **Primeor Solutions Data Analytics Internship**. The project focuses on transforming raw e-commerce transaction data into meaningful business insights using Microsoft Excel, PostgreSQL, SQL, and Power BI.

The objective is to understand sales performance, profitability, customer behaviour, product performance, regional trends, and shipping patterns through data cleaning, analysis, and interactive visualizations.

---

## Project Overview

This project follows three major levels:

1. **Level 1 – Data Understanding & Cleaning (Excel)**
2. **Level 2 – Data Analysis (SQL)**
3. **Level 3 – Interactive Dashboard Development (Power BI)**

Each stage contributes to a complete analytics workflow, from preparing the dataset to presenting business insights.

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Microsoft Excel | Data cleaning, analysis, summaries and charts |
| PostgreSQL | Database storage and data analysis |
| pgAdmin | Database management and SQL execution |
| SQL | Data querying, aggregation and business analysis |
| Power BI Desktop | Interactive dashboards and visualizations |

## Dataset Description

The project uses an e-commerce transactions dataset containing information about:

- Order ID and order dates
- Shipping dates and shipping modes
- Customer names and customer segments
- Country, market and region
- Product categories and sub-categories
- Sales, quantity, discount and profit
- Shipping costs and order priority

**Dataset size after cleaning:** 51,271 records and 21 columns.

## Project Tasks & Implementation

### Level 1: Data Understanding & Cleaning – Excel

**Task 1: Data Cleaning**

The dataset was prepared for analysis by addressing:

- Duplicate records
- Missing and null values
- Inconsistent text values
- Date format inconsistencies
- Invalid numerical values
- Unnecessary spaces and formatting inconsistencies

**Task 2: Basic Excel Analysis**

The following analysis was performed:

- Total Sales
- Total Profit
- Average Discount
- Top 5 Products by Sales
- Top 5 Loss-Making Products
- Region-wise Sales Analysis

**Task 3: Pivot Table Analysis & Charts**

The analysis included:

- Sales by Region
- Profit by Category
- Segment-wise Sales
- Monthly Sales Trend

### Level 2: Data Analysis – PostgreSQL & SQL

The cleaned dataset was imported into PostgreSQL for querying and business analysis.

The SQL analysis covered:

1. Top 10 Profitable Products
2. Top 10 Customers by Sales
3. Region-wise Total Sales
4. Category-wise Average Profit
5. Highest Discount Category
6. Orders with Negative Profit
7. Monthly Sales Trend
8. Market-wise Revenue Analysis
9. Top-performing Sub-Categories
10. Shipping Mode Usage Analysis

SQL concepts applied include:

- SELECT and WHERE
- GROUP BY and ORDER BY
- Aggregate functions
- COUNT, SUM and AVG
- DISTINCT
- Filtering and sorting
- Date-based analysis

### Level 3: Power BI Dashboard Development

An interactive Power BI dashboard was developed with three analytical pages.

#### Page 1 – Executive Business Overview

**KPI Cards:**
- Total Sales
- Total Profit
- Total Orders
- Average Discount

**Visualizations:**
- Sales by Market
- Profit by Category
- Monthly Sales Trend

**Filters:** Year, Market and Region.

#### Page 2 – Sales Analysis

**KPI Cards:**
- Total Sales
- Total Orders
- Total Quantity Sold
- Average Order Value

**Visualizations:**
- Monthly Sales Trend
- Sales by Region
- Sales by Market
- Category Performance

**Filters:** Year, Market and Segment.

#### Page 3 – Product & Customer Insights

**KPI Cards:**
- Total Products
- Unique Customers
- Total Sales
- Total Profit

**Visualizations:**
- Top 10 Products by Sales
- Top 10 Customers by Sales
- Profit by Sub-Category
- Sales by Customer Segment

**Filters:** Year, Market and Category.

### Dashboard Features

- Interactive slicers and filters
- KPI cards for key business metrics
- Interactive charts and visual analysis
- Navigation between dashboard pages
- Consistent colour theme and formatting
- Sales and profitability comparisons

---

## Key Business Insights

The analysis produced the following findings:

- **Total Sales:** $12,635,222.00
- **Total Profit:** $1,467,497.61
- **Average Discount:** 14.29%
- **Total Orders:** 25,029
- **Total Products:** 3,788
- **Unique Customers:** 796

Additional observations:

- Central was the highest-performing region by sales.
- APAC generated the highest sales among markets.
- Technology contributed the highest total profit among categories.
- Consumer was the largest customer segment by sales.
- Furniture had the highest average discount among categories.
- Standard Class was the most frequently used shipping mode.

These findings can help businesses understand their sales performance, identify profitable product categories, monitor discounts, and evaluate customer and regional contributions.

---

## Project Structure

A suggested repository structure for organizing the project:

```text
E-Commerce-Data-Analytics/
│
├── Dataset/
│   └── Ecommerce_Dataset.csv
│
├── Excel_Analysis/
│   └── Ecommerce_Data_Corrected.xlsx
│
├── SQL_Analysis/
│   └── ecommerce_analysis.sql
│
├── PowerBI_Dashboard/
│   └── Ecommerce_dashboard.pbix
│
├── Screenshots/
│   ├── Executive_Overview.png
│   ├── Sales_Analysis.png
│   └── Product_Customer_Insights.png
│
├── Report/
│   └── Ecommerce_Data_Analytics_Final_Report.pdf
│
└── README.md
```

*The folder and file names above are suggested. Adjust them to match the files actually uploaded to this repository.*

---

## Skills Demonstrated

- Data Cleaning and Preprocessing
- Exploratory Data Analysis
- Microsoft Excel
- PostgreSQL and SQL
- Data Aggregation and Analysis
- Power BI Dashboard Development
- Data Visualization
- KPI Development
- Business Insights and Reporting

## Project Outcome

This project provided practical experience in working with an end-to-end data analytics workflow. It strengthened my understanding of data preparation, SQL-based analysis, business intelligence, dashboard development, and communicating insights through visual storytelling.

The final outcome is a three-page interactive Power BI dashboard supported by Excel analysis and SQL queries.

---

## Acknowledgement

This project was completed as part of the **Data Analytics Internship at Primeor Solutions**.

The internship provided an opportunity to apply data analytics concepts to a practical business-oriented project and develop hands-on experience with industry-relevant tools.

---

**Project Domain:** Data Analytics  
**Internship Organization:** Primeor Solutions  
**Tools:** Excel | PostgreSQL | SQL | Power BI

Hamsaveni P
