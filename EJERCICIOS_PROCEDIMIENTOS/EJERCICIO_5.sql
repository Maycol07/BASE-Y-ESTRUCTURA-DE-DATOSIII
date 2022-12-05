-- ejercicio 5
-- Crear un procedimiento almacenado para dar de baja a un empleado 
-- pasándole como parámetro su apellido. 

USE `db_buena`;
DROP procedure IF EXISTS `dar_baja_empleado2`;

DELIMITER $$
USE `db_buena`$$
CREATE PROCEDURE `dar_baja_empleado2`(IN _apell VARCHAR(150))
BEGIN
	SET @id_empleado=0;
    
    SELECT emp_no INTO @id_empleado FROM empleado WHERE apellido= _apell;
    
    update empleado set fecha_alt=(CURRENT_DATE) WHERE emp_no = @id_empleado;
    
    SELECT emp_no, apellido, fecha_alt, oficio FROM empleado WHERE emp_no = @id_empleado;
    
END$$