SELECT
p.product_name, s.year, s.price
FROM Product AS p
JOIN Sales as S
ON p.product_id = s.product_id;