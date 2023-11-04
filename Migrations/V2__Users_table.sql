CREATE TABLE users (
   id SERIAL PRIMARY KEY,
   name VARCHAR(50) NOT NULL,
   surname VARCHAR(50) NOT NULL,
   patronymic VARCHAR(50),
   date_of_birth DATE NOT NULL,
   profession VARCHAR(100) NOT NULL,
   nationality VARCHAR(40) NOT NULL,
   phone_number VARCHAR(20) NOT NULL UNIQUE,
   email VARCHAR(100) NOT NULL UNIQUE
);