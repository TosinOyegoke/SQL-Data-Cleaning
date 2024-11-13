-- Data Cleaning
-- Importing the Table
Select *
From store_sales;

-- 1. Removing Duplicates if any
-- 2. Standardise the Data
-- 3. Null or Blank values
-- 4. Remove any unnecessary columns

-- Creating Duplicate Table
Select * 
Into store_sales_stagiing
From store_sales;

Select *
From store_sales_stagiing;

-- Removing Duplicates
Select *,
Row_number() Over (Partition by Order_Id, Order_Date, Not_Specified, Unit_Price, 
	Sales, Ship_Mode, Shipping_Cost, Province, 
	Customer_Segment, Product_Category
	Order By Order_Id) As Row_Num
From store_sales_stagiing;

--Creating CTE to check for Duplicates
With duplicate_cte As
(
Select *,
	Row_number() Over (Partition by Order_Id, Order_Date, Not_Specified, Unit_Price, 
				Sales, Ship_Mode, Shipping_Cost, Province, 
				Customer_Segment, Product_Category,Product_Sub_Category, Product_Container, Ship_Date
		Order By Order_Id) As Row_Num
From store_sales_stagiing
)
Select *
From duplicate_cte
Where Row_Num > 1;

--Results show no duplicates

Select*
From store_sales_stagiing;

--Standardising Data
Select Trim(Ship_Mode)
From store_sales_stagiing;

Update store_sales_stagiing
Set Ship_Mode = Trim(Ship_Mode);

Select *
From store_sales_stagiing;

Select *
From store_sales_stagiing
Where Province Like 'British Columbia';

Select Distinct Product_Container
From store_sales_stagiing
Order By 1;

Alter Table store_sales_stagiing
Alter column Product_Sub_Category nvarchar(50) Null;

Select *
From store_sales_stagiing
Where Product_Sub_Category Like '%Scissors%'
Order by 1;


-- Removing and Checking for Null Values
Select *
From store_sales_stagiing
Where Product_Container Is Null
And Order_Quantity Is Null;

Select *
From store_sales_stagiing
where Order_Quantity Is Null
Or Ship_Date = ' ';

Select Sales
From store_sales_stagiing
Where Sales = 14915601;

Delete
From store_sales_stagiing
Where Product_Container Is Null
And Order_Quantity Is Null;

-- ALl Null values were Deleted it cannot be trusted

Select *
From store_sales_stagiing;