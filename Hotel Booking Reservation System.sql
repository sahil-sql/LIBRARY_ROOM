create table Guests(
Guest_id int primary key,
name varchar (50),
Email varchar (40),
phone varchar(20)
);

drop table rooms;
create table rooms(
room_id int primary key,
room_type varchar(50),
rate numeric(10, 2),
Status varchar(60)
);

 drop table Rescervations;
create table Rescervations(
Rescervation_id int primary key,
Guest_id serial,
room_id serial,
check_in_out varchar(50),
foreign key(Guest_id) references Guests(Guest_id),
foreign key(room_id) references rooms(room_id)
);

select * from Rescervations;
drop table payments;

create table Payments(
Payment_id serial primary key,
amount numeric (10,2),
pay_mathod varchar(30),
Rescervation_id int not null unique,
foreign key(Rescervation_id) references Rescervations(Rescervation_id)
on delete cascade
);

-- Data insert 
insert into Guests
(Guest_id, name, Email, phone)
values
(1, 'jackson', 'jack@gmail.com', '7053000258'),
(2, 'lunna', 'lunna63@gmail.com', '7053002563'),
(3, 'Laim', 'liam00@gmail.com', '7053005852'),
(4, 'Noah', 'noah65@gmail.com', '7053005522'),
(5, 'Grasyon', 'grasyon20@gmail.com', '7053005522'),
(6, 'Jack', 'jack65@html.com', '7053004411'),
(7, 'Ryan', 'ryan44@html.com', '7053005544'),
(8, 'Benjamin', 'benjamin22@html.com', '7053007788'),
(9, 'Daniel', 'danial@html.com', '7053009966'),
(10, 'julian', 'julian06@html.com', '7053003366'),
(11, 'Caleb', 'caleb@gmail.com', '7053005522'),
(12, 'Luke', 'luke@gmail.com', '7053005623'),
(13, 'Sahil', 'sahil16@gmail.com', '7053006655'),
(14, 'Harshit', 'harshit90@gmail.com', '7053002200'),
(15, 'Levi', 'Levi@gmail.com', '7053005452'),
(16, 'Henry', 'hanry@html.com', '7053001144'),
(17, 'Metthew', 'metthew@html.com', '7053005522'),
(18, 'josiah', 'josiah07@html.com', '7053008855'),
(19, 'Jsaac', 'jasaac@html.com', '7053005599'),
(20, 'Oliva', 'oliva25@html.com', '7053008877'),
(21, 'Ava', 'ava@gmail.com', '7053002541'),
(22, 'Layla', 'layla62@gmail.com', '7053001254'),
(23, 'Fatima', 'fatima22@gmail.com', '7053004587'),
(24, 'Priya', 'priya25@gmail.com', '7053005698'),
(25, 'Mila', 'mila55@gmail.com', '7053005852'),
(26, 'Happer', 'happer41@html.com', '7053005588'),
(27, 'Lily', 'lily@html.com', '7053001458'),
(28, 'Chloe', 'chloe03@html.com', '7053005522'),
(29, 'Pari', 'pari02@html.com', '7053004521'),
(30, 'Mansi', 'mansi01@html.com', '7053008589');

-- Data insert
insert into rooms
(room_id, room_type, rate, status)
values
(1, 'Full_Acc', 5000.00, 'Booking'),
(2, 'Full_Acc', 10000.00, 'Booking'),
(3, 'Full_Acc', 4000.00, 'Booking'),
(4, 'Full_Acc', 3000.00, 'Booking'),
(5, 'Full_Acc', 2000.00, 'Booking'),
(6, 'Full_Acc', 2800.00, 'Not_Booking'),
(7, 'Full_Acc', 2700.00, 'Not_Booking'),
(8, 'Full_Acc', 2600.00, 'Not_Booking'),
(9, 'Full_Acc', 2500.00, 'Not_Booking'),
(10, 'Full_Acc', 2400.00, 'Not_Booking'),
(11, 'Full_Acc', 2300.00, 'Booking'),
(12, 'Full_Acc', 2200.00, 'Booking'),
(13, 'Full_Acc', 2100.00, 'Booking'),
(14, 'Full_Acc', 2000.00, 'Booking'),
(15, 'Full_Acc', 1900.00, 'Booking'),
(16, 'Non_Acc', 1500.00, 'Not_Booking'),
(17, 'Non_Acc', 1600.00, 'Not_Booking'),
(18, 'Non_Acc', 1700.00, 'Not_Booking'),
(19, 'Non_Acc', 1800.00, 'Not_Booking'),
(20, 'Non_Acc', 1400.00, 'Not_Booking'),
(21, 'Non_Acc', 1300.00, 'Booking'),
(22, 'Non_Acc', 1200.00, 'Booking'),
(23, 'Non_Acc', 1100.00, 'Booking'),
(24, 'Non_Acc', 1000.00, 'Booking'),
(25, 'Non_Acc', 95000.00, 'Booking'),
(26, 'Non_Acc', 900.00, 'Out_of_Booking'),
(27, 'Non_Acc', 850.00, 'Out_of_Booking'),
(28, 'Non_Acc', 1050.00, 'Out_of_Booking'),
(29, 'Non_Acc', 1100.00, 'Out_of_Booking'),
(30, 'Non_Acc', 500.00, 'Out_of_Booking');

-- Data insert 
insert into Rescervations
(Rescervation_id, check_in_out)
values
(1,  'Available'),
(2,  'Available'),
(3,  'Available'),
(4,  'Available'),
(5,  'Available'),
(6,  'Not_Available'),
(7,  'Not_Available'),
(8,  'Not_Available'),
(9,  'Not_Available'),
(10,  'Not_Available'),
(11,  'Available'),
(12,  'Available'),
(13,  'Available'),
(14,  'Available'),
(15,  'Available'),
(16,  'Not_Available'),
(17,  'Not_Available'),
(18, 'Not_Available'),
(19,  'Not_Available'),
(20,  'Not_Available'),
(21,  'Available'),
(22,  'Available'),
(23,  'Available'),
(24,  'Available'),
(25,  'Available'),
(26,  'Not_Available'),
(27,  'Not_Available'),
(28,  'Not_Available'),
(29,  'Not_Available'),
(30,  'Not_Available');

-- Data insert...
insert into Payments
(amount, Pay_mathod, Rescervation_id)
values
(1000.00, 'Online_pay', 1),
(8000.00, 'Online_pay', 2),
(9000.00, 'Online_pay', 3),
(7000.00, 'Online_pay', 4),
(6000.00, 'Online_pay', 5),
(5000.00, 'Credit_card', 6),
(4000.00, 'Credit_card', 7),
(3000.00, 'Credit_card', 8),
(2000.00, 'Credit_card', 9),
(1000.00, 'Credit_card', 10),
(1900.00, 'Cash', 11),
(1800.00, 'Cash', 12),
(1700.00, 'Cash', 13),
(1600.00, 'Cash', 14),
(1500.00, 'Cash', 15),
(1900.00, 'Cash', 16),
(1800.00, 'Cash', 17),
(1700.00, 'Cash', 18),
(1600.00, 'Cash', 19),
(1500.00, 'Cash', 20),
(2000.00, 'Online_pay', 21),
(3000.00, 'Online_pay', 22),
(4000.00, 'Online_pay', 23),
(5000.00, 'Online_pay', 24),
(6000.00, 'Online_pay', 25);

select * from Payments;
select * from Guests;
select * from rooms;
select * from Rescervations;

🏨/* Hotel Booking Reservation System — 15 Basic SQL Questions
Basic Level
1. Display All Guests: Write an SQL query to display all records from the Guests table.
2. Display All Rooms: Write an SQL query to show all records from the rooms table.
3. Guest Names: Write a query to display only the name column from the Guests table.
4. Room Prices: Write a query to display the room_id, room_type, and rate of all rooms.
5. Find a Specific Guest: Write a query to find the guest whose Guest_id is 13.

WHERE Clause
6. Available Rooms: Write a query to display rooms whose status is Not_Booking.
7. Expensive Rooms: Write a query to find rooms with a rate greater than ₹3,000.
8. Online Payments: Write a query to display all payments made using Online_pay.
9. Find a Guest by Name: Write a query to find the guest named Sahil.
10. Filter Payment Amounts: Write a query to display payments where the amount is greater than ₹5,000.

Sorting and Aggregate Functions
11. Sort Room Prices: Write a query to display all rooms in ascending order of their rates.
12. Highest Room Rate: Write a query to find the highest room rate using an aggregate function.
13. Total Guests: Write a query to count the total number of guests.
14. Total Payment Amount: Write a query to calculate the total amount collected in the Payments table.
15. Average Room Rate: Write a query to calculate the average rate of all rooms.*/

-- code 
--1. Display All Guests: Write an SQL query to display all records from the Guests table.
select * from
Guests;

--2. Display All Rooms: Write an SQL query to show all records from the rooms table.
select * from
rooms;

--3. Guest Names: Write a query to display only the name column from the Guests table.
select name from
Guests;

--4. Room Prices: Write a query to display the room_id, room_type, and rate of all rooms.
select room_id, room_type,
rate
from rooms;

--5. Find a Specific Guest: Write a query to find the guest whose Guest_id is 13
select * from Guests
where guest_id = 13;

--6. Available Rooms: Write a query to display rooms whose status is Not_Booking.
select * from rooms
where status='Not_Booking';

--7. Expensive Rooms: Write a query to find rooms with a rate greater than ₹3,000.
select *from 
rooms
where rate >=3000;

--8. Online Payments: Write a query to display all payments made using Online_pay.
select * from
Payments
where Pay_mathod ='Online_pay';

--9. Find a Guest by Name: Write a query to find the guest named Sahil.
select * from
Guests
where name ='Sahil';

--10. Filter Payment Amounts: Write a query to display payments where the amount is greater than ₹5,000.
select * from 
Payments
where amount> 5000;

--11. Sort Room Prices: Write a query to display all rooms in ascending order of their rates.
select * from
rooms
order by rate asc;

--12. Highest Room Rate: Write a query to find the highest room rate using an aggregate function.
select max(rate) as highest_rate
from rooms;

--13. Total Guests: Write a query to count the total number of guests.
select count(*) from
Guests;

--14. Total Payment Amount: Write a query to calculate the total amount collected in the Payments table.
select sum(amount) as total_payment from 
Payments;

--15. Average Room Rate: Write a query to calculate the average rate of all rooms.*/
select avg(rate) as avg_room
from rooms;

🏨 /*Advanced SQL Project Questions
Level 1: Filtering and Aggregation
1. Room Type Analysis: How can you count the total number of rooms available in each room_type?
2. Revenue Analysis: How can you calculate the total payment amount collected through each pay_mathod?
3. Price Category Analysis: How can you find all rooms whose rates are higher than the average rate of all rooms?
4. Guest Payment Analysis: How can you identify reservations with payments greater than ₹5,000?
5. Room Status Analysis: How can you count the number of rooms in each status, such as Booking, Not_Booking, and Out_of_Booking?

Level 2: JOIN and Subqueries
6. Guest Reservation Report: How can you combine the Guests and Rescervations tables to display guest details along with reservation information?
7. Payment Report: How can you combine the Rescervations and Payments tables to display each reservation with its payment amount and payment method?
8. Complete Booking Report: How can you combine all four tables to generate a report containing guest names, room details, reservation status, and payment information?
9. Above-Average Payments: How can you find all payments whose amounts are greater than the average payment amount?
10. Highest-Paid Reservations: How can you identify the reservation or reservations with the highest payment amount?

Level 3: Advanced Analysis
11. Payment Method Ranking: How can you rank payment methods according to their total collected amount, from highest to lowest?
12. Room Rate Ranking: How can you rank rooms from the most expensive to the least expensive using a window function?
13. Guest Payment Summary: How can you calculate the total amount paid for each guest and display the results from highest to lowest?
14. Revenue Contribution: How can you calculate the percentage of total payment revenue contributed by each payment method?*/


-- Level 1 code
--1. Room Type Analysis: How can you count the total number of rooms available in each room_type?

select room_type, count(*) as total_room
from rooms
group by room_type;

--2. Revenue Analysis: How can you calculate the total payment amount collected through each pay_mathod?
select Pay_mathod, sum(amount) as total_amount
from Payments
group by Pay_mathod order by total_amount desc;

--3. Price Category Analysis: How can you find all rooms whose rates are higher than the average rate of all rooms?
select room_id, room_type, rate
from rooms
 where rate >(
select avg(rate) as avg_rooms
from rooms
 ); 

--4. Guest Payment Analysis: How can you identify reservations with payments greater than ₹5,000?
select rescervation_id, 
amount,
pay_mathod
from Payments
where amount > 5000;

--5. Room Status Analysis: How can you count the number of rooms in each status, such as Booking, Not_Booking, and Out_of_Booking?
select status, count(*) as total_rooms
from rooms
group by status  order by total_rooms desc;

-- Level 2 code

--6. Guest Reservation Report: How can you combine the Guests and Rescervations tables to display guest details along with reservation information?
select * from Guests;
select * from Rescervations;

select  G.guest_id,
G.name,
G.email,
G.phone,
R.rescervation_id, R.check_in_out
from Guests G
inner join Rescervations R
on G.guest_id = r.guest_id;

--7. Payment Report: How can you combine the Rescervations and Payments tables to display each reservation with its payment amount and payment method?
select * from Payments;
select * from rescervations;

select R.rescervation_id, R.guest_id,
R.room_id,
P.amount,
P.Pay_mathod
from Rescervations R
inner join Payments P
on p.rescervation_id=R.rescervation_id;

--8. Complete Booking Report: How can you combine all four tables to generate a report containing guest names, room details, reservation status, and payment information?
select * from guests;
select * from rooms;
select * from Rescervations;
select * from Payments;

select G.guest_id, G.name, G.email,
Rm.room_id, Rm.room_type, Rm.rate,
R.rescervation_id,
P.amount,
P.Pay_mathod
from Guests G
inner join Rescervations R
on  G.guest_id=R.guest_id
inner join rooms Rm
on R.room_id=Rm.room_id
left join Payments P
on R.rescervation_id=p.rescervation_id;

--9. Above-Average Payments: How can you find all payments whose amounts are greater than the average payment amount?
select * 
from Payments
where  amount >(
select avg(amount)
from Payments
);

--10. Highest-Paid Reservations: How can you identify the reservation or reservations with the highest payment amount?
select rescervation_id, amount, Pay_mathod
from Payments
where amount = (
   select max(amount) as highest_amount
   from Payments
);

-- Level 3 code

--11. Payment Method Ranking: How can you rank payment methods according to their total collected amount, from highest to lowest?
select * from Payments;

select pay_mathod,
sum(amount) as total_sum,

rank() over (
order by sum(amount) desc
) as payment_rank
from payments
group by pay_mathod
order by total_sum desc;

--12. Room Rate Ranking: How can you rank rooms from the most expensive to the least expensive using a window function?
select * from rooms;

select room_type, status,
rate,
dense_rank () over (order by rate desc) as expensive_room
from rooms
order by rate desc;

--13. Guest Payment Summary: How can you calculate the total amount paid for each guest and display the results from highest to lowest?
select * from Guests;
 select * from Payments;


 select G.guest_id, G.name,
      coalesce(sum(amount) , 0) as total_paid
	  from Guests g
	  inner join Rescervations r
	  on R.guest_id =G.guest_id
	  left join Payments p
	  on R.rescervation_id=P.rescervation_id
	  group by G.guest_id, G.name
	  order by total_paid desc;
	 
--14. Revenue Contribution: How can you calculate the percentage of total payment revenue contributed by each payment method?
select pay_mathod, 
sum(amount) as total_Revenue,
Round(100.0*sum(amount)
/nullif(sum(sum(amount)) over (), 0),2) as revenue_percentage
from payments
group by pay_mathod
order by total_Revenue;
