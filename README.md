# SQL Data Cleaning
 I used SQL Server to clean datasets while standardising, filtering, checking and removing nulls where necessary, checking for and standardising duplicates among other data cleaning specifics

# Data Cleaning Project: Store Sales Data

This project focuses on cleaning store sales data for improved data quality and analysis readiness. The data before cleaning contained several issues such as missing values, inconsistent data formats, and duplicate rows. The SQL script in this repository addresses these issues and prepares the data for reliable analysis.

## Project Structure

- **before-cleaning**: Contains the raw data and a list of identified data issues.
- **after-cleaning**: Holds the cleaned data and a summary of changes made.
- **scripts**: Contains the SQL code used to clean the data.
- **images** (optional): Holds any visual representations or screenshots showing "before and after" comparisons.

## Dataset

The dataset records information about store sales transactions, including fields like `Order ID`, `Order Date`, `Order Quantity`, `Sales`, `Shipping Cost`, and others.

## Data Cleaning Process

Key steps in the data cleaning process include:

1. **Handling Missing Values**: Replacing or removing rows with null values based on relevance.
2. **Standardizing Data Formats**: Ensuring date formats and numerical values are consistent.
3. **Removing Duplicates**: Identifying and removing duplicate entries based on `Order ID`.
4. **Outlier Removal**: Addressing outliers in fields like `Order Quantity` and `Shipping Cost`.

