-- Create contacts table first.
-- Import contacts.csv after creation.
CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL
);

-- Then category second.
-- Import category.csv after creation.
CREATE TABLE category (
    category_id VARCHAR PRIMARY KEY,
    category VARCHAR NOT NULL
);

-- Then subcategory third.
-- Import subcategory.csv after creation.
CREATE TABLE subcategory (
    subcategory_id VARCHAR PRIMARY KEY,
    subcategory VARCHAR NOT NULL
);

-- Then campaign last.
-- Import campaign.csv after creation.
CREATE TABLE campaign (
    cf_id INTEGER PRIMARY KEY NOT NULL,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR NOT NULL,
    description TEXT,
    goal DECIMAL,
    pledged DECIMAL,
    outcome VARCHAR,
    backers_count INTEGER,
    country VARCHAR,
    currency VARCHAR,
    launch_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    staff_pick BOOLEAN DEFAULT FALSE,
    spotlight BOOLEAN DEFAULT FALSE,
    category_id VARCHAR NOT NULL,
    subcategory_id VARCHAR
);

-- If needed.

ALTER TABLE campaign
ADD CONSTRAINT fk_contact FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
ADD CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES category(category_id),
ADD CONSTRAINT fk_subcategory FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id);

ALTER TABLE campaign DROP CONSTRAINT fk_contact;
ALTER TABLE campaign DROP CONSTRAINT fk_category;
ALTER TABLE campaign DROP CONSTRAINT fk_subcategory;

-- Test it out.
SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory 
SELECT * FROM campaign
