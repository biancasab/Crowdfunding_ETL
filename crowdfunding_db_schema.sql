-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/

DROP TABLE IF EXISTS contacts CASCADE;
CREATE TABLE contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR(255)   NOT NULL,
    last_name VARCHAR(255)   NOT NULL,
    email VARCHAR(255)   NOT NULL,
	PRIMARY KEY (contact_id)
);

DROP TABLE IF EXISTS category CASCADE;
CREATE TABLE category (
    category_id VARCHAR(255)   NOT NULL,
    category VARCHAR(255)   NOT NULL,
	PRIMARY KEY (category_id)
);

DROP TABLE IF EXISTS subcategory CASCADE;
CREATE TABLE subcategory (
    subcategory_id VARCHAR(255)   NOT NULL,
    subcategory VARCHAR(255)   NOT NULL,
	PRIMARY KEY (subcategory_id)
);

DROP TABLE IF EXISTS campaign CASCADE;
CREATE TABLE campaign (
    cf_id INT   NOT NULL,
    contact_id INT   NOT NULL,
    company_name VARCHAR(255)   NOT NULL,
    description VARCHAR(255)   NOT NULL,
    goal DECIMAL   NOT NULL,
    pledged DECIMAL   NOT NULL,
    outcome VARCHAR(255)   NOT NULL,
    backers_count INT   NOT NULL,
    country VARCHAR(2)   NOT NULL,
    currency VARCHAR(3)   NOT NULL,
    launched_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR(255)   NOT NULL,
    subcategory_id VARCHAR(255)   NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);


--Check tables
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;

