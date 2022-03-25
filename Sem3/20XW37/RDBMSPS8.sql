-- Table creation
CREATE TABLE Sailor(
  id int PRIMARY KEY,
  name varchar(20),
  rating int,
  age int,
  CHECK (rating between 6 and 10),
  CHECK (ASCII(name) BETWEEN 65 and 90)
);

CREATE TABLE Boat(
  id int PRIMARY KEY,
  name varchar(20),
  color varchar(10)
);

CREATE TABLE Reservation(
  sid int,
  bid int,
  day date,
  PRIMARY KEY (sid,bid,day),
  FOREIGN KEY (sid) REFERENCES Sailor(id),
  FOREIGN KEY (bid) REFERENCES Boat(id)
);

-- Sequence creations

CREATE SEQUENCE seqSailor start with 1 increment by 1;
CREATE SEQUENCE seqBoat start with 100 increment by 1 maxvalue 110;

-- Sequence drops

DROP SEQUENCE seqSailor;
DROP SEQUENCE seqBoat;
-- Table drops

DROP TABLE Sailor;
DROP TABLE Boat;
DROP TABLE Reservation;

-- Table insertions

insert into Sailor values (1,'Jack Sparrow', 10, 40);
insert into Sailor values (2,'Will Turner', 6, 26);
insert into Sailor values (3,'Horatio', 7, 24);
insert into Sailor values (4,'Gibbs', 9, 51);
insert into Sailor values (5,'Davey Jones', 10, 42);
insert into Sailor values (6,'Julius',9, 25);

insert into Boat values (seqBoat.nextval,'Black Pearl', 'black');
insert into Boat values (seqBoat.nextval,'Queen Annes Revenge', 'red');
insert into Boat values (seqBoat.nextval,'Blackbeards Delight', 'black');
insert into Boat values (seqBoat.nextval,'Redbeards Delight', 'red');
insert into Boat values (seqBoat.nextval,'Oceans Dagger', 'blue');
insert into Boat values (seqBoat.nextval,'Marine', 'blue');
insert into Boat values (seqBoat.nextval,'Interlake', 'red');

insert into Reservation (sid, bid, day) values (2, 101, '11-FEB-2016');
insert into Reservation (sid, bid, day) values (6, 107, '10-JUN-2016');
insert into Reservation (sid, bid, day) values (1, 101, '10-OCT-2016');
insert into Reservation (sid, bid, day) values (1, 101, '10-OCT-2017');
insert into Reservation (sid, bid, day) values (1, 102, '10-OCT-2017');
insert into Reservation (sid, bid, day) values (1, 101, '10-JUL-2017');
insert into Reservation (sid, bid, day) values (2, 102, '11-SEP-2017');
insert into Reservation (sid, bid, day) values (2, 102, '7-NOV-2017');
insert into Reservation (sid, bid, day) values (3, 101, '7-NOV-2017');
insert into Reservation (sid, bid, day) values (3, 102, '7-AUG-2017');
insert into Reservation (sid, bid, day) values (4, 103, '19-SEP-2017');
insert into Reservation (sid, bid, day) values (6, 104, '19-SEP-2017');

-- QUERIES

-- 1
SELECT count(*) as noOfBlackBoats FROM Boat where color = 'black';

-- 2
SELECT distinct(sid) FROM reservation r, boat b where (color = 'red' or color = 'green') and r.bid = b.id;

-- 3
SELECT name, age from sailor where age = (SELECT min(age) from Sailor);

-- 4
SELECT DISTINCT s.* FROM sailor s, reservation r where r.bid = 101 and s.id = r.sid;

-- 5 
SELECT s.name FROM sailor s where s.id not in (SELECT sid FROM reservation) ORDER BY s.name;

-- 6
SELECT b.color FROM boat b, reservation r, sailor s WHERE b.id = r.bid and s.id = r.sid and s.name = 'Horatio';

-- 7
SELECT count(*) FROM reservation r, boat b, sailor s WHERE b.id = r.bid and s.id = r.sid and b.color = 'red' and s.rating = 10;

-- 8
SELECT b.name FROM reservation r, boat b WHERE b.id = r.bid and b.color = 'red' and (r.day between '01-JAN-2017' AND '31-DEC-2017') GROUP BY b.name HAVING count(*) = (SELECT max(c) FROM (SELECT count(*) as c FROM reservation r, boat b WHERE b.id = r.bid and b.color = 'red' and (r.day between '01-JAN-2017' AND '31-DEC-2017') GROUP BY b.name) t);

-- 9  
SELECT s.id from sailor s where rating = (SELECT max(r) from (SELECT rating as r from sailor) t); 

-- 10 WRONG
SELECT bid, sid, count(*) FROM reservation GROUP BY bid,sid ORDER BY bid, count(*) DESC;  

-- 11
SELECT b.id, (select count(*) from reservation r where b.id = r.bid) as NoOfReservations FROM boat b;

-- 12
SELECT DISTINCT s.name FROM sailor s, reservation r, boat b where s.id = r.sid and b.id = r.bid and b.color = 'red';

-- 13
SELECT bid, sid, count(*) as NoOfReservations FROM reservation GROUP BY bid, sid HAVING COUNT(*)>1 ORDER BY bid;

-- 14
SELECT bid FROM reservation GROUP BY bid HAVING count(*) = (SELECT max(c) from (SELECT count(*) as c FROM reservation GROUP BY bid) t);

-- 15
SELECT id FROM sailor where rating > (SELECT rating from sailor where name = 'Gibbs');

-- 16
SELECT DISTINCT sid FROM reservation where bid in (SELECT bid FROM reservation where sid = 3) and sid <> 3;

-- 17
SELECT id from SAILOR where id not in (SELECT DISTINCT sid from reservation);

-- 18 WRONG
SELECT b.color, b.name, from boat b, boat bt  

-- 19 IDK


-- 20 IDK

-- 21
SELECT distinct(name) from (SELECT s.name FROM sailor s, reservation r, boat b where r.bid = b.id and r.sid = s.id and b.color = 'red' ORDER BY s.age) t;

-- 22
SELECT s.name from reservation r, sailor s where s.id = r.sid group by s.name HAVING count(*) > 0;

-- 23
SELECT id from sailor where rating > 7 and id in (SELECT sid from reservation where bid = 103);

-- 24