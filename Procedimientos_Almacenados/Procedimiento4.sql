-- Ejercicio_4
-- Crear un procedimiento para devolver el apellido, oficio y salario, pasándole 
-- como parámetro el número del empleado. 

USE `db_buena`;
DROP procedure IF EXISTS `Ejercicio4`;

DELIMITER $$
USE `db_buena`$$
CREATE PROCEDURE `Ejercicio4`(IN numero_empleado INT)
BEGIN
	SELECT 
		emp_no, apellido, oficio, salario 
    FROM
		empleado
	WHERE 
		emp_no = numero_empleado;
END$$

DELIMITER ;