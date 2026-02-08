# Online Book Store

An Online Book Store database project that manages books, customers, orders, and sales. 
It allows storing book details, tracking customer purchases, and generating sales reports.

---

## Features
- Store and manage book details (title, genre,author, price, stock)
- Store and manage customer information
- Track customer orders and sales
- Generate queries for:
  - Top-selling books
  - Monthly revenue
  - Customer activity reports

---
## Files in the Project 
-creating tables 
to create the tables
-import _data_screenshot
-basic_queries
-advanced_queries
-books csv
-customers csv
-orders csv
-Er-diagram.pdf


## Database Structure
The project uses a relational database with the following tables:

- **Books**: Contains book details like book_ID, title, author,genre,published_year, price, and stock.
- **Customers**: Contains customer information such ascustomer_ID, name, email,phone,city and country.
- **Orders**: Stores order information including order_ID, customer_ID, book_ID,order_date, quantity, and total amount.

### ER Diagram
![ER Diagram](ER-Diagram.pdf)
---


## Sample Queries

Some example queries included in the project:
         
          ##BASIC QUERIEs##

-**Retrieve all books in the "Fiction" genre**
-**Find books published after the year 1950**
-**List all customers from the Canada**
-**Show orders placed in November 2023**
-**Retrieve the total stock of books available**
-**Find the details of the most expensive book**
-**Show all customers who ordered more than 1 quantity of a book**
-**Retrieve all orders where the total amount exceeds $20**
-**List all genres available in the Books table**
-**Find the book with the lowest stock**
-**Calculate the total revenue**

          ##ADVANCED QUERIES##

-**Retrieve the total number of books sold for each genre**
-**Find the average price of books in the "Fantasy" genre**
-**List customers who have placed at least 2 orders**
-**Find the most frequently ordered book**
-**Show the top 3 most expensive books of 'Fantasy' Genre**
-**Retrieve the total quantity of books sold by each author**
-**List the cities where customers who spent over $30 are located**
-**Find the customer who spent the most on orders**


           ##Author##

**Shivani Balaji Shinde**