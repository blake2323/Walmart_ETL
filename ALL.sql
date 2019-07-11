
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

SELECT * FROM features;

CREATE TABLE train (
id INT PRIMARY KEY,
store INT,
dept INT,
date DATE,
weekly_sales DECIMAL,
is_holiday BOOLEAN
);

SELECT * FROM train;

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

SELECT * FROM combined;

SELECT *
FROM features f
LEFT JOIN train t
ON t.id = f.id;

SELECT f.id, f.store, t.dept, f.date, t.weekly_sales,
f.is_holiday, f.temperature, f.fuel_price, f.cpi, f.unemployment
FROM features f
LEFT JOIN train t
ON t.id = f.id;