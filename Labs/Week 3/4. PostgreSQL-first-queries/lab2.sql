-- cars table
CREATE TABLE cars (id INTEGER NOT NULL PRIMARY KEY, 
				   vin VARCHAR(20), 
				   manufacturer VARCHAR(255), 
				   model VARCHAR(255), 
				   year SMALLINT, 
				   color VARCHAR(255))
				   
--customers table
CREATE TABLE customers (id INTEGER, 
						customer_id INTEGER NOT NULL PRIMARY KEY,
					    name VARCHAR(255) NOT NULL, 
					    phone_number INTEGER NOT NULL, 
						email VARCHAR(255), 
						address VARCHAR(255), 
						city VARCHAR(255),
						state VARCHAR(255),
						country VARCHAR(255), 
						postal VARCHAR(255))

-- salespersons table
CREATE TABLE salesperson (ID INTEGER NOT NULL, 
						  staff_id INTEGER NOT NULL PRIMARY KEY,
						  name VARCHAR(255),
						  store VARCHAR(255))
						  
-- invoices table
CREATE TABLE invoices (ID INTEGER,
					   invoice_number INTEGER NOT NULL,
					   date INTEGER,
					   car VARCHAR(255),
					   customer VARCHAR(255) NOT NULL,
					   salesperson VARCHAR(255) NOT NULL PRIMARY KEY)