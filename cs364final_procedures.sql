use cs364final;

CREATE VIEW ProductSummary AS
SELECT 
    p.product_id,
    p.category_code,
    p.brand,
    p.price,
    COUNT(CASE WHEN e.event_type = 'view' THEN 1 END) AS views,
    COUNT(CASE WHEN e.event_type = 'purchase' THEN 1 END) AS purchases
FROM 
    Products p
JOIN 
    Events e ON p.product_id = e.product_id
GROUP BY 
    p.product_id, p.category_code, p.brand, p.price;


/* -- trigger -- */

DELIMITER //
CREATE TRIGGER BeforePriceUpdate
BEFORE UPDATE ON Products
FOR EACH ROW
BEGIN
    IF OLD.price != NEW.price THEN
        INSERT INTO PriceChangeLog (product_id, old_price, new_price, change_date)
        VALUES (OLD.product_id, OLD.price, NEW.price, NOW());
    END IF;
END; //
DELIMITER ;
