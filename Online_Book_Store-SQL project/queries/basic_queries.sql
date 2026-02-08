select* from books;
select* from customers;
select* from orders;

\\..........BASIC QUERIES........//

--1)retrive all books in the "Fiction" genre:
select* from books
where Genre = 'Fiction';

--2)find books piblished after the year 1950:
select* from books
where published_year> 1950;

--3)list all the customers from the Canada:
select* from customers
where country = 'Canada';

--4)show orders placed in november 2023:
select* from orders
where order_date between '1-11-23' and '30-11-23';

--5)retrive the total stock of books available:
select sum(stock) as total_stocks from books ;

--6)find the details of most expensive book:
select* from books
order by price desc;

--7)show all customers who orderd more than 1 quantity of a book:
select customer_id,count(*) as quantity from orders 
group by customer_id 
having quantity >1;

--8)retrive all orders where the amount exceeds 20;
select * from orders
where total_amount>20;

--9)list all the genres available in the books table:
select distinct genre from books;
--find the book with the lowest stock:
select *from books order by stock asc;

--10)calculate the total revenue  generated from all orders:
select sum(total_amount)as total_revenue from orders;
