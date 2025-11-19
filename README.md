# Walmart Data Analysis — End-to-End Python + SQL + Tableau Project

## Project Overview

This project uses:
- Python for data cleaning, preprocessing, transformation
- PostgreSQL (pgAdmin4) for SQL analysis
- Kaggle API for dataset download
- VS Code for development workflow
- Tableau for dashboard visualization

## Project Pipeline

### 1. Environment Setup
- Tools: Python, PostgreSQL (pgAdmin4), VS Code, tableau
- Create a clean folder structure
- Set up the workspace

### 2. Kaggle API Setup
- Download `kaggle.json` from Kaggle → Account → API
- Place it inside `.kaggle/`
- Use command:
kaggle datasets download -d <dataset-name>

### 3. Download Walmart Sales Data
- Source: Walmart Sales Dataset (Kaggle)
- Store raw dataset inside `data/`

### 4. Install Required Libraries

- Place it inside `.kaggle/`
- Use command:
pip install pandas numpy sqlalchemy psycopg2

### 5. Load Data with Python
- Use Pandas to explore data:
  - df.info()
  - df.describe()
  - df.head()

### 6. Data Cleaning
- Remove duplicates
- Fix missing values
- Convert date/time
- Clean currency symbols
- Standardize data types
- Validate outputs

### 7. Feature Engineering
- Create `total_amount = unit_price * quantity`
- Add useful time fields

### 8. Load Data into PostgreSQL
- Use sqlalchemy + psycopg2
- Create tables
- Insert cleaned data
- Validate with SELECT queries in pgAdmin

### 9. SQL Business Analysis
- Revenue trends by branch and category
- Best-selling products
- City-wise performance
- Customer behavior and payment analysis
- Profit margin analysis
- Peak time and seasonal analysis

### 10. Project Publishing and Documentation
- Documentation: Maintain well-structured documentation of the entire process in Markdown or a Jupyter Notebook.
- Project Publishing:
  - All SQL files stored in `sql_queries/`.

## Tableau Dashboard Integration

Includes a professional Tableau dashboard built using cleaned data.

### Dashboard Features
- Revenue trends
- City-wise sales comparison
- Quantity vs. total amount
- Profit margin distribution
- Customer ratings
- Payment method breakdown
- Time-based analysis

## Requirements
- Python 3.8+
- SQL Databases: PostgreSQL
- Python Libraries:
- pandas, numpy, sqlalchemy, psycopg2
- Kaggle API Key (for data downloading)

## Getting Started

### Clone the repository
- git clone https://github.com/Nikita-Dongre/Walmart_SQL_Python_Project.git

### Move into the project directory
- cd Walmart_SQL_Python_Project

### Install required Python packages
- pip install -r requirements.txt

## Project Structure
|-- data/            # Raw data and transformed data
|-- sql_queries/     # SQL scripts for analysis and queries
|-- notebooks/       # Jupyter notebooks for Python analysis
|-- README.md        # Project documentation
|-- requirements.txt # List of required Python libraries
|-- main.py          # Main script for loading, cleaning, and processing data

## Results and Insights
This section will include your analysis findings:
- Sales Insights: Key categories, branches with highest sales, and preferred payment methods.
- Profitability: Insights into the most profitable product categories and locations.
- Customer Behavior: Trends in ratings, payment preferences, and peak shopping hours.

## Future Enhancements
- Additional data sources to enhance analysis depth.
- Automation of the data pipeline for real-time data ingestion and analysis.
  
## Acknowledgments
- Data Source: Kaggle’s Walmart Sales Dataset
- Inspiration: Walmart’s business case studies on sales and supply chain optimization.



