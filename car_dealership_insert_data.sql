CREATE OR REPLACE PROCEDURE addCustomer
    (
        _first_name VARCHAR(255),
        _last_name VARCHAR(255),
        _phone_number VARCHAR(255),
        _payment_info VARCHAR(255)
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO customer (
        first_name,
        last_name,
        phone_number,
        payment_info
    ) VALUES (
        _first_name,
        _last_name,
        _phone_number,
        _payment_info
    );
END;
$$
CALL addCustomer('Bart', 'Simpson','432-566-7890','AMEX');
CALL addCustomer('Homer', 'Simpson','432-566-7890','Visa');
CALL addCustomer('Maggie', 'Simpson','432-566-7890','Mastercard');
CALL addCustomer('Lisa', 'Simpson','432-566-7890','Discover');


CREATE OR REPLACE PROCEDURE addCar
    (
        _serial_number VARCHAR(255),
        _customer_id INTEGER,
        _car_type VARCHAR(255),
        _car_year VARCHAR(255),
        _car_make VARCHAR(255)
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO car (
        serial_number,
        customer_id,
        car_type,
        car_year,
        car_make
        
    ) VALUES (
        _serial_number,
        _customer_id,
        _car_type,
        _car_year,
        _car_make
    );
END;
$$
CALL addCar('3PP4M6KS79TF3M7',1,'Coupe','2013','Cheverolet');
CALL addCar('Q89CJ4H56JSFC80',3,'SUV','2019','Cheverolet');
CALL addCar('G67D2SXC4KLO97V',5,'Sedan','2015','Cheverolet');
CALL addCar('V569K0LSRU76BMX',7, 'Coupe','2013','Ford');
CALL addCar('XT89K3WAX9LH5C1',6, 'SUV','2013','Cadillac');


CREATE OR REPLACE PROCEDURE addStaff
    (
        _first_name VARCHAR(255),
        _last_name VARCHAR(255)
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO staff (
        first_name,
        last_name
        
    ) VALUES (
        _first_name,
        _last_name
    );
END;
$$
CALL addStaff('Markie', 'Mark');
CALL addStaff('Indiana', 'Jones');
CALL addStaff('Clark', 'Kent');
CALL addStaff('Optimus', 'Prime');
CALL addStaff('Tony', 'Stark');


CREATE OR REPLACE PROCEDURE addSale
    (
        _car_id INTEGER,
        _staff_id INTEGER,
        _total_price VARCHAR(255)
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO sale (
        car_id,
        staff_id,
        total_price
    ) VALUES (
        _car_id,
        _staff_id,
        _total_price
    );
END;
$$
CALL addSale(11,1, '$400');
CALL addSale(12,5, '$900');
CALL addSale(13,4, '$460');
CALL addSale(14,1, '$500');


CREATE OR REPLACE PROCEDURE addService
    (
        _customer_id INTEGER,
        _car_id INTEGER,
        _issue_id INTEGER,
        _issue_id_cost VARCHAR(255)
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO service (
        customer_id,
        car_id,
        issue_id,
        issue_id_cost
    ) VALUES (
        _customer_id,
        _car_id,
        _issue_id,
        _issue_id_cost
    );
END;
$$
CAll addService (1,11,1,'$800');
CALL addService (2,12,2, '$900');
CALL addService (3,13,3, '$900');
CALL addService (4,14,4, '$200');

CREATE OR REPLACE PROCEDURE addStaff_Service
    (
        _service_id INTEGER,
        _staff_id INTEGER
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO staff_service (
        service_id,
        staff_id
        
    ) VALUES (
        _service_id,
        _staff_id
    );
END;
$$
CALL addStaff_Service (3,1);
CALL addStaff_Service (4,1);
CALL addStaff_Service (5,1);
CALL addStaff_Service (6,1);
