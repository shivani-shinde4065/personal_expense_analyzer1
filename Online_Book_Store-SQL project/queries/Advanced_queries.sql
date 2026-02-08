\\......ADVANCED QUERIES.....//
 
--1)retrive the total number of books sold for each genre:
select b.genre,sum(o.quantity)as book_sold
from orders o
join books b 
on o.book_id = b.book_id
group by b.genre;

--2)find the average price of books in the "fantacy" genre:
select avg(price) from books
where genre ='Fantasy';

--3)list customers who have placed atleast 2 orders:
select customer_id,count(order_id) from orders
group by customer_id
having count(order_id)>=2;
--or with group by name ....using join
select o.customer_id,c.name ,count(order_id) 
from orders o
join customers c
on o.customer_id = c.customer_id
group by o.customer_id,c.name
having count(order_id)>=2;

--4)find the most frequently ordered book:
select book_id,count(order_id) as count_order
from orders
group by book_id
order by count_order desc;

--5)show the top 3 most expensive books of 'fantasy' genre:
select * from (select * from books
               where genre = 'Fantasy'
               order by price desc)
               where rownum<=3;

--6)retrive the total quantity of books sold by each auther:
select b.author,sum(o.quantity) as book_sold
from orders o
join books b
on o.book_id = b.book_id
group by b.author;


--7)list the cities where customers who spend over $30 are located:
select distinct c.city ,total_amount
from orders o
join customers c
on o.customer_id = c.customer_id
where o.total_amount > 30;

--8)find the customer who spent the most on orders:

select  c.customer_id,c.name,sum(o.total_amount) as total_spent
from orders o
join customers c
on o.customer_id = c.customer_id
group by c.customer_id,c.name
order by total_spent desc;

--9) find the top 3 most selling books(by quantity):
select* from(
select b.title ,sum(o.quantity) as total_sold
from books b
join orders o
on b.book_id = o.order_id
group by b.title
order by total_sold desc)
where rownum <=3;
