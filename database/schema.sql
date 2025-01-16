CREATE TABLE furniture_products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(100) NOT NULL,
    material VARCHAR(100),
    dimensions VARCHAR(100),
    color VARCHAR(50),
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT DEFAULT 0,
    image_url TEXT,
    description TEXT
);
