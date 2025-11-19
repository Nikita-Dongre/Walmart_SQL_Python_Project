# Walmart Data Analysis — End-to-End SQL + Python + Tableau Project

A complete data analytics project that takes Walmart retail sales data from raw dataset → cleaning → PostgreSQL analysis → Tableau dashboard, demonstrating strong practical skills in Python, SQL, ETL pipelines, and Business Intelligence.

⭐ Project Overview

This end-to-end project extracts meaningful insights from Walmart sales data using:

Python → data loading, preprocessing, cleaning, transformation

PostgreSQL (pgAdmin4) → advanced SQL business analysis

Kaggle API → automated dataset download

VS Code → full development workflow

Tableau Dashboard → interactive retail performance visualization

This project is ideal for beginner → intermediate data analysts looking to develop real-world analytics and BI skills.

🛠️ Project Pipeline
1. Environment Setup

Tools Used:

Python (latest version)

PostgreSQL via pgAdmin4

VS Code

Goals:

Create a clean folder structure

Set up virtual environment

Maintain organized scripts, SQL files, notebooks

2. Kaggle API Setup

Download kaggle.json from Kaggle → Account → API

Place it in your local ~/.kaggle/ directory

Download dataset using the command:

kaggle datasets download -d <dataset-name>

3. Download Walmart Sales Data

Source: Walmart Sales Dataset from Kaggle

Store all raw files inside the data/ directory.

4. Install Required Libraries
pip install pandas numpy sqlalchemy psycopg2

5. Load Data with Python

Use Pandas to perform initial data checks:

df.info()

df.describe()

df.head()

This helps identify types, nulls, and inconsistencies.

6. Data Cleaning

Key cleaning steps:

Remove duplicates

Handle missing values

Convert and format date/time

Clean currency fields

Fix inconsistent data types

Validate cleaned outputs

7. Feature Engineering

Created useful computed fields, including:

total_amount = unit_price * quantity

(Optional) time-based fields like day, month, year, hour

These features simplify SQL aggregations later.

8. Load Cleaned Data into PostgreSQL

Process:

Connect using psycopg2 + sqlalchemy

Create tables from Python

Insert cleaned data into PostgreSQL

Validate with sample SELECT queries in pgAdmin4

All final analysis is performed in PostgreSQL.

9. SQL Analysis & Business Problem Solving

SQL queries answer real Walmart business scenarios:

Revenue trends by branch, category, or city

Best-selling product categories

Customer behavior by time and location

Payment method distribution

Profit margin comparison

Peak sales hours and weekday patterns

All SQL scripts are organized in the sql_queries/ folder.

📊 Interactive Tableau Dashboard Integration

This project includes a professional Tableau dashboard built using the cleaned PostgreSQL/Python dataset.

Dashboard Highlights

Revenue trends by branch & category

City-wise performance comparison

Quantity vs. total amount visuals

Profit margin distribution

Customer rating analysis

Payment method breakdown

Time-series analysis (hour, day, month)

Purpose of the Dashboard

The dashboard transforms raw SQL insights into interactive BI visuals, making the project fully end-to-end:

API → Python → Cleaning → PostgreSQL → SQL → Tableau

📁 Project Structure
|-- data/               # Raw & cleaned datasets  
|-- sql_queries/        # PostgreSQL SQL scripts  
|-- notebooks/          # Jupyter EDA & analysis  
|-- main.py             # ETL: cleaning + load to PostgreSQL  
|-- requirements.txt    # Dependencies  
|-- README.md           # Project documentation  

🔍 Results & Key Insights

Top-performing cities, branches, and product categories

Most profitable items and store locations

Customer behavior patterns (ratings, payment methods, etc.)

Seasonal and hourly sales trends

Product demand and revenue forecasting opportunities

🚀 How to Get Started

Clone the repository:

git clone <repo_link>


Install dependencies:

pip install -r requirements.txt


Steps to run:

Set up Kaggle API

Download dataset

Run main.py to clean + load data

Execute SQL scripts in PostgreSQL

Explore insights in Tableau

🔮 Future Enhancements

Automated ETL pipeline

Adding machine learning demand forecasting

More advanced Tableau dashboards

Real-time analytics pipeline using Airflow + PostgreSQL

🙌 Acknowledgments

Kaggle — Walmart Sales Dataset

Walmart retail analytics case studies
