# Walmart ETL Project

## Project Description

For this project, we downloaded historical sales data for 45 Walmart stores located in different regions. You can access the data in our [Resources folder](Resources).
The data was housed in .csv files, which were imported to the open-source web application [Jupyter Notebook](https://jupyter.org "Jupyter Homepage"). Originally intended to predict department-wide sales for each store, we aimed to produce a concatenated database with all of the necessary information to run the proper data analyses, such as finding trends by store or department.

## Extract
In Jupyter Notebook, we imported the software library [Pandas](https://pandas.pydata.org "What is Pandas?").
As seen below, the imported .csv files were read into Pandas dataframes. Because there was only one year's worth of information on markdown sales, we decided to jettison that data.

![Initial 'features' table](https://github.com/jbizzlefoshizzle/Walmart_ETL/blob/master/Images/initial_features_import.png "Initial import of 'features' data")

## Transform

In order to better load the Walmart data into a data warehouse, we needed to rename field titles that were better suited for tables in a SQL database. Additionally, we had to create an 'id' field in our Pandas dataframes in order to create a primary key for each SQL table that would not lead to further complications in the joining process.


![Updated 'features' table](https://github.com/jbizzlefoshizzle/Walmart_ETL/blob/master/Images/updated_features.png "Updated 'features' data")

## Load

With some help from the Python SQL toolkit [SQLAlchemy](https://www.sqlalchemy.org "What is SQLAlchemy?"), we were able to use a relational database service (RDS) string in order to append data gathered and modified within Jupyter Notebook.
As a result, we can now access and query the tables within the SQL database from the safety and comfort of Jupyter Notebook.

## Data Sources

[Walmart Recruiting - Store Sales Forecasting](https://www.kaggle.com/c/walmart-recruiting-store-sales-forecasting/data "csv data files")
