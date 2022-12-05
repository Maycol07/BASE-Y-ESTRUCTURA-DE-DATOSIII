-- EJERCICIO 1
-- Obtener todos los empleados que se dieron de alta antes del a�o 2018 y que 
-- pertenecen a un determinado departamento. 

USE `db_buena`;
DROP procedure IF EXISTS `ejercicio1`;

DELIMITER $$
USE `db_buena`$$
CREATE PROCEDURE `ejercicio1` ()
BEGIN
	SELECT
        `empl`.`emp_no` AS `Nro`,
        `empl`.`apellido` AS `empleado`,
        `empl`.`oficio` AS `oficio`,
        `dept`.`dpt_Nombre` AS `departamento`,
        YEAR(`empl`.`fecha_alt`) AS a�o_retiro,
        empl.salario AS salario
    FROM
        (empleado empl
        JOIN departamento dept ON ((empl.dept_no = dept.nro_Departamento)))
    WHERE
        (YEAR(empl.fecha_alt) < '2018');
END$$
