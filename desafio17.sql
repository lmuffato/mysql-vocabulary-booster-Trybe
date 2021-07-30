DROP TRIGGER IF EXISTS `setOrderDate`;

USE w3schools;
DELIMITER $$

CREATE TRIGGER setOrderDate 
  BEFORE INSERT ON orders
  FOR EACH ROW
BEGIN
  SET NEW.OrderDate = DATE(NOW());
END $$

DELIMITER ;
