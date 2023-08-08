CREATE TABLE Customers_M (
  customer_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL
);

CREATE TABLE Movies_Ad (
  movie_id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  release_date DATE NOT NULL,
  genre VARCHAR(50) NOT NULL,
  duration VARCHAR(50) NOT NULL
);

CREATE TABLE Tickets_M (
  ticket_id SERIAL PRIMARY KEY,
  customer_id INT REFERENCES Customers_M(customer_id),
  movie_id INT REFERENCES Movies_m(movie_id),
  ticket_date DATE NOT NULL,
  ticket_price DECIMAL(10,2) NOT NULL
);

CREATE TABLE Concessions_M (
  concession_id SERIAL PRIMARY KEY,
  customer_id INT REFERENCES Customers_m(customer_id),
  concession_item VARCHAR(50) NOT NULL,
  concession_price DECIMAL(10,2) NOT NULL
);

INSERT INTO Customers_M (name, email) VALUES
    ('John Doe', 'john.doe@example.com'),
    ('Jane Smith', 'jane.smith@example.com'),
    ('Dave Git', 'dave.git@gmail.com');
   
INSERT INTO Movies_Ad (movie_id, title, release_date, genre, duration) VALUES
    (1, 'Movie 1', '2023-07-01', 'Action', '2 hours 30 minutes'),
    (2, 'Movie 2', '2023-07-15', 'Comedy', '2 hours');
   
 INSERT INTO tickets_m (ticket_id, ticket_date, ticket_price) VALUES
    (01,'2023-07-01', 15.99),
    (02,'2023-07-15', 12.99),
    (03,'2023-07-15', 12.99);
   
INSERT INTO concessions_m (Concession_id, concession_item, concession_price) VALUES
    (1, 'Popcorn', 5.99),
    (2, 'Soda', 3.99);

 

 
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
