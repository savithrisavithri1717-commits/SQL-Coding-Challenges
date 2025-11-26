-- to create database 
create database books;
use books;

create table books(
  book_id int primary key,
  title varchar(100),
  author varchar(50),
  ISBN varchar(20),
  price decimal(8,2) check (price>0));
  
  create table orders(
     order_id int primary key,
     book_id int,
     orderdate date not null,
     quqntity int check(quqntity>0),
     foreign key (book_id) references books (book_id));
     
     alter table books
     add constraint unique_ISBN unique(ISBN);
     
     insert into books(book_id,Title,Author,ISBN,price) values
        (1, 'The Alchemi', 'Paulo coelho', 'ISBN1001', 499.00),
        (2, 'Atomic Habits', 'James clear', 'ISBN1002', 550.00),
        (3, 'Think like a monk', 'Jay shetty', 'ISBN1003',  450.00),
        (4, 'Deepwork', 'cal newport', 'ISBN1004', 600.00),
        (5, 'Ikigai', 'hector garcia', 'ISBN1005', 300.00);
        
 select * from books;    
 
 update books
 set price = 650.00
 where book_id = 4;

delete from orders
where order_id = 1;

truncate table orders;

 
 


  