
# Improving Sales Performance Analysis for a Retail Company

![star&snowflake]()

## Background
XYZ Retail is a mid-sized retail company with multiple stores across the country. Over the years, the company has accumulated a vast amount of sales data from various sources including point-of-sale (POS) systems, online sales, inventory management systems, and customer relationship management (CRM) systems. However, the data is siloed, making it difficult for the management to analyze sales performance, identify trends, and make informed decisions.

## Objective
The goal of this project is to build a data warehouse that consolidates all sales-related data, enabling the management team to perform comprehensive analysis and reporting. The primary objectives include:

- **Data Integration**: Centralize data from multiple sources for consistent reporting.
- **Performance Analysis**: Enable sales performance tracking over different time periods.
- **Trend Identification**: Identify trends in sales, customer preferences, and inventory turnover.
- **Decision Support**: Provide actionable insights to support strategic decisions.

## Dimensional Modeling
To meet the objectives, we will design a dimensional model using both star and snowflake schemas.

---

### 1. Star Schema Design
In a star schema, the fact table is at the center, surrounded by dimension tables. This model is simpler and improves query performance.

#### Fact Table: Sales Fact

**Attributes**:
- Sales_ID (Primary Key)
- Date_ID (Foreign Key)
- Store_ID (Foreign Key)
- Product_ID (Foreign Key)
- Customer_ID (Foreign Key)
- Quantity_Sold
- Total_Sales_Amount

#### Dimension Tables:

##### Date Dimension
- Date_ID (Primary Key)
- Date
- Month
- Quarter
- Year
- Day_of_Week

##### Store Dimension
- Store_ID (Primary Key)
- Store_Name
- Location
- Manager

##### Product Dimension
- Product_ID (Primary Key)
- Product_Name
- Category
- Brand
- Price

##### Customer Dimension
- Customer_ID (Primary Key)
- Customer_Name
- Email
- Phone
- Membership_Status

---

### 2. Snowflake Schema Design
In a snowflake schema, dimension tables are normalized, which reduces redundancy but can complicate queries.

#### Fact Table: Sales Fact
- Same as in the star schema.

#### Dimension Tables:

##### Date Dimension
- Same as above.

##### Store Dimension
- Store_ID (Primary Key)
- Store_Name
- Location_ID (Foreign Key)

##### Location Dimension
- Location_ID (Primary Key)
- City
- State
- Zip_Code

##### Product Dimension
- Product_ID (Primary Key)
- Product_Name
- Category_ID (Foreign Key)
- Brand_ID (Foreign Key)

##### Category Dimension
- Category_ID (Primary Key)
- Category_Name

##### Brand Dimension
- Brand_ID (Primary Key)
- Brand_Name

##### Customer Dimension
- Same as above.

---

## Conclusion
By implementing a data warehouse using either a star or snowflake schema, XYZ Retail can significantly enhance its ability to analyze sales data, identify trends, and support strategic decision-making. The centralized data structure will streamline reporting processes and facilitate deeper insights into sales performance across different dimensions.
