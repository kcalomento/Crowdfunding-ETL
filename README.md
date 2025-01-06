# Crowdfunding-ETL

## Overview
The Crowdfunding-ETL project is a collaborative effort designed to create a seamless Extract, Transform, Load (ETL) pipeline. Using Python, Pandas, and PostgreSQL, this project extracts raw data, transforms it into meaningful datasets, and loads it into a relational database. The project simulates real-world ETL scenarios and emphasizes building relationships across datasets while ensuring data integrity.

## Key Deliverables

### 1. **Category and Subcategory DataFrames**
- **Category DataFrame**:
  - A `category_id` column with sequential IDs (e.g., `cat1`, `cat2`, ...).
  - A `category` column with unique category titles.
  - Exported as `category.csv`.
- **Subcategory DataFrame**:
  - A `subcategory_id` column with sequential IDs (e.g., `subcat1`, `subcat2`, ...).
  - A `subcategory` column with unique subcategory titles.
  - Exported as `subcategory.csv`.

### 2. **Campaign DataFrame**
- **Columns Included**:
  - `cf_id`, `contact_id`, `company_name`, `description`, `goal` (float), `pledged` (float), `outcome`, `backers_count`, `country`, `currency`, `launch_date` (datetime), `end_date` (datetime), `category_id`, `subcategory_id`.
- **Transformations**:
  - UTC dates converted to `datetime` format.
  - Category and subcategory IDs mapped to their respective DataFrames.
  - Exported as `campaign.csv`.

### 3. **Contacts DataFrame**
- **Columns Included**:
  - `contact_id`, `first_name`, `last_name`, `email`.
- Exported as `contacts.csv`.

### 4. **Crowdfunding Database**
- **Schema**:
  - A PostgreSQL schema defined in `crowdfunding_db_schema.sql`.
  - Includes tables: `contacts`, `category`, `subcategory`, and `campaign`.
- **Foreign Keys**:
  - `campaign.contact_id` references `contacts.contact_id`.
  - `campaign.category_id` references `category.category_id`.
  - `campaign.subcategory_id` references `subcategory.subcategory_id`.
- **Data Imported**:
  - CSV files loaded into respective tables without errors.
- **Verification**:
  - Data integrity verified through `SELECT` statements.

## Repository Structure
```plaintext
Crowdfunding-ETL/
|-- ERD/
|   |-- updated_erd.png
|
|-- Resources/
|   |-- campaign.csv
|   |-- category.csv
|   |-- contacts.csv
|   |-- contacts.xlsx
|   |-- crowdfunding.xlsx
|   |-- subcategory.csv
|
|-- ETL_Mini_Project_KFormento_SGold.ipynb
|-- crowdfunding_db
|-- crowdfunding_db_schema.sql
|-- README.md
```

## Challenges and Solutions
- **Challenge**: Maintaining data integrity during the foreign key relationship setup.
  - **Solution**: Ensured that referenced keys existed before establishing relationships.
- **Challenge**: Transforming raw data into clean and meaningful DataFrames.
  - **Solution**: Utilized Pandas for efficient data cleaning and transformation.

## Technologies Used
- **Programming Language**: Python (Pandas)
- **Database**: PostgreSQL
- **Tools**: Jupyter Notebook / VS Code

## Contributors
- **K. Formento**
- **S. Gold**
