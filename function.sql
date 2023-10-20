DELIMITER //
CREATE FUNCTION total_clientes(data DATE) RETURNS INT
BEGIN
  DECLARE total INT;
  SELECT COUNT(*) INTO total
  FROM clientes
  WHERE DATE(data_cadastro) = data;
  RETURN total;
END //
DELIMITER ;