# 🛒 E-commerce Sales & Customer Analytics

## 📌 Project Overview

This project focuses on analyzing e-commerce sales performance, customer behavior, product performance, and regional trends using **Power BI, SQL, and data visualization techniques**.

The objective is to transform raw e-commerce data into meaningful insights through interactive dashboards and analytical queries, helping stakeholders understand business performance and identify opportunities for improvement.

## 🎯 Business Objectives

- Analyze overall sales performance and revenue trends.
- Understand customer distribution and purchasing behavior.
- Identify products and categories that contribute most to revenue.
- Explore geographic patterns in customer distribution and sales.
- Evaluate revenue across payment methods and sales channels.
- Support data-driven business decisions through interactive reporting.

## 🛠️ Tools & Technologies

- **Power BI** — Interactive dashboards and data visualization.
- **DAX** — Measures and KPI calculations.
- **Power Query** — Data preparation and transformation.
- **SQL** — Data querying and business analysis.
- **CSV** — Structured source datasets.

## 📂 Project Structure

```text
E-commerce-Analytics/
│
├── Ecommerce analysis.pbix
├── Ecommerce_analysis.sql
├── Orders.csv
├── Order_Items.csv
├── customers.csv
├── product.csv
├── Screenshot 2026-10-28 183213.png
├── Screenshot 2026-10-28 183227.png
├── Screenshot 2026-10-28 183237.png
└── Screenshot 2026-10-28 183249.png
```

## 📊 Dashboard Overview

The Power BI report is organized into four analytical sections.

### 1. Sales Overview

Analyzes overall sales performance through key metrics and trends.

**Key metrics and analyses:**
- Total Revenue
- Total Orders
- Total Customers
- Average Order Value (AOV)
- Units Sold
- Monthly Revenue Trend
- Revenue by Customer Segment
- Revenue by Payment Method
- City-level Revenue Analysis
<img width="1920" height="1080" alt="Screenshot 2026-10-28 183213" src="https://github.com/user-attachments/assets/8da5d549-1ee0-4aa1-a61a-cce7366c8530" />

### 2. Customer Analysis

Explores customer distribution, customer segments, and revenue contribution.

**Key analyses:**
- Customer Distribution by Segment
- Revenue by Customer Segment
- Customer Revenue Contribution
- Customer Acquisition and Repeat-Purchase Analysis, where supported by the available data

<img width="1920" height="1080" alt="Screenshot 2026-10-28 183227" src="https://github.com/user-attachments/assets/fda685bc-0e38-4d1e-bff4-10d38dbf6f91" />

### 3. Product Analysis

Evaluates product and category performance.

**Key metrics and analyses:**
- Units Sold
- Total Products
- Average Selling Price
- Total Revenue
- Top Products by Revenue
- Revenue by Category
- Units Sold by Category
- Revenue by Subcategory

<img width="1920" height="1080" alt="Screenshot 2026-10-28 183237" src="https://github.com/user-attachments/assets/843e9467-b705-4561-8c85-1329b0299a33" />

### 4. Regional Analysis

Examines geographic distribution and regional business performance.

**Key analyses:**
- Revenue by City
- Customer Distribution by City
- Revenue by State, if available in the dataset
- Customer Segment Contribution Across Cities

<img width="1920" height="1080" alt="Screenshot 2026-10-28 183249" src="https://github.com/user-attachments/assets/e429480b-a177-4064-8367-34c047fc74f6" />

## 🗃️ Dataset Description

The project uses four CSV datasets.

| Dataset | Description |
|---|---|
| `customers.csv` | Customer information and geographic attributes |
| `Orders.csv` | Order dates, customer identifiers, payment methods, channels, and order statuses |
| `Order_Items.csv` | Product identifiers, quantities, unit prices, discounts, and line totals |
| `product.csv` | Product names, categories, and subcategories |

The datasets are connected in Power BI using customer, order, and product identifiers to support analysis across multiple business dimensions.

## 📐 Key DAX Measures

### Total Revenue

```DAX
Total Revenue = SUM(Order_Items[Line_Total])
```

### Total Orders

```DAX
Total Orders = DISTINCTCOUNT(Orders[Order_ID])
```

### Total Customers

```DAX
Total_Customers = DISTINCTCOUNT(customers[Customer_ID])
```

### Average Order Value

```DAX
Average Order Value =
DIVIDE([Total Revenue], [Total Orders])
```

### Units Sold

```DAX
Units Sold = SUM(Order_Items[Quantity])
```

### Total Products

```DAX
Total Products =
DISTINCTCOUNT(product[Product_ID])
```

### Average Selling Price

```DAX
Average Selling Price =
DIVIDE(
    SUMX(
        Order_Items,
        Order_Items[Quantity] * Order_Items[Unit_Price]
    ),
    [Units Sold]
)
```

*Note: Revenue and other metrics should be interpreted according to the dataset's definitions. Order-status, discount, cancellation, and return handling should be validated before treating revenue as recognized or net revenue.*

## 💡 Business Value

This project demonstrates how sales and customer data can be used to:

- Monitor key performance indicators.
- Compare sales performance across time periods.
- Understand customer segments and their revenue contribution.
- Identify high-performing products and categories.
- Explore geographic patterns in sales and customers.
- Build interactive reports for business stakeholders.

The findings can help guide further investigation into sales trends, customer behavior, and product performance.

## 🚀 Skills Demonstrated

- Data Analysis
- SQL Querying
- Power BI Dashboard Development
- Data Modelling
- DAX Measures
- Data Visualization
- KPI Reporting
- Business Analysis
- Analytical Problem-Solving

## ▶️ How to Explore the Project

1. Clone or download this repository.
2. Open `Ecommerce analysis.pbix` using Power BI Desktop.
3. If necessary, update the data-source paths to point to the downloaded CSV files.
4. Refresh the data.
5. Explore the dashboard pages, filters, and visualizations.

The SQL queries are available in `Ecommerce_analysis.sql`.

## 📌 Future Improvements

- Validate data quality and business metric definitions.
- Add month-over-month and year-over-year performance comparisons where the data supports them.
- Improve customer retention and repeat-purchase analysis.
- Add further SQL-based business analysis.
- Enhance report navigation and interactive drill-through features.
- Document verified business findings and recommendations.

## 👤 Author

**Data Analyst | SQL | Power BI | Excel | Data Visualization**

This project is part of my data analytics portfolio, demonstrating practical skills in transforming structured data into business-focused analysis and interactive dashboards.
