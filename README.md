# Walmart Data Analysis: End-to-End SQL + Python Project 
## Project Overview

This project is an end-to-end data analytics solution designed to extract key business insights from Walmart sales data.
It uses:

Python → Data preprocessing, cleaning, and transformation

PostgreSQL (pgAdmin4) → Advanced SQL analysis

Kaggle API → Automated dataset download

VS Code → Full development workflow

This project is ideal for beginner to intermediate data analysts looking to strengthen skills in SQL querying, Python-based cleaning, ETL pipeline creation, and business insights generation.

## Project Pipeline
1. Set Up the Environment

Tools Used: VS Code, Python latest version, PostgreSQL (via pgAdmin4)

Goal: Create a clean, structured workspace and organized project folders.

2. Kaggle API Setup

Download your kaggle.json from Kaggle → Account → API.

Place it inside the .kaggle/ directory.

Download the dataset using:

kaggle datasets download -d <dataset-path>

3. Download Walmart Sales Data

Source: Kaggle – Walmart Sales Dataset

Store all raw files in the data/ folder.

4. Install Required Libraries & Load Data

Install dependencies:

pip install pandas numpy sqlalchemy psycopg2


Load data into Pandas for analysis and preprocessing.

5. Explore the Data

Perform initial EDA using:

.info()

.describe()

.head()

This helps detect data types, missing values, and structural issues.

6. Data Cleaning

Cleaning steps include:

Removing duplicates

Handling missing values

Converting date columns

Cleaning currency symbols

Fixing inconsistent data types

Validating cleaned output

7. Feature Engineering

Create additional helpful fields such as:

total_amount = unit_price * quantity

This feature makes SQL aggregations simpler and faster.

8. Load Data into PostgreSQL

Use sqlalchemy and psycopg2 to connect to PostgreSQL

Create tables using Python

Insert cleaned data

Verify by running SELECT queries in pgAdmin4

All analysis is performed only in PostgreSQL.

9. SQL Analysis & Business Problem Solving

Write and execute SQL queries to answer real retail business questions:

Revenue trends by branch and category

Best-selling product categories

Customer behavior by city and time

Payment method distribution

Profit margins across categories and branches

Peak sales hours and seasonal patterns

All SQL query scripts are stored in the sql_queries/ folder.

10. Project Publishing & Documentation

Document the entire process in a clear, well-organized structure:

README.md

Jupyter Notebooks

SQL Scripts

requirements.txt

Publish the repository on GitHub with full clarity and structure.

## Requirements

Python latest version

PostgreSQL (pgAdmin4)

Python Libraries:
pandas, numpy, sqlalchemy, psycopg2

Kaggle API Key for dataset download

## Getting Started

Clone the repository:

git clone <repo-url>


Install dependencies:

pip install -r requirements.txt


Set up Kaggle API → Download dataset → Follow the pipeline steps.

## Project Structure
|-- data/                     # Raw and cleaned datasets
|-- sql_queries/              # PostgreSQL SQL scripts
|-- notebooks/                # Jupyter Notebooks for EDA and analysis
|-- README.md                 # Project documentation
|-- requirements.txt          # Python dependencies
|-- main.py                   # Script for cleaning & loading data into PostgreSQL

## Results & Insights

Key insights include:

Top-performing cities, branches, and categories

Most profitable items and locations

Customer preferences (ratings, payment methods)

Sales time trends (peak hours, busy days, seasonal patterns)

## Tableau Dashboard Integration

In addition to Python and SQL analysis, this project includes a fully interactive Tableau dashboard built using the cleaned Walmart sales dataset. The dashboard visualizes key business metrics and allows stakeholders to quickly explore trends and performance.

### Tableau Dashboard Features

Revenue trends by branch and category

City-wise sales comparison

Quantity sold vs. total amount

Profit margin distribution

Customer rating patterns

Payment method breakdown

Time-based analysis (hourly, daily)

 ### Dashboard Purpose

The Tableau dashboard provides a visual summary of the SQL insights, making the project end-to-end from:
API → Cleaning → PostgreSQL → SQL Queries → Visual Dashboard.

## Future Enhancements

Adding new datasets

Automating ETL pipeline

Real-time analytics

## Acknowledgments

Kaggle – Walmart Sales Dataset
Walmart retail analytics case studies
