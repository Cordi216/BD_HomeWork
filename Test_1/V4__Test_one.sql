CREATE TABLE hotels (
   hotelid INT PRIMARY KEY,
   hotelname VARCHAR(50) NOT NULL,
   address VARCHAR(100) NOT NULL,
   rating DECIMAL(2,1) CHECK (rating >= 0 AND rating <= 5),
   contactnumber VARCHAR(20) NOT NULL,
   website VARCHAR(100) NOT NULL
);

CREATE TABLE rooms (
   roomid INT PRIMARY KEY,
   hotelid INT,
   roomnumber INT,
   roomtype VARCHAR(50) NOT NULL,
   price DECIMAL(8,2) NOT NULL,
   isbooked BOOLEAN NOT NULL,
   FOREIGN KEY (hotelid) REFERENCES hotels (hotelid)
);

CREATE TABLE bookings (
   bookingid INT PRIMARY KEY,
   roomid INT,
   guestname VARCHAR(50) NOT NULL,
   checkindate DATE NOT NULL,
   checkoutdate DATE NOT NULL,
   FOREIGN KEY (roomid) REFERENCES rooms (roomid)
);

INSERT INTO hotels (hotelid, hotelname, address, rating, contactnumber, website)
VALUES
   (1, '"Марриотт Казань"', 'ул. Амирхана, 1а, Город Казань', 4.5, '123456789', 'hotelA.com'),
   (2, 'Шишкиnn', 'ул. Чистопольская, 12, Город Казань', 3.8, '987654321', 'hotelB.com'),
   (3, 'Ибис Казань Центр', 'ул. Пролетарская, 36/1, Город Казань', 4.2, '456789123', 'hotelC.com'),
   (4, 'Гранд Казань', 'ул. Ново-Садовая, 106, Город Казань', 3.5, '321654987', 'hotelD.com'),
   (5, 'ХЕ ХАЛИД БИН ВАЛИД', 'ул. Восточная 7, Город Казань', 4.0, '789123456', 'hotelE.com');
  
  
 INSERT INTO rooms (roomid, hotelid, roomnumber, roomtype, price, isbooked)
VALUES
   (1, 1, 101, 'Стандартный', 100.00, FALSE),
   (2, 1, 102, 'Стандартный', 100.00, TRUE),
   (3, 2, 201, 'Люкс', 200.00, FALSE),
   (4, 2, 202, 'Люкс', 200.00, FALSE),
   (5, 3, 301, 'Семейный', 150.00, TRUE);
   
INSERT INTO bookings (bookingid, roomid, guestname, checkindate, checkoutdate)
VALUES
   (1, 1, 'Иванов Иван', '2017-01-01', '2017-01-05'),
   (2, 3, 'Петров Петр', '2021-02-01', '2021-02-07'),
   (3, 4, 'Сидоров Сидор', '2022-03-01', '2022-03-03'),
   (4, 5, 'Федоров Федор', '2022-04-01', '2022-04-10'),
   (5, 2, 'Алексеев Алексей', '2023-05-01', '2023-05-02');
