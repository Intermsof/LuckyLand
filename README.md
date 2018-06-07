# LuckyLand

## Description
A hypothetical clothing chain, Lucky Land, requested both an OLTP and an OLAP sql database designs for tracking customer purchases of items, and the factory from which said items were sent. Daily ETL tasks must be made from the OLTP to OLAP database for business intelligence. This project solves the requested problem with the database design described below, as well as an Microsoft SSIS package for ETL task.

## OLTP Design
A <b>transaction</b> table has foreign keys (FK) to <b>Customer</b> tables, <b>Items</b> table, and a <b>Factory</b> table.

The Customer, and Factory Table has FK to an <b>Address</b> table (which models the shipping to / from addresses respectively). 

The Address Table has FK to City, State, and Country tables.

The Transaction table has FK to an <b>ItemType></b> table.

## OLAP Design
There are three different dimensions in the OLAP database: <b>Customer, Factory, Item</b>. The collumns in the Address table and ItemType is de-normalized into these dimensions.

There is one fact table: <b>Purchase</b>, which has FK to the three dimensions.

## ETL 
The current ETL simply takes fields from the OLTP database and puts them into the OLAP database using the <b>Truncate and Load pattern </b>. 
