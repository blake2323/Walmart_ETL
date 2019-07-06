DROP TABLE features;
DROP TABLE train;

CREATE TABLE features (
store INT PRIMARY KEY,
date DATE,
temperature DECIMAL,
fuel_price DECIMAL,
cpi DECIMAL,
unemployment DECIMAL,
is_holiday BOOLEAN
);

SELECT * FROM features;

CREATE TABLE train (
store INT PRIMARY KEY,
dept INT,
date DATE,
weekly_sales DECIMAL,
is_holiday BOOLEAN
);

SELECT * FROM train;