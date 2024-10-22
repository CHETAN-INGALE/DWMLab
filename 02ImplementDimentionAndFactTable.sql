-- https://livesql.oracle.com/ords/livesql/s/b6q1sml6mlwrm41vblleb3v6m

CREATE TABLE Location ( 
    Location_ID INT PRIMARY KEY, 
    Region VARCHAR(100) 
)
;

CREATE TABLE Country ( 
    Country_ID INT PRIMARY KEY, 
    Country_Name VARCHAR(100) 
)
;

CREATE TABLE Dealer ( 
    Dealer_ID INT PRIMARY KEY, 
    Location_ID INT, 
    Country_ID INT, 
    Dealer_NM VARCHAR(100), 
    FOREIGN KEY (Location_ID) REFERENCES Location(Location_ID), 
    FOREIGN KEY (Country_ID) REFERENCES Country(Country_ID) 
)
;

CREATE TABLE Branch ( 
    Branch_ID INT PRIMARY KEY, 
    Name VARCHAR(100), 
    Address VARCHAR(255), 
    Country_ID INT, 
    FOREIGN KEY (Country_ID) REFERENCES Country(Country_ID) 
)
;

CREATE TABLE Date_Dim ( 
    Date_ID INT PRIMARY KEY, 
    Year INT, 
    Month INT, 
    Quarter INT 
)
;

CREATE TABLE Product ( 
    Product_ID INT PRIMARY KEY, 
    Product_Name VARCHAR(100), 
    Model_ID INT, 
    Variant_ID INT 
)
;

CREATE TABLE Fact ( 
    Revenue DECIMAL(18, 2), 
    Dealer_ID INT, 
    Model_ID INT, 
    Branch_ID INT, 
    Date_ID INT, 
    Units_Sold INT, 
    FOREIGN KEY (Dealer_ID) REFERENCES Dealer(Dealer_ID), 
    FOREIGN KEY (Branch_ID) REFERENCES Branch(Branch_ID), 
    FOREIGN KEY (Date_ID) REFERENCES Date_Dim(Date_ID) 
)
;

/*
1. Dimension Table
A dimension table is a structure that categorizes and describes the data within a data warehouse. It contains descriptive attributes (or fields) that provide context to the quantitative data stored in fact tables. Dimension tables typically have:

Attributes: Characteristics that provide more details (e.g., customer names, product descriptions, dates).
Primary Keys: Unique identifiers for each record, often used as foreign keys in fact tables.
Hierarchies: Organized levels of data (e.g., time hierarchy of Year > Quarter > Month).
Example: A Product dimension table might include fields like:

Product_ID (Primary Key)
Product_Name
Category
Manufacturer
Price


2. Fact Table
A fact table is a central table in a star schema of a data warehouse that stores quantitative data for analysis. It typically consists of:

Measures: Numeric values that are analyzed (e.g., sales amount, quantity sold).
Foreign Keys: References to the primary keys in dimension tables, enabling connections between facts and their related attributes.
Granularity: The level of detail in the data, which can affect the table's size and query performance (e.g., daily sales vs. monthly totals).
Example: A Sales fact table might include fields like:

Sales_ID (Primary Key)
Date_ID (Foreign Key referencing the Date dimension)
Product_ID (Foreign Key referencing the Product dimension)
Customer_ID (Foreign Key referencing the Customer dimension)
Quantity_Sold
Sales_Amount
Together, dimension and fact tables create a structured way to store and analyze data, enabling businesses to gain insights and make informed decisions.
*/
-- Ye bhi he par avoid this https://livesql.oracle.com/ords/livesql/s/b31cm15xsbo3pz2avjp6a330y