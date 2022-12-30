<style type="text/css">
    ol { list-style-type: upper-alpha; }
</style>

# SQL Scripts

SQL Scripts to create and manage database tables.

> **_NOTE:_** Commentary appears in German.

All scripts share a database of a company with assortment and stock, in which articles, orders and suppliers can be registered.

![SQL Sessions](/img/sql_practicals.png)

## Convenience

- `create_script`: Create all tables in correct relation order
- `fill_script`: Fill all tables with contents
- `drop_script`: Remove all tables from the database

## Practical Session 7

### 7.1: Data Modellation

Creating all tables and relations.

### 7.2: Data Manipulation

Adjusting inventories, relations and suppliers.

## Practical Session 8

### 8.1 Querying

#### Regular Reading

1. Output all articles in long and short syntax.
2. Output the purchase orders in chronological and reverse order.

#### Restrictive Qeueries

3. List suppliers that have their account with the savings bank.
4. List suppliers that have their account either with `ING-DIBA` or with `Commerzbank`.

#### Multi-Table Restriction

5. Show Which articles are available in more than 20 units in the warehouse.
6. Show which articles are filled up above 50% of the stock capability.

#### Duplication Annulment

7. Output articles that have been ordered without duplicating order numbers.
8. Output which reorder points are relevant for the articles without duplicating stocks.

#### Restructuring Query Returns

9. Show the article description as `article_name`.
10. Show the stocks of the articles with the result relation containing `article ID`, `all stock types`, and `date`.
