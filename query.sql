SELECT * FROM features;

SELECT * FROM train;

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