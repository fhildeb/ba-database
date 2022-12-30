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

### 8.2 Quantity and Similarity Comparisons

1. List suppliers with legal form `AG`.
2. List articles that came from `Canon`.
3. Output article designations for `2713`, `9779`, and `9878` by using logical operators and quantity comparison.
4. Output articles by type `HS` or `HX`by using an alternative query option.
5. List all articles that have a `2` in the article number by extending intager comparison.
6. List all articles that load the warehouse at least `20%` and at most `80%`.
7. List orders between `10/31/2011` and `11/15/2011`.

### 8.3 Scalar and Aggregation Functions

1. Output today's date.
2. List orderes in which items were ordered
3. List days of the week were articles were ordered in German and English by `altering sessions`.
4. Output suppliers that were ordered on a `Wednesday` and `Tuesday` separately.
5. Categorize the stock related to its utilization, but without materializing it in the database. Use low `<20%`, medium `20%-70%`, and high `>70%` descriptions.
6. Output at which position the character `e` appears for the first time in the item names.
7. Output the first 5 chars of the supplier's name and designate the resulting attribute of the relation as `prefix`.
8. Extract the manufacturers from the item names.
9. Extract the type designation from the item designation.
10. List how many suppliers there are in total, and how many of them have their bank account at the `Sparkasse`.
11. List the maximum total price for an ordered item.
12. List the amount of order items that have a total price `>200€`
13. Form number circles with respect to the first digit of the article number. How many items appear in number range 2?
14. Output the first three articles in alphabetical order.

## Practical Session 9

#### 9.1 Partitioning

1. Output the number of items per order.
2. Output the maximum, minimum and average number of items ordered.
3. Output orders that have more than one order item.
4. Output how much each ordercost by only using the relation order position.
5. Calculate the total cost per order and sort them by cost in descending order.
6. List orders that cost `>1000€`.
7. Show the price for the most expensive order.
8. List how many ordered items there are in different categories. `0-50€` cheap, `51-200€` average, `>200€` expensive.

#### 9.2 Compound Requests

1. List which suppliers carry which articles in their product range.
2. List Which articles were ordered before `15.11.2011`, and which after.
3. Show the amount of orders for each article since `01.09.2011`.
4. Show in what total quantity the articles have been ordered since `15.09.2011`.
5. Output how often the articles were ordered and in what quantity.
6. Output from which supplier the item `Olympus VG-130` was ordered?
7. Specify the bank details as well as the concrete amounts to be paid resulting from the orders since `15.11.2011` inclusively.
8. Specify which articles need to be reordered urgently by ignoring the current orders.
