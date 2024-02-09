create database paytm;
use paytm;
create table payment(
	customer_id int primary key,
    customer varchar(25),
    mode text not null,
    city varchar(20)
);
insert into payment
(customer_id, customer, mode, city)
values
(101, "Olivia Barrett", "Netbanking", "Portland"),
(102, "Ethan Sinclair", "Credit Card", "Miami"),
(103, "Maya Hernandez", "Credit Card", "Seattle"),
(104, "Liam Donovan", "Netbanking", "Denver"),
(105, "Sophia Nguyen", "Credit Card", "New Orleans"),
(106, "Caleb Foster", "Debit Card", "Minneapolis"),
(107, "Ava Patel", "Debit Card", "Phoenix"),
(108, "Lucas Carter", "Netbanking", "Boston"),
(109, "Isabella Martinez", "Netbanking", "Nashville"),
(110, "Jackson Brooks", "Credit Card", "Boston");

select * from payment;
select mode, count(customer) from payment group by mode; -- total number of payment according to each payment method.