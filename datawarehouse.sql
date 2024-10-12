
CREATE SCHEMA IF NOT EXISTS dvdrental_dw;

CREATE TABLE dvdrental_dw.Dim_Pelicula (
    film_id INT PRIMARY KEY,
    title VARCHAR(255),
    description TEXT,
    release_year INT,
    language_id INT,
    rental_duration INT,
    rental_rate NUMERIC(5, 2),
    length INT,
    rating VARCHAR(10)
);

CREATE TABLE dvdrental_dw.Dim_Cliente (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    email VARCHAR(50),
    address_id INT,
    active BOOLEAN,
    create_date TIMESTAMP
);

CREATE TABLE dvdrental_dw.Dim_Tiempo (
    date_id SERIAL PRIMARY KEY,
    date DATE UNIQUE,
    year INT,
    month INT,
    day INT,
    weekday VARCHAR(10)
);

CREATE TABLE dvdrental_dw.Dim_Empleado (
    staff_id INT PRIMARY KEY,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    email VARCHAR(50),
    address_id INT,
    active BOOLEAN
);

CREATE TABLE dvdrental_dw.Dim_Tienda (
    store_id INT PRIMARY KEY,
    manager_staff_id INT,
    address_id INT
);


CREATE TABLE dvdrental_dw.Hecho_Renta (
    rental_id INT PRIMARY KEY,
    film_id INT REFERENCES dvdrental_dw.Dim_Pelicula(film_id),
    customer_id INT REFERENCES dvdrental_dw.Dim_Cliente(customer_id),
    staff_id INT REFERENCES dvdrental_dw.Dim_Empleado(staff_id),
    store_id INT REFERENCES dvdrental_dw.Dim_Tienda(store_id),
    amount NUMERIC(5, 2),
    rental_date TIMESTAMP,
    return_date TIMESTAMP,
    date_id INT REFERENCES dvdrental_dw.Dim_Tiempo(date_id)
);
