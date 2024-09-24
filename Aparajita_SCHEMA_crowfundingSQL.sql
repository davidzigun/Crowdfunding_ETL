
DROP TABLE category;

DROP TABLE subcategory;

DROP TABLE contact;

DROP TABLE campaign;

-- Create the Category table
CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);



--importing the csv file from the resource and view Category Table
select * from Category;

-- Create the subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);

----importing the csv file from the resource and view subcategory Table
select * from subcategory;


-- Create the contact table
CREATE TABLE contact (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);


----importing the csv file from the resource and view contact Table
select * from contact;


-- Create the campaign table
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    goal DECIMAL(10, 2),
    pledged DECIMAL(10, 2),
    outcome VARCHAR(255),
    backers_count INT,
    country VARCHAR(100),
    currency VARCHAR(100),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(10) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contact(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

------importing the csv file from the resource and view campaign Table
select * from campaign;

