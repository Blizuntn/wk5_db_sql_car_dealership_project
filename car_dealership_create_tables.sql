
--Create table for customer
CREATE TABLE IF NOT EXISTS customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    phone_number VARCHAR(255),
    payment_info VARCHAR(255)
);
-- Create table for Car
CREATE TABLE IF NOT EXISTS car (
    car_id SERIAL PRIMARY KEY,
    serial_number VARCHAR(255),
    customer_id INTEGER NOT NULL,
    car_type VARCHAR(255),
    car_year VARCHAR(255),
    car_make VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
    );
    
-- Create table for staff
CREATE TABLE IF NOT EXISTS staff (
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR (255),
    last_name VARCHAR (255)
    
);

--Create table sale
CREATE TABLE IF NOT EXISTS sale (
    sale_id SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL,
    staff_id INTEGER NOT NULL,
    total_price VARCHAR(255),
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
    
);
--Create table for service
CREATE TABLE IF NOT EXISTS service (
    service_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    car_id INTEGER NOT NULL,
    issue_id INTEGER,
    issue_id_cost VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (car_id ) REFERENCES car(car_id)    
);
-- create table for staff service
CREATE TABLE IF NOT EXISTS staff_service (
    staff_service_id SERIAL PRIMARY KEY,
    service_id INTEGER NOT NULL,
    staff_id INTEGER NOT NULL,
    FOREIGN KEY (service_id) REFERENCES service(service_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
    
    );
