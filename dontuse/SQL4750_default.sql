-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-23 22:33:58.515




-- tables
-- Table Address
CREATE TABLE Address (
    address_id int  NOT NULL,
    street_number int  NOT NULL,
    street_suffix varchar(10)  NULL,
    street_name varchar(35)  NOT NULL,
    street_type varchar(15)  NOT NULL,
    street_direction varchar(2)  NULL,
    address_type varchar(20)  NOT NULL,
    address_type_identifier varchar(10)  NULL,
    minor_municipality varchar(35)  NULL,
    major_municipality varchar(35)  NOT NULL,
    governing_district varchar(35)  NOT NULL,
    zip varchar(16)  NOT NULL,
    iso_country_code char(2)  NOT NULL,
    CONSTRAINT Address_pk PRIMARY KEY (address_id)
);

-- Table Craft
CREATE TABLE Craft (
    craft_id int  NOT NULL,
    item_id int  NOT NULL,
    CONSTRAINT Craft_pk PRIMARY KEY (craft_id)
);

-- Table Craft_materials
CREATE TABLE Craft_materials (
    material_id int  NOT NULL,
    craft_id int  NOT NULL,
    CONSTRAINT Craft_materials_pk PRIMARY KEY (material_id,craft_id)
);

-- Table Custom_Order
CREATE TABLE Custom_Order (
    custom_order_id int  NOT NULL,
    order_id int  NOT NULL,
    comment varchar(255)  NULL,
    price_estimation decimal(19,4)  NOT NULL,
    CONSTRAINT Custom_Order_pk PRIMARY KEY (custom_order_id)
);

-- Table Customer
CREATE TABLE Customer (
    customer_id int  NOT NULL,
    last_name varchar(50)  NOT NULL,
    first_name varchar(50)  NOT NULL,
    phone_number varchar(20)  NOT NULL,
    email varchar(50)  NOT NULL,
    address_id int  NOT NULL,
    CONSTRAINT Customer_pk PRIMARY KEY (customer_id)
);

-- Table Employee
CREATE TABLE Employee (
    employee_id int  NOT NULL,
    last_name varchar(50)  NOT NULL,
    first_name varchar(50)  NOT NULL,
    hire_date date  NOT NULL,
    address_id int  NOT NULL,
    phone_number varchar(20)  NOT NULL,
    CONSTRAINT Employee_pk PRIMARY KEY (employee_id)
);

-- Table Gift_Order
CREATE TABLE Gift_Order (
    gift_id int  NOT NULL,
    order_id int  NOT NULL,
    rec_last_name varchar(50)  NOT NULL,
    rec_first_name varchar(50)  NOT NULL,
    address_id int  NOT NULL,
    CONSTRAINT Gift_Order_pk PRIMARY KEY (gift_id)
);

-- Table Gift_Shipping
CREATE TABLE Gift_Shipping (
    ship_id int  NOT NULL,
    address_id int  NOT NULL,
    gift_id int  NOT NULL,
    CONSTRAINT Gift_Shipping_pk PRIMARY KEY (ship_id)
);

-- Table Item
CREATE TABLE Item (
    item_id int  NOT NULL,
    qoh decimal(10,4)  NOT NULL,
    calculated_qoh decimal(10,4)  NOT NULL,
    name varchar(50)  NOT NULL,
    original_price decimal(19,4)  NOT NULL,
    current_price decimal(19,4)  NOT NULL,
    min_price decimal(19,4)  NULL,
    CONSTRAINT Item_pk PRIMARY KEY (item_id)
);

-- Table Local_vendors
CREATE TABLE Local_vendors (
    vendor_id int  NOT NULL,
    last_name varchar(50)  NULL,
    first_name varchar(50)  NULL,
    vendor_name varchar(50)  NULL,
    phone_number varchar(20)  NULL,
    address_id int  NULL,
    email varchar(50)  NULL,
    CONSTRAINT Local_vendors_pk PRIMARY KEY (vendor_id)
);

-- Table Material
CREATE TABLE Material (
    material_id int  NOT NULL,
    supplier_id int  NOT NULL,
    item_id int  NOT NULL,
    unit_price int  NOT NULL,
    CONSTRAINT Material_pk PRIMARY KEY (material_id)
);

-- Table `Order`
CREATE TABLE `Order` (
    order_id int  NOT NULL,
    customer_id int  NULL,
    employee_id int  NOT NULL,
    order_date date  NOT NULL,
    subtotal decimal(19,4)  NOT NULL,
    tax_amount decimal(19,4)  NOT NULL,
    total_price decimal(19,4)  NOT NULL,
    order_type varchar(5)  NOT NULL,
    CONSTRAINT Order_pk PRIMARY KEY (order_id)
);

-- Table Order_Details
CREATE TABLE Order_Details (
    order_id int  NOT NULL,
    item_id int  NOT NULL,
    item_price decimal(19,4)  NOT NULL,
    qty int  NOT NULL,
    CONSTRAINT Order_Details_pk PRIMARY KEY (order_id,item_id)
);

-- Table Order_Materials
CREATE TABLE Order_Materials (
    material_id int  NOT NULL,
    supplier_order_id int  NOT NULL,
    qty int  NOT NULL,
    discount_amount decimal(19,4)  NOT NULL,
    CONSTRAINT Order_Materials_pk PRIMARY KEY (material_id,supplier_order_id)
);

-- Table Return_Details
CREATE TABLE Return_Details (
    return_id int  NOT NULL,
    item_id int  NOT NULL,
    qty int  NOT NULL,
    CONSTRAINT Return_Details_pk PRIMARY KEY (return_id,item_id)
);

-- Table Returns_Inventory
CREATE TABLE Returns_Inventory (
    return_id int  NOT NULL,
    order_id int  NOT NULL,
    return_date date  NOT NULL,
    CONSTRAINT Returns_Inventory_pk PRIMARY KEY (return_id)
);

-- Table Ship_Cost
CREATE TABLE Ship_Cost (
    ship_cost_id int  NOT NULL,
    ship_distance varchar(25)  NOT NULL,
    ship_id int  NOT NULL,
    shipping_cost decimal(19,4)  NOT NULL,
    CONSTRAINT Ship_Cost_pk PRIMARY KEY (ship_cost_id)
);

-- Table Supplier
CREATE TABLE Supplier (
    supplier_id int  NOT NULL,
    company_name varchar(50)  NOT NULL,
    contact_name int  NOT NULL,
    contact_job_title varchar(50)  NULL,
    company_phone varchar(20)  NOT NULL,
    contact_phone varchar(20)  NOT NULL,
    address_id int  NOT NULL,
    email varchar(50)  NULL,
    CONSTRAINT Supplier_pk PRIMARY KEY (supplier_id)
);

-- Table Supplier_Discount
CREATE TABLE Supplier_Discount (
    material_id int  NOT NULL,
    supplier_id int  NOT NULL,
    min_qty int  NOT NULL,
    discount_percent decimal(3,2)  NOT NULL,
    CONSTRAINT Supplier_Discount_pk PRIMARY KEY (material_id,supplier_id)
);

-- Table Supplier_Order
CREATE TABLE Supplier_Order (
    supplier_order_id int  NOT NULL,
    employee_id int  NOT NULL,
    supplier_id int  NOT NULL,
    order_date date  NOT NULL,
    subtotal decimal(19,4)  NOT NULL,
    tax_amount decimal(19,4)  NOT NULL,
    total_discount decimal(19,4)  NOT NULL,
    total_price decimal(19,4)  NOT NULL,
    CONSTRAINT Supplier_Order_pk PRIMARY KEY (supplier_order_id)
);

-- Table User
CREATE TABLE User (
    employee_id int  NOT NULL,
    password_hash varchar(255)  NOT NULL,
    accessLevel int  NOT NULL,
    CONSTRAINT User_pk PRIMARY KEY (employee_id)
);





-- foreign keys
-- Reference:  Craft_Item (table: Craft)

ALTER TABLE Craft ADD CONSTRAINT Craft_Item FOREIGN KEY Craft_Item (item_id)
    REFERENCES Item (item_id);
-- Reference:  Craft_materials_Craft (table: Craft_materials)

ALTER TABLE Craft_materials ADD CONSTRAINT Craft_materials_Craft FOREIGN KEY Craft_materials_Craft (craft_id)
    REFERENCES Craft (craft_id);
-- Reference:  Craft_materials_Material (table: Craft_materials)

ALTER TABLE Craft_materials ADD CONSTRAINT Craft_materials_Material FOREIGN KEY Craft_materials_Material (material_id)
    REFERENCES Material (material_id);
-- Reference:  Custom_Order_Order (table: Custom_Order)

ALTER TABLE Custom_Order ADD CONSTRAINT Custom_Order_Order FOREIGN KEY Custom_Order_Order (order_id)
    REFERENCES `Order` (order_id);
-- Reference:  Customer_Address (table: Customer)

ALTER TABLE Customer ADD CONSTRAINT Customer_Address FOREIGN KEY Customer_Address (address_id)
    REFERENCES Address (address_id);
-- Reference:  Discount_Material (table: Supplier_Discount)

ALTER TABLE Supplier_Discount ADD CONSTRAINT Discount_Material FOREIGN KEY Discount_Material (material_id)
    REFERENCES Material (material_id);
-- Reference:  Discount_Supplier (table: Supplier_Discount)

ALTER TABLE Supplier_Discount ADD CONSTRAINT Discount_Supplier FOREIGN KEY Discount_Supplier (supplier_id)
    REFERENCES Supplier (supplier_id);
-- Reference:  Employee_Address (table: Employee)

ALTER TABLE Employee ADD CONSTRAINT Employee_Address FOREIGN KEY Employee_Address (address_id)
    REFERENCES Address (address_id);
-- Reference:  Gift_Order_Address (table: Gift_Order)

ALTER TABLE Gift_Order ADD CONSTRAINT Gift_Order_Address FOREIGN KEY Gift_Order_Address (address_id)
    REFERENCES Address (address_id);
-- Reference:  Gift_Order_Order (table: Gift_Order)

ALTER TABLE Gift_Order ADD CONSTRAINT Gift_Order_Order FOREIGN KEY Gift_Order_Order (order_id)
    REFERENCES `Order` (order_id);
-- Reference:  Gift_Shipping_Address (table: Gift_Shipping)

ALTER TABLE Gift_Shipping ADD CONSTRAINT Gift_Shipping_Address FOREIGN KEY Gift_Shipping_Address (address_id)
    REFERENCES Address (address_id);
-- Reference:  Gift_Shipping_Gift_Order (table: Gift_Shipping)

ALTER TABLE Gift_Shipping ADD CONSTRAINT Gift_Shipping_Gift_Order FOREIGN KEY Gift_Shipping_Gift_Order (gift_id)
    REFERENCES Gift_Order (gift_id);
-- Reference:  Local_vendors_Address (table: Local_vendors)

ALTER TABLE Local_vendors ADD CONSTRAINT Local_vendors_Address FOREIGN KEY Local_vendors_Address (address_id)
    REFERENCES Address (address_id);
-- Reference:  Material_Item (table: Material)

ALTER TABLE Material ADD CONSTRAINT Material_Item FOREIGN KEY Material_Item (item_id)
    REFERENCES Item (item_id);
-- Reference:  Material_Supplier (table: Material)

ALTER TABLE Material ADD CONSTRAINT Material_Supplier FOREIGN KEY Material_Supplier (supplier_id)
    REFERENCES Supplier (supplier_id);
-- Reference:  Order_Details_Item (table: Order_Details)

ALTER TABLE Order_Details ADD CONSTRAINT Order_Details_Item FOREIGN KEY Order_Details_Item (item_id)
    REFERENCES Item (item_id);
-- Reference:  Order_Employee (table: `Order`)

ALTER TABLE `Order` ADD CONSTRAINT Order_Employee FOREIGN KEY Order_Employee (employee_id)
    REFERENCES Employee (employee_id);
-- Reference:  Order_Materials_Material (table: Order_Materials)

ALTER TABLE Order_Materials ADD CONSTRAINT Order_Materials_Material FOREIGN KEY Order_Materials_Material (material_id)
    REFERENCES Material (material_id);
-- Reference:  Order_Materials_Supplier_Order (table: Order_Materials)

ALTER TABLE Order_Materials ADD CONSTRAINT Order_Materials_Supplier_Order FOREIGN KEY Order_Materials_Supplier_Order (supplier_order_id)
    REFERENCES Supplier_Order (supplier_order_id);
-- Reference:  Returns_Inventory_Order (table: Returns_Inventory)

ALTER TABLE Returns_Inventory ADD CONSTRAINT Returns_Inventory_Order FOREIGN KEY Returns_Inventory_Order (order_id)
    REFERENCES `Order` (order_id);
-- Reference:  Ship_Cost_Gift_Shipping (table: Ship_Cost)

ALTER TABLE Ship_Cost ADD CONSTRAINT Ship_Cost_Gift_Shipping FOREIGN KEY Ship_Cost_Gift_Shipping (ship_id)
    REFERENCES Gift_Shipping (ship_id);
-- Reference:  Supplier_Address (table: Supplier)

ALTER TABLE Supplier ADD CONSTRAINT Supplier_Address FOREIGN KEY Supplier_Address (address_id)
    REFERENCES Address (address_id);
-- Reference:  Supplier_Order_Employee (table: Supplier_Order)

ALTER TABLE Supplier_Order ADD CONSTRAINT Supplier_Order_Employee FOREIGN KEY Supplier_Order_Employee (employee_id)
    REFERENCES Employee (employee_id);
-- Reference:  Supplier_Order_Supplier (table: Supplier_Order)

ALTER TABLE Supplier_Order ADD CONSTRAINT Supplier_Order_Supplier FOREIGN KEY Supplier_Order_Supplier (supplier_id)
    REFERENCES Supplier (supplier_id);
-- Reference:  Users_Employee (table: User)

ALTER TABLE User ADD CONSTRAINT Users_Employee FOREIGN KEY Users_Employee (employee_id)
    REFERENCES Employee (employee_id);
-- Reference:  client_order (table: `Order`)

ALTER TABLE `Order` ADD CONSTRAINT client_order FOREIGN KEY client_order (customer_id)
    REFERENCES Customer (customer_id);
-- Reference:  purchase_purchase_item (table: Order_Details)

ALTER TABLE Order_Details ADD CONSTRAINT purchase_purchase_item FOREIGN KEY purchase_purchase_item (order_id)
    REFERENCES `Order` (order_id);
-- Reference:  return_details_Item (table: Return_Details)

ALTER TABLE Return_Details ADD CONSTRAINT return_details_Item FOREIGN KEY return_details_Item (item_id)
    REFERENCES Item (item_id);
-- Reference:  return_details_Returns_Inventory (table: Return_Details)

ALTER TABLE Return_Details ADD CONSTRAINT return_details_Returns_Inventory FOREIGN KEY return_details_Returns_Inventory (return_id)
    REFERENCES Returns_Inventory (return_id);



-- End of file.

