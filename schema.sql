DROP TABLE features;
DROP TABLE train;

CREATE TABLE features (
id INT PRIMARY KEY,
store INT,
date DATE,
temperature DECIMAL,
fuel_price DECIMAL,
cpi DECIMAL,
unemployment DECIMAL,
is_holiday BOOLEAN
);

CREATE TABLE train (
id INT PRIMARY KEY,
store INT,
dept INT,
date DATE,
weekly_sales DECIMAL,
is_holiday BOOLEAN
);

CREATE TABLE combined (
store INT,
date DATE,
temperature DECIMAL,
fuel_price DECIMAL,
cpi DECIMAL,
unemployment DECIMAL,
is_holiday BOOLEAN,
weekly_sales DECIMAL,
PRIMARY KEY(store, date)
);