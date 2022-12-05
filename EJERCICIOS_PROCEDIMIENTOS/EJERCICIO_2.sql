-- EJERCICIO 2
-- Crear un procedimiento almacenado que permita insertar un nuevo departamento

USE `db_buena`;
DROP procedure IF EXISTS `insertar_nuevo_departamento`;

DELIMITER $$
USE `db_buena`$$
CREATE PROCEDURE `insertar_nuevo_departamento`(IN nuevo_departamento VARCHAR(100))
BEGIN
	-- sentencia para registrar
	INSERT INTO 
		departamento (dpt_Nombre)
    VALUES
		(nuevo_departamento);
	
	-- sentencia para revisar el dato ingresado
	SELECT nro_Departamento, dpt_Nombre FROM departamento order by nro_Departamento DESC LIMIT 5;
END$$

DELIMITER ;
