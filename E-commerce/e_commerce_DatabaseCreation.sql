-- E-Commerce database created for the DIO Database Experience Bootcamp:

-- DROP DATABASE Ecommerce;

-- Creating the database:
CREATE DATABASE Ecommerce;
USE Ecommerce;

-- Creating tables based on my EER Diagram:
-- Customer table:
CREATE TABLE Customer(
	idCustomer INT auto_increment PRIMARY KEY,
    Fname VARCHAR(10),
    Minit CHAR(3),
    Lname VARCHAR(15),
	CPF CHAR (11) ,
    CNPJ VARCHAR(18),
    Street VARCHAR(25),
    St_Num INT,
    Complement VARCHAR(15),
    City VARCHAR (15),
    State VARCHAR(15),
    Country VARCHAR(15),
    Zip_code VARCHAR(15),
    email VARCHAR(30) NOT NULL,
    CONSTRAINT unique_cpf_Customer UNIQUE (CPF),
    CONSTRAINT unique_cnpj_Customer UNIQUE (CNPJ)
    );

DESC Customer;

-- Procuct table:
CREATE TABLE Product(
	idProduct INT auto_increment PRIMARY KEY,
    Pname VARCHAR(15),
    Category ENUM('Electronics', 'Grocery', 'Toys & Video Games', 
				  'Clothing, Shoes & Acessories', 'Home, Furniture & Appliances', 'Personal care',
			      'Household Essentials', 'Baby', 'Office & School Supplies'),
	PValue FLOAT,
    Evaluation FLOAT DEFAULT 0
);

DESC Product;

-- Payment table:
CREATE TABLE Payment(
	idPayment INT auto_increment,
    idCustomer INT,
    Customer_payment INT,
    PaymentType ENUM('Credit Card', 'Debit Card', 'PIX/Zelle', 'Invoice') NOT NULL,
    Card_number CHAR(16),
    Card_holder_name VARCHAR(20),
    Card_expiration_date DATE,
    Invoice_number VARCHAR(45),
    Invoice_expiration_date DATE,
    Pix_Zelle_payment_details VARCHAR(45),
    PRIMARY KEY(idPayment, idCustomer),
    CONSTRAINT fk_Customer_payment FOREIGN KEY (idCustomer) REFERENCES Customer(idCustomer)
);

DESC Payment;

-- Order table:
CREATE TABLE Orders(
	idOrders INT auto_increment PRIMARY KEY,
    idOrderCustomer INT,
    OrderStatus ENUM('Processing', 'Payment Confirmed', 'Confirmed', 'Shipping', 'Delivered', 'Canceled') NOT NULL,
    OrderDescription VARCHAR(100),
    ShippingValue FLOAT DEFAULT 5,
    PaymentStatus BOOL DEFAULT FALSE,
    CONSTRAINT fk_orders FOREIGN KEY (idOrderCustomer) REFERENCES Customer(idCustomer)
);

DESC Orders;

-- Deliver table:
CREATE TABLE Delivery(
	idDelivery INT auto_increment PRIMARY KEY,
    ShippingStatus BOOL,
    TrackingCode VARCHAR(45),
    DeliveryDate DATE
);

DESC Delivery;

-- Stock table:
CREATE TABLE Stock(
	idStock INT auto_increment PRIMARY KEY,
    Local VARCHAR(45)
);

DESC Stock;

-- Stock products table:
CREATE TABLE ProductStock(
	idProduct INT PRIMARY KEY,
    idProductStock INT,
    Quantity FLOAT,
    CONSTRAINT fk_stock FOREIGN KEY (idProduct) REFERENCES Product(idProduct),
    CONSTRAINT fk_stock_product FOREIGN KEY (idProductStock) REFERENCES Stock(idStock)
);

DESC ProductStock;

-- Supplier table:
CREATE TABLE Supplier(
	idSupplier INT auto_increment PRIMARY KEY,
    CorporateName VARCHAR(45),
    CPF CHAR (11) NOT NULL,
    CNPJ VARCHAR(18),
    email VARCHAR(30) NOT NULL,
    CONSTRAINT unique_cpf_Customer UNIQUE (CPF),
    CONSTRAINT unique_cnpj_Customer UNIQUE (CNPJ)
);

DESC Supplier;

-- Third party seller table:
CREATE TABLE ThirdpartySeller(
	idThirdpartySeller INT auto_increment PRIMARY KEY,
	CorporateName VARCHAR(45),
    CPF CHAR (11) NOT NULL,
    CNPJ VARCHAR(18),
    Location VARCHAR(45),
    email VARCHAR(30) NOT NULL,
    CONSTRAINT unique_cpf_Customer UNIQUE (CPF),
    CONSTRAINT unique_cnpj_Customer UNIQUE (CNPJ)
);

DESC ThirdpartySeller;

-- Product Order table:
CREATE TABLE ProductOrder(
	idPOrders INT,
    idPProduct INT,
    Quantity FLOAT DEFAULT 1,
    PRIMARY KEY(idPOrders, idPProduct),
    CONSTRAINT fk_order FOREIGN KEY (idPOrders) REFERENCES Orders(idOrders),
    CONSTRAINT fk_product FOREIGN KEY (idPProduct) REFERENCES Product(idProduct)
);

DESC ProductOrder;

-- Product orders to supplier: 
CREATE TABLE OrdersSupplier(
	idPurchaseSupplier INT,
    idOrdersSupplier INT,
    Quantidade FLOAT DEFAULT 1,
    PRIMARY KEY(idPurchaseSupplier, idOrdersSupplier),
    CONSTRAINT fk_purchase_supplier FOREIGN KEY (idPurchaseSupplier) REFERENCES Supplier(idSupplier),
    CONSTRAINT fk_orders_supplier FOREIGN KEY (idOrdersSupplier) REFERENCES Orders(idOrders)
);

DESC OrdersSupplier;

-- Products in stock (table to verify if the supplier has the Customer product):
CREATE TABLE StockSupplier(
	idStockSupplier INT,
    idProductSupplier INT,
    PRIMARY KEY (idStockSupplier, idProductSupplier),
    CONSTRAINT fk_stock_supplier FOREIGN KEY (idStockSupplier) REFERENCES Supplier(idSupplier),
    CONSTRAINT fk_product_supplier FOREIGN KEY (idProductSupplier) REFERENCES Product(idProduct)
);

DESC StockSupplier;

-- Products in third party seller stock (table to verify if the third party seller supplier has the Customer product):
CREATE TABLE StockThird(
	idProductStock INT,
    idThirdpartySeller INT,
    CONSTRAINT fk_product_stock FOREIGN KEY (idProductStock) REFERENCES Product(idProduct),
    CONSTRAINT fk_po_fornecedor FOREIGN KEY ( idThirdpartySeller) REFERENCES ThirdpartySeller(idThirdpartySeller)
);

DESC StockThird;