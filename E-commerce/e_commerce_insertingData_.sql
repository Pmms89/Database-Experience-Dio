-- Inserting (persisting) data into E-commerce database:

USE Ecommerce;

SHOW tables;

-- Customer table completed with the following items: Fname, Minit, Lname, CPF, CNPJ, Street, St_Num, Complement, City, State,
-- Country, Zip_code, email
INSERT INTO Customer(Fname, Minit, Lname, CPF, CNPJ, Street, St_Num, Complement, City, State, Country, Zip_code, email)
	   VALUES('Aparecida', 'M', 'Silva', 14225678911, NULL,'R. Alfredo', '808', 'Apt. 14', 'Sumare', 'SP', 'Brasil', 123451118, 'aparecida123@gmail.com'),
			 ('Joao', 'R', 'ALves', 12345689000, NULL,'Rua Augusta', '10', NULL, 'Sao Paulo', 'SP', 'Brasil', 123400078, 'joaoalves_@hotmail.com.br'),
			 ('Alberto', 'G', 'Costa', 10005678911, NULL,'R. C e S', '109', 'Apt. 1204', 'Mossoro', 'RN', 'Brasil', 59020555, 'albertogc@gmail.com'),
			 ('Almira', 'D', 'Cavalcanti', 12340108911, 123456781234567891,'R. Tereza Tinoco', '15', 'Apt. 520', 'Joao Pessoa', 'PB', 'Brasil', 1234567800, 'almira_cavalcanti@yahoo.com.br'),
			 ('Juliano', 'R', 'Gomes', 84245678911, 234567891023451876,'Rua Prudente de Morais', '1486', NULL, 'Rio de Janeio', 'RJ', 'Brasil', 123665578, 'jrg44@hotmail.com.br'),
			 ('Carlos', 'F', 'Dantas', 16564678911, NULL,'R. da Saudade', '41', NULL, 'Natal', 'RN', 'Brasil', 143256808, 'carlos_fdantas@gmail.com');
             
-- Product table completed with the following items: Pname, Category, PValue, Evaluation
INSERT INTO Product(Pname, Category, PValue, Evaluation)
	   VALUES('Headphones', 'Electronics', 150.00, 4),
			 ('Bread', 'Grocery', 10.00, 5),
             ('LEGO', 'Toys & Video Games', 500.00, 5),
             ('Jacket', 'Clothing, Shoes & Acessories', 100.00, 4),
             ('Bedding Sets', 'Home, Furniture & Appliances', 200, 4.5),
             ('Diapers', 'Baby', 50, 3.5);
             
-- Payment table completed with the following items: idCustomer, Customer_paymen, PaymentType, Card_number, Card_holder_name,
-- Card_expiration_date, Invoice_number, Invoice_expiration_date, Pix_Zelle_payment_details
INSERT INTO Payment(idCustomer, Customer_payment, PaymentType, Card_number, Card_holder_name,Card_expiration_date, Invoice_number, 
	Invoice_expiration_date, Pix_Zelle_payment_details)
	   VALUES(1, 150, 'Credit Card', 1234567891234567, 'Aparecida M Silva','01-04-26', NULL, NULL, NULL),
			 (6, 10, 'PIX/Zelle', NULL, NULL, NULL, NULL, NULL, 'Carlos F Dantas'),
             (4, 500, 'Credit Card', 1235566891234567, 'Almira D C','01-12-25', NULL, NULL, NULL),
             (5, 100, 'Debit Card', 1234567891578567, 'Juliano R Gomes','01-02-23', NULL, NULL, NULL),
             (3, 200, 'Invoice', NULL, NULL,NULL, 98765438764321, '20-05-22', NULL),
             (2, 50, 'Invoice', NULL, NULL,NULL, 98756738764321, '02-10-22', NULL);
             
-- Orders table completed with the following items: idOrderCustomer, OrderStatus, OrderDescription, ShippingValue, PaymentStatus
INSERT INTO Orders(idOrderCustomer, OrderStatus, OrderDescription, ShippingValue, PaymentStatus)
	   VALUES(1, 'Processing', 'Headphones', 15, 0),
			 (6, 'Delivered', 'Bread', 0, 1),
             (4, 'Payment Confirmed','LEGO', 25, 1),
             (5, 'Payment Confirmed', 'Jacket', 6, 1),
             (3, 'Shipping', 'Bedding sets', 7, 1),
             (2, 'Confirmed', 'Diapers', 5, 1);
             
-- Delivery table completed with the following items: ShippingStatus, TrackingCode, DeliveryDate
INSERT INTO Delivery(ShippingStatus, TrackingCode, DeliveryDate)
	   VALUES(0, 55554442, '05-10-22'),
			 (1, 42254442, '19-09-22'),
             (1, 34554322, '22-10-22'),
             (0, 335548742, '28-10-22'),
             (1, 6575543342, '04-10-22'),
             (1, 998754332, '02-10-22');
             
-- Stock table completed with the following items: Local
INSERT INTO Stock(Local)
       VALUES('R das Alamentas, 54 - Sao Paulo, SP'),
			 ('R do Vale, 43 - Rio de Janeiro, RJ'),
             ('R Sergipe, 89 - Fortaleza, CE'),
             ('R das Alagoas, 184 - Natal, RN'),
             ('R Tereza Campos, 444 - João Pessoa, PB'),
             ('R Almino Afonso, 584 - Sao Paulo, SP');




             
