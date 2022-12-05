-- EJERCICIO 4
-- Crear un procedimiento para devolver el apellido, oficio y salario, pasándole 
-- como parámetro el número del empleado. 

USE `db_buena`;
DROP procedure IF EXISTS `datos_empleado`;

DELIMITER $$
USE `db_buena`$$
CREATE PROCEDURE `datos_empleado`(IN numero_empleado INT)
BEGIN
	SELECT 
		emp_no, apellido, oficio, salario 
    FROM
		empleado
	WHERE 
		emp_no = numero_empleado;
END$$

DELIMITER ;