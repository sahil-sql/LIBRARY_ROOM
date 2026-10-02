create table sit (
sit_id serial  primary key,
sit_name varchar(50),
pay_fees numeric (10, 2),
discount_fees numeric (10,2),
joining_date date
);

drop table if exists sit;

insert into sit
(sit_name, pay_fees, discount_fees, joining_date)
values
('A1', 1050.00, 5.00, '2026-01-12'),
('A1', 1000.00, 5.00, '2026-06-08'),
('A1', 1200.00, 5.00, '2026-05-09'),
('A1', 800.00, 8.00, '2026-04-10'),
('A1', 1050.00, 8.00, '2026-03-14'),
('B1', 1030.00, 7.00, '2025-01-15'),
('B1', 1020.00, 7.00, '2025-05-16'),
('B1', 1010.00, 6.00, '2025-04-17'),
('B1', 1090.00, 5.00, '2025-03-18'),
('B1', 1000.00, 5.00, '2025-02-19'),
('C1', 900.00, 4.00, '2024-06-15'),
('C1', 1250.00, 4.00, '2024-07-14'),
('C1', 550.00, 3.00, '2024-08-13'),
('C1', 450.00, 3.00, '2024-09-12'),
('C1', 200.00, 2.00, '2024-10-11'),
('D1', 700.00, 2.00, '2023-01-24'),
('D1', 500.00, 3.00, '2023-02-23'),
('D1', 950.00, 10.00, '2023-03-22'),
('D1', 1550.00, 5.00, '2023-04-21'),
('D1', 1000.00, 5.00, '2023-05-20'),
('E1', 1600.00, 4.00, '2022-01-27'),
('E1', 1320.00, 6.00, '2022-09-27'),
('E1', 1220.00, 4.00, '2026-09-28'),
('E1', 840.00, 5.00, '2026-07-29'),
('E1', 1050.00, 7.00, '2026-06-30'),
('F1', 1100.00, 3.00, '2021-01-06'),
('F1', 900.00, 5.00, '2021-02-07'),
('F1', 150.00, 10.00, '2021-03-08'),
('F1', 2000.00, 7.00, '2021-04-09'),
('F1', 1080.00, 2.00, '2021-05-10'),
('G1', 1440.00, 8.00, '2026-10-16');

select * from sit;


drop table if exists customer;
create table customer(
customer_id serial primary key,
customer_name varchar(60),
vailge varchar(50),
connect_no varchar (20),
gander varchar(15),
sit_id serial not null,
foreign key (sit_id) references sit(sit_id)
);

insert into customer
(customer_name, vailge, connect_no, gander)
values

('sahil', 'walidpur', '6395147582', 'Male'),
('Atul kumar', 'Tanda', '5514558245', 'Male'),
('Happy', 'Tanda', '8598744514', 'Male'),
('priyanshu', 'Tanda', '5458785255', 'Male'),
('harshit', 'walidpur', '65983247', 'Male'),
('prince', 'chakbandi', '8568895414', 'Male'),
('Aakash', 'chakbandi', '6395001412', 'Male'),
('shivani', 'Sakoti', '6300854712', 'Female'),
('priya desai', 'Meeut', '6855445515', 'Female'),
('priyal', 'Meerut', '5889654755', 'Female'),
('kaju', 'Tanda', '2255887744', 'Female'),
('mansi thakur', 'Meerut', '4450122356', 'Female'),
('Amit', 'Walidpur', '2761532414', 'Male'),
('Ankur', 'Jamalpur', '9856525612', 'Male'),
('Shubham', 'Tanda', '9989554014', 'Male'),
('Ankit', 'Dasratput', '6965884514', 'Male'),
('Ubaid', 'jamalput', '5589457412', 'Male'),
('saloni', 'Ruhasa', '8878451299', 'Female'),
('laxmi', 'Ruhasa', '6050258974', 'Female'),
('Divanshi', 'waillpur', '5689741310', 'Female'),
('chand', 'jamalpur', '2254147845', 'male'),
('Himanshu', 'Sakoti', '98564751114', 'Male'),
('Gaurav', 'Sakoti', '6396985874', 'Male'),
('Vishnu', 'Tanda', '6085457415', 'Male'),
('Arun', 'Sakoti', '6395487512', 'Male'),
('Deepanshu', 'Sakoti', '6948850044', 'Male'),
('Aamil', 'Sakoti', '7034569125', 'male'),
('Sumit', 'tanda', '6395142256', 'male'),
('Akash', 'tanda', '6390140082', 'Male'),
('koki', 'Sakoti', '6395141202', 'Male'),
('Monu', 'Jamalpur', '6393744502', 'Male');

select * from customer;

-- 1. Display all customers
SELECT *
FROM customer;


-- 2. Display all seats
SELECT *
FROM sit;


-- 3. Display customers who are Male
SELECT *
FROM customer
WHERE gander = 'Male';


-- 4. Display customers who are Female
SELECT *
FROM customer
WHERE gander = 'Female';


-- 5. Find customers from Tanda
SELECT *
FROM customer
WHERE vailge = 'Tanda';


-- 6. Find seats where paid fees are greater than 1000
SELECT *
FROM sit
WHERE pay_fees > 1000;


-- 7. Find the highest paid fee
SELECT MAX(pay_fees) AS highest_fees
FROM sit;


-- 8. Find the average paid fee
SELECT AVG(pay_fees) AS average_fees
FROM sit;


-- 9. Count total customers
SELECT COUNT(*) AS total_customers
FROM customer;


-- 10. Display customers and their seat details
SELECT 
    c.customer_name,
    c.gander,
    s.sit_name,
    s.pay_fees,
    s.joining_date
FROM customer c
JOIN sit s
ON c.sit_id = s.sit_id;




--Advanced SQL Theory Questions
/* Bilkul 👍 Aapke **Library Room project** ke `sit` aur `customer` tables ko base banakar, yeh **project-based SQL questions** hain. **Sirf questions/theory hai, koi code nahi.** 

### 📚 Library Room SQL Project — 10 Query-Based Questions

1. **Customer Analysis**
   Library room mein total kitne customers hain aur male/female customers ka distribution kya hai?

2. **Location Analysis**
   Kaun-se village/area se sabse zyada customers aaye hain? Har village ke customer count ko identify karein.

3. **Fee Analysis**
   Kaun-si seat ka `pay_fees` sabse zyada hai aur kaun-si seat ka sabse kam? Dono ke beech fee difference bhi analyze karein.

4. **Seat-wise Analysis**
   Har `sit_name` ke liye total customers, average fee, minimum fee aur maximum fee find karne ke liye kya approach use karenge?

5. **High-Paying Customers/Seats**
   Aise customers identify karein jo un seats se associated hain jinki fee overall average fee से ज्यादा है।

6. **Joining Date Analysis**
   `joining_date` के आधार पर identify करें कि किस year में सबसे ज्यादा seat records बने हैं और किस year में सबसे कम।

7. **Discount Analysis**
   अलग-अलग seats के लिए `discount_fees` का analysis करें और पता करें कि कौन-से records में discount सबसे ज्यादा है।

8. **Customer + Seat Relationship**
   Customer information और seat information को combine करके प्रत्येक customer के लिए उसका seat name, paid fee और joining date कैसे प्राप्त करेंगे?

9. **Ranking Analysis**
   प्रत्येक seat group के अंदर `pay_fees` के आधार पर records को highest से lowest rank करने के लिए कौन-सा SQL concept इस्तेमाल करेंगे?

10. **Management Dashboard Question**
    अगर library owner को एक report चाहिए जिसमें **total customers, area-wise customers, average fee, highest fee, lowest fee, discount और joining-date analysis** शामिल हो, तो आप किन SQL concepts को combine करेंगे?

### 🎯 Project में मुख्य Concepts

**SELECT → WHERE → GROUP BY → HAVING → JOIN → Subquery → CTE → CASE → Window Functions → Date Functions → Aggregate Functions**

ये questions आपके दिए हुए **Library Room database** को एक छोटे real-world SQL project की तरह practice करने के लिए बनाए गए हैं।


बिल्कुल 👍 नीचे **Library Room SQL Project** के वही 10 प्रश्न पूरी तरह हिंदी में दिए गए हैं। **कोई SQL code नहीं है।**

### 📚 लाइब्रेरी रूम SQL प्रोजेक्ट — 10 प्रश्न

1. **Customer Analysis — ग्राहक विश्लेषण**
   लाइब्रेरी रूम में कुल कितने ग्राहक हैं और पुरुष तथा महिला ग्राहकों का वितरण क्या है?

2. **Location Analysis — स्थान विश्लेषण**
   कौन-से गाँव/क्षेत्र से सबसे अधिक ग्राहक आए हैं? प्रत्येक गाँव के ग्राहकों की संख्या ज्ञात करें।

3. **Fee Analysis — फीस विश्लेषण**
   किस सीट की `pay_fees` सबसे अधिक है और किस सीट की सबसे कम है? दोनों फीस के बीच का अंतर भी ज्ञात करें।

4. **Seat-wise Analysis — सीट के अनुसार विश्लेषण**
   प्रत्येक `sit_name` के लिए कुल ग्राहकों की संख्या, औसत फीस, न्यूनतम फीस और अधिकतम फीस कैसे ज्ञात करेंगे?

5. **High Fee Analysis — अधिक फीस का विश्लेषण**
   ऐसे ग्राहकों को पहचानें जो ऐसी सीटों से जुड़े हैं जिनकी फीस सभी सीटों की औसत फीस से अधिक है।

6. **Joining Date Analysis — जॉइनिंग तिथि का विश्लेषण**
   `joining_date` के आधार पर पता करें कि किस वर्ष सबसे अधिक सीट रिकॉर्ड बने और किस वर्ष सबसे कम रिकॉर्ड बने।

7. **Discount Analysis — छूट का विश्लेषण**
   अलग-अलग सीटों के `discount_fees` का विश्लेषण करें और पता करें कि सबसे अधिक छूट किस रिकॉर्ड में दी गई है।

8. **Customer + Seat Relationship — ग्राहक और सीट संबंध**
   ग्राहक और सीट की जानकारी को जोड़कर प्रत्येक ग्राहक का **नाम, सीट का नाम, फीस और जॉइनिंग तिथि** कैसे प्राप्त करेंगे?

9. **Ranking Analysis — रैंकिंग विश्लेषण**
   प्रत्येक सीट समूह के अंदर `pay_fees` के आधार पर रिकॉर्ड को सबसे अधिक फीस से सबसे कम फीस तक रैंक कैसे करेंगे?

10. **Management Report — प्रबंधन रिपोर्ट**
    अगर लाइब्रेरी मालिक को एक रिपोर्ट चाहिए जिसमें **कुल ग्राहक, क्षेत्र के अनुसार ग्राहक, औसत फीस, सबसे अधिक फीस, सबसे कम फीस, छूट और जॉइनिंग तिथि का विश्लेषण** हो, तो किन SQL concepts का उपयोग करेंगे?

### 🎯 इस प्रोजेक्ट में मुख्य SQL Concepts

**SELECT → WHERE → GROUP BY → HAVING → JOIN → Subquery → CTE → CASE → Window Functions → Date Functions → Aggregate Functions**/

1.-- /*Customer Analysis**
   --Library room mein total kitne customers hain aur male/female customers ka distribution kya hai?
 
 
 select  gander, count('Female') as gander_female
 from customer
 group by gander;

 2. /**Location Analysis**
   Kaun-se village/area se sabse zyada customers aaye hain? Har village ke customer count ko identify karein.
*/

select vailge, count(*) as count_vailge
from customer
group by vailge order by  count_vailge desc;

3. /**Fee Analysis**
   Kaun-si seat ka `pay_fees` sabse zyada hai aur kaun-si seat ka sabse kam? Dono ke beech fee difference bhi analyze karein.
*/

     max(pay_fees) as highest_pey,
       min(pay_fees) as lowest_pay,
	   max(pay_fees) - min(pay_fees) as differnces_fees
from sit
group by sit_name
order by highest_pey desc;

4. /**Seat-wise Analysis**
   Har `sit_name` ke liye total customers, average fee, minimum fee aur maximum fee find karne ke liye kya approach use karenge?
*/

SELECT
    s.sit_name,
    COUNT(c.customer_id) AS total_customers,
    AVG(s.pay_fees) AS average_fee,
    MIN(s.pay_fees) AS minimum_fee,
    MAX(s.pay_fees) AS maximum_fee
FROM sit s
LEFT JOIN customer c
    ON s.sit_id = c.sit_id
GROUP BY s.sit_name
ORDER BY s.sit_name; 

5. /**High-Paying Customers/Seats**
   Aise customers identify karein jo un seats se associated hain jinki fee overall average fee से ज्यादा है।
*/
-- 5. High-Paying Customers/Seats

select c.customer_name,
       c.vailge,
	   s.sit_name,
	   s.pay_fees
	   from customer c
	   join
	   sit s
	   on c.sit_id=s.sit_id
	   where s.pay_fees > ( 
	   select avg(pay_fees)
	   from sit
	   );

6. /**Joining Date Analysis**
   `joining_date` के आधार पर identify करें कि किस year में सबसे ज्यादा seat records बने हैं और किस year में सबसे कम।
*/

select 
extract(year from joining_date) as joining_year,
count(*) as total_record
from sit
group by extract(year from joining_date)
order by total_record desc; 

7. /**Discount Analysis**
   अलग-अलग seats के लिए `discount_fees` का analysis करें और पता करें कि कौन-से records में discount सबसे ज्यादा है।
*/

select sit_name, discount_fees, joining_date from sit
order by discount_fees desc
limit 2;


select  sit_name, 
       max(discount_fees) as higest_discount,
	   min(discount_fees) as lowest_discount,
	   avg(discount_fees) as avg_discount
	   from sit
	   group by sit_name 
	   order by higest_discount desc;

8. /**Customer + Seat Relationship**
   Customer information और seat information को combine करके प्रत्येक customer के लिए उसका seat name, paid fee और joining date कैसे प्राप्त करेंगे?
*/

select c.customer_name,
       s.sit_name, s.pay_fees, s.joining_date
	   from  customer c
	   join sit s 
	   on c.sit_id=s.sit_id;
9. /**Ranking Analysis**
   प्रत्येक seat group के अंदर `pay_fees` के आधार पर records को highest से lowest rank करने के लिए कौन-सा SQL concept इस्तेमाल करेंगे?
*/

select sit_name, pay_fees,
rank() over (partition by sit_name order by pay_fees desc)
as rank_sit
from sit;

10. /**Management Dashboard Question**
    अगर library owner को एक report चाहिए जिसमें **total customers, area-wise customers, average fee, highest fee, lowest fee, discount और joining-date analysis** शामिल हो, तो आप किन SQL concepts को combine करेंगे?
*/

-- total customer
 select count(*) from customer;

-- average fee
 select avg(pay_fees) from sit;

-- higest_fee
 select max(pay_fees) from sit;

-- vailge of customer
 select vailge, count(*)
 from customer 
 group by vailge;

 -- joining date of customer 

 select joining_date, 
 extract(year from joining_date) as joining_year
 from sit
 group by joining_date;

 -- discount 
 select max(discount_fees) as high_discount
 from sit

 