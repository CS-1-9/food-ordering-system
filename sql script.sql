CREATE DATABASE if not exists food_ordering;

USE food_ordering;
CREATE TABLE foods (
    food_id INT PRIMARY KEY AUTO_INCREMENT,
    food_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    description VARCHAR(255)
);
INSERT INTO foods
(food_name, category, price, description)
VALUES
('Margherita Pizza', 'Pizza', 249.00, 'Cheese pizza with tomato sauce'),
('Veg Burger', 'Burger', 149.00, 'Veg burger with fresh vegetables'),
('Chicken Biryani', 'Biryani', 199.00, 'Spicy chicken biryani'),
('Masala Dosa', 'South Indian', 120.00, 'Crispy dosa with potato masala'),
('White Sauce Pasta', 'Pasta', 179.00, 'Creamy white sauce pasta');