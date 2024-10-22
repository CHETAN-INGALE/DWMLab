-- https://livesql.oracle.com/ords/livesql/s/b3imewoeclgf34w7zr70r8agp

CREATE TABLE OLAP 
(CUST_ID NUMBER(3) PRIMARY KEY, 
CUST_NAME VARCHAR2(20), 
NO_OF_PRODUCTS NUMBER(3), 
STORE_NAME VARCHAR2(54), 
STORE_LOCATION VARCHAR2(25))
;

INSERT INTO OLAP VALUES('1','ARCHIT KONDE','2','Star Bazzar','THANE')
;

INSERT INTO OLAP VALUES('2','SAAKSHI DEOKAR','1','DMart','GOREGAON')
;

INSERT INTO OLAP VALUES('3','HASAN RIZVI','4','DMart','THANE')
;

INSERT INTO OLAP VALUES('4','MEGA MODHA','3','Big Bazaar','GHATKOPAR')
;

INSERT INTO OLAP VALUES('5','MAYURESH PHANSIKAR','2','DMart','SEAWOODS')
;

INSERT INTO OLAP VALUES('6','INJILA HUSSAIN','1','Big Bazaar','KURLA')
;

INSERT INTO OLAP VALUES('7','SAURABH KILLEKAR','2','Hyper City','THANE')
;

INSERT INTO OLAP VALUES('8','SAKSHI KHARE','1','Star Bazzar','GHATKOPAR')
;

-- Complete Table
SELECT * FROM OLAP
;

-- Roll up
SELECT STORE_NAME, SUM(NO_OF_PRODUCTS) AS TOTALPRODUCT FROM OLAP 
GROUP BY STORE_NAME
;

-- Roll up
SELECT STORE_LOCATION, SUM(NO_OF_PRODUCTS) AS TOTALPRODUCT FROM 
OLAP GROUP BY STORE_LOCATION
;

-- Drill Down
SELECT CUST_ID,CUST_NAME,NO_OF_PRODUCTS, STORE_LOCATION FROM OLAP
;

-- Slice
SELECT * FROM OLAP WHERE STORE_LOCATION='THANE'
;

-- Dice
SELECT * FROM OLAP WHERE NO_OF_PRODUCTS=2 AND 
STORE_LOCATION='THANE'
;

/*
1. Objective of the Experiment
To explore and implement key Online Analytical Processing (OLAP) operations that enhance data analysis capabilities in a data warehouse, enabling users to perform complex queries and derive insights efficiently.

2. Conceptual Framework
OLAP Overview: Define OLAP as a category of software technology that allows users to analyze data stored in data warehouses from multiple perspectives.
Multidimensional Data Model: Discuss the structure of multidimensional data (cubes) that OLAP operates on, including dimensions, measures, and hierarchies.

3. Key OLAP Operations
Each operation allows users to view and analyze data from different perspectives:

a. Slice
Definition: The slice operation involves selecting a single dimension from a cube, effectively creating a new sub-cube by filtering out data based on certain criteria.
Example: If you have a sales cube, slicing might involve selecting data for a specific year (e.g., 2023) while keeping all other dimensions (e.g., products, regions) intact.

b. Dice
Definition: The dice operation produces a sub-cube by selecting multiple dimensions and filtering based on specific values.
Example: Dicing the sales data to show sales for specific products (e.g., "Electronics") in a particular region (e.g., "North") during a selected time frame (e.g., Q1 2023).

c. Rollup
Definition: The rollup operation aggregates data by climbing up a hierarchy in one or more dimensions, summarizing detailed data into higher levels of granularity.
Example: Rolling up sales data from the daily level to the monthly level, which consolidates all daily sales figures into a single monthly figure.

d. Drilldown
Definition: The drilldown operation is the opposite of rollup; it allows users to navigate from less detailed data to more detailed data, going down a hierarchy.
Example: Drilling down from monthly sales figures to view daily sales data, providing more granularity in the analysis.

e. Pivot
Definition: The pivot operation (also known as rotation) reorients the data in the cube, allowing users to view it from different perspectives by swapping the dimensions.
Example: Changing the view from "Sales by Product by Region" to "Sales by Region by Product" to analyze the data from another angle.

4. Implementation Process
Data Preparation: Ensure the data is cleaned, transformed, and loaded into a suitable OLAP structure.
Cube Creation: Define the dimensions and measures to create the OLAP cube.
OLAP Tool Selection: Choose an OLAP tool or platform (e.g., Microsoft Analysis Services, Oracle OLAP) for performing these operations.
Performing Operations: Execute each of the OLAP operations using the chosen tool, documenting the process and results.

5. Use Cases and Applications
Provide examples of business scenarios where each OLAP operation can be applied, such as:
Marketing analysis using slicing to target specific customer segments.
Financial reporting using rollup to summarize quarterly results.
Sales strategy adjustments based on insights derived from dicing.

6. Evaluation Metrics
Assess the effectiveness of OLAP operations based on criteria such as:
Query performance and response time.
User satisfaction and ease of use.
Insight generation capabilities.

7. Challenges and Solutions
Identify potential challenges in implementing OLAP operations, such as:
Complexity in data hierarchies.
Performance issues with large datasets.
Discuss solutions or best practices to overcome these challenges.

Conclusion
Summarize the importance of OLAP operations in enhancing data analysis capabilities and decision-making processes in a business context.
*/