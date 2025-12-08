CREATE TABLE RestaurantTables (
    id INT PRIMARY KEY AUTO_INCREMENT,
    table_number INT NOT NULL,
    seats INT NOT NULL
);

CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    id INT NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    booking_datetime DATETIME NOT NULL,
    num_people INT NOT NULL,
    comment TEXT,
    FOREIGN KEY (id) REFERENCES RestaurantTables(id)
);

CREATE TABLE MenuItems (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL
);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);
