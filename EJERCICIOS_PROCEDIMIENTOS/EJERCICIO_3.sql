-- EJERCICIO 3
-- Crear un procedimiento que recupere el promedio de edad de las personas por cada departamento.

 USE `db_buena`;
DROP procedure IF EXISTS `mostrar_promedio_edad_departamento`;

DELIMITER $$
USE `db_buena`$$
CREATE PROCEDURE `mostrar_promedio_edad_departamento`()
BEGIN
SELECT
departamento.dpt_Nombre AS `Departamento`,
AVG(YEAR(CURRENT_DATE)- YEAR(empleado.fecha_nacimiento)) AS `Promedio Edad`
FROM
departamento
INNER JOIN empleado ON empleado.dept_no = departamento.nro_Departamento
GROUP BY
departamento.dpt_Nombre;
END$$
