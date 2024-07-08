CREATE DATABASE ProjectPrjBeoo;

CREATE TABLE users (
    id INT IDENTITY(1,1) PRIMARY KEY ,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    name NVARCHAR(50) NOT NULL,
    phone VARCHAR(10) NOT NULL,
    address NVARCHAR(100) NOT NULL,
    role INT NOT NULL DEFAULT 2
);

CREATE TABLE product (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(50) NOT NULL,
    quantity INT NOT NULL,
    price INT NOT NULL,
    description NVARCHAR(100) NOT NULL,
    image NVARCHAR(100) NOT NULL,
    category_id INT NOT NULL FOREIGN KEY REFERENCES category(id)

);

CREATE TABLE category (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(50) NOT NULL
);


CREATE TABLE orders (
    id INT IDENTITY(1,1) PRIMARY KEY,
    product_id INT NOT NULL FOREIGN KEY REFERENCES product(id),
    quantity INT NOT NULL,
    subtotal INT NOT NULL,
    purchase_id INT NOT NULL FOREIGN KEY REFERENCES purchase(id)
);

CREATE TABLE purchase (
    id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL FOREIGN KEY REFERENCES users(id),
    total INT NOT NULL,
    date DATE NOT NULL
);

INSERT INTO users (username, password, email, name, phone, address, role) VALUES ('admin', 'admin', 'admin@admin.com', N'admin', '0123456789', N'admin', 1);
insert into product([name], quantity, price, [description], image, category_id) 
values(N'Mô hình hỏa quyền Ace', 300, 50.00, N'Cao 14cm ngang 18cm nặng 400gr', 'https://lacdau.com/media/product/250-3008-1.jpg', 2),
(N'Mô hình Luffy', 300, 78.00, N'Cao 13cm ngang 18cm nặng 389gr', 'https://lacdau.com/media/product/250-3008-9.jpg', 2), 
(N'Mô hình viêm đế Sabo', 300, 43.00, N'Cao 14cm ngang 18cm nặng 410gr', 'https://lacdau.com/media/product/250-3006-13.jpg', 2)
Insert into product([name], quantity, price, [description], image, category_id)
VALUES (N'roronoa zoro', 300, 50.00, N'Cao 15cm ngang 17cm nặng 400gr', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_3n1IxXNuHxMf9vw4pVHAOOOtcoZiP0AKtQ&usqp=CAU', 6)
Insert into product([name], quantity, price, [description], image, category_id)
Values (N'Nami', 300, 50.00, N'Cao 20cm ngang 15cm nặng 300gr', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSppK0oOTyalswgD85SUAPpN-92HAEt19r4MQ&usqp=CAU', 2)
Insert into product([name], quantity, price, [description], image, category_id)
VALUES(N'Râu Trắng', 300, 78.00, N'Cao 40cm ngang 38cm nặng 580gr', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYBTcfnauYagphtdmdby44tlaVpOnOKoGSFw&usqp=CAU', 5)
Insert into product([name], quantity, price, [description], image, category_id)
VALUES (N'Enel', 300, 43.00, N'Cao 30cm ngang 30cm nặng 450gr', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq_iTr40Cwwo7t58_hfeukN9lafcXSLFspLg&usqp=CAU', 2)
Insert into product([name], quantity, price, [description], image, category_id)
VALUES (N'Portgas D. Ace', 200, 50.00, N'Cao 27cm ngang 24cm nặng 400gr', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMvx21qespvGXOtD0alIyv5JfGoouLQYFdow&usqp=CAU', 2)
Insert into product([name], quantity, price, [description], image, category_id)
VALUES (N'Sabo', 250, 50.00, N'Cao 27cm ngang 24cm nặng 400gr', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShwmCLYjFD1dt5liEi6QhYmUV21UApfYykXA&usqp=CAU', 4)
Insert into product([name], quantity, price, [description], image, category_id)
VALUES (N'Sakazuki Akainu', 300, 78.00, N'Cao 35cm ngang 30cm nặng 480gr', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_QcbtGDg1NaDS-PG_Cg1zoRHscf4FY7x6KQ&usqp=CAU', 1)
Insert into product([name], quantity, price, [description], image, category_id)
VALUES (N'Kuzan Aokiji', 300, 78.00, N'Cao 35cm ngang 30cm nặng 480gr', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp9gKozbD5GVRgn8QmWo6d1hMif5ZOApndsQ&usqp=CAU', 1)
