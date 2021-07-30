DELIMITER $$

CREATE TRIGGER triggerOrderDate
	BEFORE INSERT ON orders
	FOR EACH ROW
BEGIN
    SET NEW.OrderDate = CURRENT_DATE();
END $$

DELIMITER $$ ;
