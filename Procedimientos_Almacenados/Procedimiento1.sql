DROP procedure IF EXISTS `Ejercicio1`;

DELIMITER $$
USE `db_buena`$$
CREATE PROCEDURE `Ejercicio1` ()
BEGIN
	SELECT
        `empl`.`emp_no` AS `Nro`,
        `empl`.`apellido` AS `empleado`,
        `empl`.`oficio` AS `oficio`,
        `dept`.`dpt_Nombre` AS `departamento`,
        YEAR(`empl`.`fecha_alt`) AS año_retiro,
        empl.salario AS salario
    FROM
        (empleado empl
        JOIN departamento dept ON ((empl.dept_no = dept.nro_Departamento)))
    WHERE
        (YEAR(empl.fecha_alt) < '2018');
END$$

DELIMITER ;