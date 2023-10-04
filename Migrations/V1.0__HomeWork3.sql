create table Stockroom(
                        id serial primary key,
                        address varchar(100) not null,
                        capacity integer,
                        storage_price integer,
                        transportation_price integer   
);
create table Material(
                       id serial primary key,
                       title varchar(30),
                       country varchar(20),
                       price integer 
);
create table Bookkeeping(
                     id serial primary key,
                     production_costs integer,
                     paycheck integer,
                     cost_price integer,
                     material integer references Material(id),
                     stockroom integer references Stockroom(id)
);
create table Product(
                        id serial primary key,
                        title varchar(30),
                        quantity integer,
                        manual integer,
                        material integer references Material(id),
                        stockroom integer references Stockroom(id),
                        bookkeeping integer references Bookkeeping(id)
);
create table Shop(
                     id serial primary key,
                     title varchar(50),
                     address varchar(100) not null,
                     number_of_employees integer,
                     product integer references Product(id)
);