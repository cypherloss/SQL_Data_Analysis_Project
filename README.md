# SQL Data Analysis Project

A professional SQL based data analysis project focused on understanding global layoff trends across companies, industries, stages, and countries. The project demonstrates a complete workflow from raw data ingestion and data cleaning to exploratory analysis using SQL queries.

## Project Overview

This repository contains a structured analysis of layoff data sourced from a CSV file. The project is designed to highlight how SQL can be used to:

* clean and standardize raw data,
* identify and remove duplicate records,
* handle missing or inconsistent values,
* transform date formats and invalid entries,
* perform exploratory analysis to answer business questions.

The analysis is centered on the `world_layoffs` dataset and the `layoffs` table, with a cleaned staging table used for downstream analysis.

## Dataset Description

The dataset contains global layoff information, including:

* Company name
* Location
* Industry
* Total employees laid off
* Percentage laid off
* Date of layoff
* Company stage (e.g., Post IPO, Series A, Acquired)
* Country
* Funds raised (in millions)

This is a realistic operational dataset used for SQL practice and business intelligence style reporting.

## Objectives

The project aims to:

1. Clean messy and inconsistent data from a real world CSV source.
2. Standardize values such as industries, countries, and dates.
3. Remove duplicate rows and incomplete records.
4. Prepare a reliable dataset for analytical queries.
5. Explore layoffs by company, industry, country, and funding stage.

## Repository Structure

```text
SQL_Data_Analysis_Project/
Data_Cleaning.sql: SQL script for cleaning, validation, and transformation
EDA.sql: Exploratory data analysis queries
layoffs.csv: Raw layoff dataset
README.md: Project documentation
.git: Git metadata
```

## Data Cleaning Workflow

The cleaning process implemented in `Data_Cleaning.sql` includes:

* loading the raw CSV into a staging table,
* detecting duplicate records using window functions such as `ROW_NUMBER()`,
* removing duplicate rows while preserving valid unique records,
* identifying blank or null industry values,
* backfilling missing industry names based on company level patterns,
* normalizing inconsistent industry values like `Crypto Currency` and `CryptoCurrency`,
* trimming malformed country values and cleaning text inconsistencies,
* converting date strings to proper `DATE` format,
* removing rows that lack essential layoff metrics.

These transformations make the dataset consistent and ready for analysis.

## Exploratory Data Analysis

The `EDA.sql` file contains queries used to explore the dataset and answer key questions such as:

* What is the maximum number of layoffs recorded in a single event?
* What is the highest percentage of layoffs observed?
* Which records correspond to complete workforce reduction scenarios?
* Which companies had unusually high layoffs relative to their funding or stage?

This exploratory phase is designed to highlight patterns and anomalies in the dataset using SQL aggregation and filtering.

## Database Setup

This project is intended for a MySQL compatible environment.

### Prerequisites

* MySQL or MariaDB
* A database named `world_layoffs`
* A table named `layoffs` or a staging table created from the imported data

### Import Steps

1. Create the database:

```sql
CREATE DATABASE world_layoffs;
USE world_layoffs;
```

2. Import `layoffs.csv` into a table named `layoffs`.

3. Run the SQL scripts in this order:

```sql
SOURCE Data_Cleaning.sql;
SOURCE EDA.sql;
```

## SQL Concepts Demonstrated

This project showcases several core SQL techniques, including:

* `SELECT` and `ORDER BY`
* `WHERE` and `LIKE` filtering
* `UPDATE` and `DELETE` statements
* `DISTINCT` and aggregation queries
* `ROW_NUMBER()` window functions for duplicate detection
* `ALTER TABLE` modifications for schema updates
* `STR_TO_DATE()` and date conversion
* `NULL` handling and data validation
* self joins for backfilling missing values

## Business Use Cases

This dataset can support business and analytical discussions such as:

* identifying which industries are most affected by layoffs,
* tracking layoffs by geography,
* comparing layoffs across funding stages,
* understanding the relationship between fundraising and workforce reductions,
* identifying anomalies in startup and post IPO employment patterns.

## Notes

The project is intentionally focused on SQL data cleaning and exploratory analysis rather than visual dashboarding. It is ideal for learning SQL workflows in a realistic business context.

## Summary

This repository demonstrates a complete SQL based data lifecycle: raw ingestion, cleaning, transformation, and exploratory analysis. It is suitable for students, analysts, and professionals looking to strengthen their SQL skills using a practical, real world dataset.