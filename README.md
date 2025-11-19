# Walmart Data Analysis — End-to-End Python + SQL + Tableau Project

A complete data analytics project that takes Walmart retail sales data from raw dataset → cleaning → PostgreSQL analysis → Tableau dashboard.

## Project Overview

This project uses:
- Python for data cleaning, preprocessing, transformation
- PostgreSQL (pgAdmin4) for SQL analysis
- Kaggle API for dataset download
- VS Code for development workflow
- Tableau for dashboard visualization

Ideal for beginner to intermediate data analysts.

## Project Pipeline

### 1. Environment Setup
- Tools: Python, PostgreSQL (pgAdmin4), VS Code
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

All SQL files stored in `sql_queries/`.

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

## Project Structure
|-- data/
|-- sql_queries/
|-- notebooks/
|-- main.py
|-- requirements.txt
|-- README.md

## Key Insights
- Top-performing branches, cities, categories
- Most profitable items
- Customer preference patterns
- Seasonal & time-based sales trends

## Getting Started
git clone <repo_link>
pip install -r requirements.txt

Steps:
- Set up Kaggle API
- Download dataset
- Run `main.py`
- Execute PostgreSQL queries
- Open Tableau dashboard

## Future Enhancements
- Automated ETL
- Forecasting models
- Real-time dashboards
- Additional datasets

## Acknowledgments
- Kaggle — Walmart Sales Dataset
- Walmart analytics case studies



