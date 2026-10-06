# 📊 Sales & Order Management Analytics System

### End-to-End Data Analytics Project | PostgreSQL • SQL • Python • Power BI

---

## 📌 Project Overview

The **Sales & Order Management Analytics System** is an end-to-end data analytics project developed to analyze sales performance, customer behavior, product performance, payments, and profitability.

The project demonstrates the complete analytics workflow — from **relational database design and SQL analysis to Python-based data quality analysis and interactive Power BI dashboards**.

The goal is to transform raw transactional data into meaningful business insights that can support better decision-making.

---

## 🎯 Business Objective

The main objective of this project is to answer important business questions such as:

* How much revenue and profit is the business generating?
* How are sales changing over time?
* Which products generate the highest revenue?
* Which customers contribute the most revenue?
* Which customers are repeat customers?
* What is the average order value?
* Which customer segments are most valuable?
* Which product categories perform best?
* How are payments distributed across different payment methods?
* Which areas require attention based on sales and profitability?

---

## 🏗️ Project Architecture

```text
                    ┌─────────────────────┐
                    │   Business Data     │
                    │ Customers / Orders  │
                    │ Products / Payments │
                    └──────────┬──────────┘
                               │
                               ▼
                    ┌─────────────────────┐
                    │     PostgreSQL      │
                    │  Relational Database│
                    └──────────┬──────────┘
                               │
                               ▼
                    ┌─────────────────────┐
                    │    SQL Analysis     │
                    │ Joins / CTEs /      │
                    │ Windows / Aggregates│
                    └──────────┬──────────┘
                               │
                               ▼
                    ┌─────────────────────┐
                    │       Python        │
                    │ Data Quality & EDA  │
                    └──────────┬──────────┘
                               │
                               ▼
                    ┌─────────────────────┐
                    │      Power BI       │
                    │ Interactive Reports │
                    └──────────┬──────────┘
                               │
                               ▼
                    ┌─────────────────────┐
                    │ Business Insights   │
                    │ & Decision Support   │
                    └─────────────────────┘
```

---

# 🗄️ Database Design

The project uses a relational database structure designed around the core business entities.

### Main entities

| Table         | Purpose                                               |
| ------------- | ----------------------------------------------------- |
| `customers`   | Stores customer information                           |
| `products`    | Stores product and pricing information                |
| `orders`      | Stores order-level information                        |
| `order_items` | Stores products and quantities associated with orders |
| `payments`    | Stores payment information and payment status         |

The database demonstrates concepts such as:

* Primary Keys
* Foreign Keys
* Relationships
* Data Types
* Constraints
* Normalized table design
* Referential integrity

---

# 🔍 Data Analytics Workflow

The project follows a structured analytics workflow:

### 1. Understand Business Requirements

Identify the key business areas:

* Sales
* Revenue
* Profitability
* Customers
* Products
* Orders
* Payments

### 2. Design the Database

Create related tables with appropriate primary keys and foreign keys.

### 3. Load Data

Insert sample transactional data into the database.

### 4. Validate Data

Perform data-quality checks to identify issues such as:

* Missing values
* Duplicate records
* Invalid values
* Inconsistent records
* Referential integrity issues

### 5. Perform SQL Analysis

Use SQL to transform and analyze the data.

### 6. Perform Exploratory Data Analysis

Use Python to inspect and understand the dataset.

### 7. Build Power BI Dashboards

Create interactive dashboards for business users.

### 8. Generate Business Insights

Convert analytical results into understandable business findings.

---

# 🧠 SQL Skills Demonstrated

This project demonstrates both fundamental and advanced SQL concepts.

### Basic SQL

* `SELECT`
* `WHERE`
* `ORDER BY`
* `DISTINCT`
* `LIMIT`

### Data Manipulation

* `INSERT`
* `UPDATE`
* `DELETE`

### Joins

* `INNER JOIN`
* `LEFT JOIN`
* Multi-table joins

### Aggregations

* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`
* `GROUP BY`
* `HAVING`

### Advanced SQL

* Common Table Expressions (CTEs)
* Subqueries
* `CASE` expressions
* Window functions
* Ranking
* Running totals
* Monthly analysis
* Customer analysis
* Product analysis

### Database Optimization

* Index creation
* Reusable SQL views
* Query optimization concepts

---

# 📈 Key Business Analysis

## Sales Analysis

The project analyzes:

* Total sales
* Total revenue
* Order volume
* Monthly revenue
* Average order value
* Sales trends
* Product contribution

---

## 👥 Customer Analytics

Customer behavior is analyzed using:

* Customer revenue
* Number of orders
* Repeat customers
* Average order value
* Customer segmentation
* Top customers
* Customer contribution to overall revenue

The analysis helps identify **high-value customers and purchasing patterns**.

---

## 📦 Product Analytics

Product performance is evaluated using:

* Units sold
* Revenue generated
* Product rankings
* Category performance
* Top-performing products
* Product contribution to sales

---

## 💳 Payment Analysis

Payment data is analyzed based on:

* Payment methods
* Payment status
* Payment amounts
* Successful and unsuccessful transactions
* Payment trends

---

# 📊 Power BI Dashboard

The project includes an interactive Power BI dashboard designed to provide a high-level view of business performance.

### Dashboard Page 1 — Executive Overview

Provides an overall business summary including:

* Total Revenue
* Total Orders
* Total Customers
* Total Profit
* Sales trends
* Product performance
* Business KPIs

---

### Dashboard Page 2 — Sales Analysis

Focuses on sales performance including:

* Revenue trends
* Monthly sales
* Product performance
* Category performance
* Top products
* Sales KPIs
* Interactive filters

---

### Dashboard Page 3 — Customer Analytics

Focuses on customer behavior including:

* Total customers
* Customer revenue
* Repeat customers
* Customer segments
* Top customers
* Average order value
* Customer behavior analysis

---

# 🐍 Python Analysis

Python is used as a supporting analytics tool for data-quality checks and exploratory analysis.

### Libraries

* Python
* Pandas
* NumPy
* Matplotlib

### Python workflow

```text
Load Data
    ↓
Inspect Dataset
    ↓
Check Missing Values
    ↓
Check Duplicates
    ↓
Validate Data Types
    ↓
Explore Distributions
    ↓
Generate Analytical Findings
```

---

# 📁 Project Structure

```text
Skillentrix_Intern/
│
├── 01_Database/
│   ├── create_tables.sql
│   ├── insert_data.sql
│   ├── insert_payments.sql
│   └── update_order_totals.sql
│
├── 02_Data_Quality/
│   ├── data_quality_checks.sql
│   └── data_quality_eda.py
│
├── 03_SQL_Analysis/
│   ├── basic_analysis.sql
│   ├── advanced_sql.sql
│   ├── customer_analysis.sql
│   └── payment_analysis.sql
│
├── 04_SQL_Views/
│   └── business_views.sql
│
├── 05_Python/
│   └── data_analysis.py
│
├── 06_PowerBI/
│   └── Sales_Analytics_Dashboard.pbix
│
├── 07_Documentation/
│   ├── Project_Report.pdf
│   ├── ER_Diagram.png
│   └── Architecture_Diagram.png
│
├── 08_Screenshots/
│   ├── dashboard_overview.png
│   ├── sales_analysis.png
│   └── customer_analysis.png
│
└── README.md
```

> File names may vary slightly depending on the final version of the project.

---

# 🛠️ Technologies Used

| Technology     | Purpose                                      |
| -------------- | -------------------------------------------- |
| **PostgreSQL** | Relational database management               |
| **SQL**        | Data querying and business analysis          |
| **Python**     | Data quality checks and exploratory analysis |
| **Pandas**     | Data manipulation and analysis               |
| **Matplotlib** | Data visualization                           |
| **Power BI**   | Interactive dashboards and reporting         |
| **GitHub**     | Version control and project documentation    |

---

# 📊 Key KPIs

The dashboard focuses on important business performance indicators such as:

```text
Revenue
Orders
Customers
Profit
Average Order Value
Repeat Customers
Units Sold
Top Products
Customer Revenue
```

These KPIs help provide a concise view of business performance.

---

# 💡 Business Insights

The project is designed to help businesses:

* Identify high-performing products
* Understand customer purchasing behavior
* Recognize high-value customers
* Monitor revenue trends
* Track profitability
* Compare product and category performance
* Understand payment patterns
* Support data-driven decision-making

---

# 🚀 Skills Demonstrated

This project demonstrates practical experience in:

### Data Analytics

* Data cleaning
* Data validation
* Exploratory data analysis
* KPI development
* Business insights

### SQL

* Relational database design
* Joins
* Aggregations
* CTEs
* Subqueries
* Window functions
* Ranking
* Views
* Indexing

### Power BI

* Data modeling
* DAX measures
* KPI cards
* Interactive charts
* Filters and slicers
* Dashboard design
* Business reporting

### Python

* Pandas
* Data quality analysis
* Exploratory data analysis
* Visualization

### Professional Skills

* Business problem solving
* Analytical thinking
* Data storytelling
* Dashboard development
* Documentation

---

# ▶️ How to Use This Project

## Step 1 — Database

Install PostgreSQL and create the required database.

Run the SQL scripts in the following order:

```text
1. create_tables.sql
2. insert_data.sql
3. insert_payments.sql
4. update_order_totals.sql
5. data_quality_checks.sql
6. analysis SQL scripts
7. views
```

---

## Step 2 — Python

Install the required libraries:

```bash
pip install pandas numpy matplotlib
```

Run the Python analysis script:

```bash
python data_analysis.py
```

---

## Step 3 — Power BI

Open:

```text
06_PowerBI/Sales_Analytics_Dashboard.pbix
```

Refresh the data connection if required.

The report contains the Executive Overview, Sales Analysis and Customer Analytics pages.

---

# 📷 Dashboard Preview

### Executive Overview

![Executive Overview](08_Screenshots/dashboard_overview.png)

### Sales Analysis

![Sales Analysis](08_Screenshots/sales_analysis.png)

### Customer Analytics

![Customer Analytics](08_Screenshots/customer_analysis.png)

---

# 📌 Project Outcome

This project demonstrates an end-to-end approach to solving a business analytics problem:

```text
Raw Data
   ↓
Database Design
   ↓
Data Validation
   ↓
SQL Analysis
   ↓
Python EDA
   ↓
Data Modeling
   ↓
Power BI Dashboard
   ↓
Business Insights
```

The final solution converts transactional data into **interactive, decision-oriented business intelligence**.

---

# 👩‍💻 Author

**Prasanna Padige**

B.Tech — Computer Science & Engineering

**Data Analytics Project**

Technologies: PostgreSQL | SQL | Python | Power BI

---

## ⭐ Project Highlights

> **End-to-end Data Analytics Project**

> **Relational Database + Advanced SQL + Python EDA + Power BI**

> **Interactive Business Intelligence Dashboard**

> **Customer, Sales, Product & Payment Analytics**

---

## 📜 Internship Project

This project was developed as part of the **Skillentrix Technologies internship program**, with the objective of applying data analytics concepts to a practical business scenario.

---

### ⭐ If you find this project useful

Feel free to explore the SQL scripts, Python analysis and Power BI dashboard to understand the complete analytics workflow.
