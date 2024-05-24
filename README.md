# E-Commerce Data Management and Visualization System

This repository contains the code and resources used to build a data management and visualization system for an e-commerce brand. The system utilizes simulated data, a relational database, and an interactive Power BI dashboard.

**Project Overview:**

This project simulates e-commerce operations for a chosen brand. The system encompasses:

* **Data Generation:** Python scripts create realistic data for product types, customer details, and sales information using the Faker library.
* **Database Design:** A relational database schema is designed in MS SQL. The schema utilizes eight interconnected tables to avoid data redundancy and ensure efficient management.
* **Data Population:** The generated data is formatted as CSV files and imported into the database using SQL queries.
* **Power BI Dashboard:** An interactive dashboard is developed in Power BI to visualize key business metrics, focusing on:
    * Sales trends
    * Product performance
    * Customer demographics
    * **Deep dive capabilities** for further analysis

**Technologies Used:**

* Python (data generation)
* Faker library (simulated data creation)
* MS SQL (database management)
* Power BI (data visualization)

**Project Files:**

* `Data Generation Using Faker Library.ipynb`: Script for generating simulated data
* `Ecommerce.sql`: Script for creating the database schema 
* `Ecommerce.sql`: Script for importing data into the database 
* `Ecommerce Dashboard.pbix`: Power BI dashboard file
* `README.md`: This file

**Presentation:**

A video presentation (not included in this repository) explains the methodological approach, steps taken, and insights derived from the project.

[Video Presentation](https://drive.google.com/file/d/1R-lOIrTZHRJKp4vHzR7qk5XnRyyaBK2T/view?usp=sharing)

**Getting Started:**

1. Ensure you have Python, Faker, and a database management tool (like MS SQL Server Management Studio) installed.
2. Install any additional libraries required by the Python script (refer to script comments).
3. Configure the database connection details in the SQL scripts.
4. Run the `Data Generation Using Faker Library.ipynb` script to create simulated data.
5. Execute the `Ecommerce.sql` script to create the database tables in your MS SQL Server instance.
6. Execute the `Ecommerce.sql` script to populate the database with generated data.
7. Download and install Power BI Desktop.
8. Import the data model from your MS SQL Server database into Power BI.
9. Develop the dashboard visuals and functionalities in Power BI.

**Note:** The SQL scripts (`Ecommerce.sql` and `Ecommerce.sql`) need to be modified to reflect your specific MS SQL Server setup (database name, server name, authentication method, etc.).
