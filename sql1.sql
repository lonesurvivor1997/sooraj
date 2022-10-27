INSERT INTO `sales`.`SalesPerson`
(`snum`,
`sname`,
`city`,
`comm`)
VALUES
('1001','Peel','London','12'),

('1002','Serres','Sanjose','13'),

('1004','Motika','London','11'),

('1007','Rifkin','Barcelona','15'),

('1003','Axelrod','Newyork','10');

INSERT INTO `sales`.`Customers`
(`cnum`,
`cname`,
`city`,
`snum`)
VALUES
(2001,'Hoffman','London',1001),
(2002,'Giovanni','Rome',1003),

(2003,'Liu','Sanjose',1002),

(2004,'Grass','Berlin',1002),

(2006,'Clemens','London',1001),

(2008,'Cisneros','Sanjose',1007),

(2007,'Pereira','Rome',1004);

INSERT INTO `sales`.`Orders`
(`onum`,
`amt`,
`odate`,
`cnum`,
`snum`)
VALUES
(3001,18.69,"1990-03-10",2008,1007),

(3003,767.19,"1990-03-10",2001,1001),

(3002,1900.10,"1990-03-10",2007,1004),

(3005,5160.45,"1990-03-10",2003,1002),

(3006,1098.16,"1990-03-10",2008,1007),

(3009,1713.23,"1990-04-10",2002,1003),

(3007,75.75,"1990-04-10",2004,1002),

(3008,4273.00,"1990-05-10",2006,1001),

(3010,1309.95,"1990-06-10",2004,1002),

(3011,9891.88,"1990-06-10",2006,1001);

 SELECT * FROM SalesPeople WHERE Sname LIKE 'a%';
 SELECT SalesPeople.Sname,Orders.Amt from SalesPeople , Orders where SalesPeople.Snum = Orders.Snum and Orders.Amt > 2000;
 SELECT COUNT(*) FROM SalesPeople  WHERE City LIKE 'Newyork';
 select count(if(City='London',1,null)) as London,
        count(if(City='Paris',1,null)) as Paris
        from SalesPeople;
SELECT  Sname ,Odate,  COUNT(Snum) FROM Orders  INNER JOIN SalesPeople USING (Snum)  GROUP BY Snum HAVING COUNT(Snum) > 0 ;
 

