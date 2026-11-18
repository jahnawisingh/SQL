-- The Case of ITC for Investing the data base and Cereating the tables -

CREATE TABLE distributors (
   distributor_id INTEGER PRIMARY KEY,
    name          TEXT NOT NULL,
    city           TEXT,
   region   TEXT,
  phone   TEXT
  ); 
  
  --Droping the table-----
  DROP TABLE distributors;
  
  --Create another tale name Products--
  --Create a table Name Products with the following details [ product_id,product_name, brand, category, price,stock]
  CREATE TABLE product(
     product_id INTEGER PRIMARY KEY,
     prodcut_name TEXT NOT NULL UNIQUE,
    brand TEXT,
    category TEXT NOT NULL,
     price real not null (PRICE > 0),
    stock integer DEFAULT 0
    );
    --create a table name sales,containing varibles,sales_id,product id, distributor id,sales date, quantity,amount
    CREATE TABLE sales (
  sale_id INTEGER PRIMARY KEY,
  product_id INTEGER,
  distributor_id INTEGER,
   sale_date TEXT,
   quantity INTEGER CHECK (quantity>0),
    amount REAL,
     FOREIGN KEY (product_id) REFERENCES products(product_id),
     FOREIGN KEY (distributor_id) REFERENCES distributors(distributor_id)
     );
    