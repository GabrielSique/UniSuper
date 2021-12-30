/*1. Obtener todos los apellidos de los empleados. */
SELECT APELLIDOS FROM EMPLEADO


/*2. Obtener los apellidos de los empleados sin repeticiones. */
SELECT APELLIDOS FROM EMPLEADO GROUP BY APELLIDOS


/*3. Obtener todos los datos de los empleados que se apellidan “Pérez” */
SELECT * FROM EMPLEADO WHERE APELLIDOS LIKE 'PEREZ%'


/*4. Obtener todos los datos de los empleados que se apellidan “Pérez” o “López” */
SELECT * FROM EMPLEADO WHERE APELLIDOS LIKE 'PEREZ%' OR 'LOPEZ%'


/*5. Obtener todos los datos de los empleados que trabajan para el departamento “Contabilidad” */
SELECT * FROM EMPLEADO WHERE COD_DEPTO = '3'


/*6. Obtener todos los datos de los empleados que trabajan para el departamento “Contabilidad” y “Gerencial General” */
SELECT * FROM EMPLEADO WHERE COD_DEPTO IN (1,3);


/*7. Obtener todos los datos de los empleados cuyo apellido comienza por la letra “P” */
SELECT * FROM EMPLEADO WHERE APELLIDOS LIKE 'P%'


/*8. Obtener el presupuesto total de todos los departamentos. */
SELECT SUM(PRESUPUESTO) AS 'PRESUPUESTO TOTAL DEPARTAMENTOS' FROM DEPARTAMENTO


/*9. Obtener el número de empleados por cada departamento. */
SELECT COUNT(DPI) FROM EMPLEADO GROUP BY COD_DEPTO


/*10. Obtener un listado completo de empleados, incluyendo por cada empleado los datos del empleado y de su departamento. */
SELECT D.NOMBRE_DEPTO, E.DPI, E.NOMBRE, E.APELLIDOS, E.COD_DEPTO FROM DEPARTAMENTO AS D
JOIN EMPLEADO AS E ON E.COD_DEPTO = D.CODIGO_DEPARTAMENTO


/*11. Obtener un listado completo de empleados, mostrando su nombre y apellido, junto con el nombre y presupuesto del departamento. Todo ordenado descendentemente por el apellido. */
SELECT D.NOMBRE_DEPTO, D.PRESUPUESTO, E.NOMBRE, E.APELLIDOS, E.COD_DEPTO FROM DEPARTAMENTO AS D
JOIN EMPLEADO AS E ON E.COD_DEPTO = D.CODIGO_DEPARTAMENTO ORDER BY E.APELLIDOS DESC


/*12. Obtener los nombres y apellidos de los empleados que trabajen en departamentos cuyo presupuesto sea mayor a 60,000. */
SELECT D.NOMBRE_DEPTO, D.PRESUPUESTO, E.NOMBRE, E.APELLIDOS FROM DEPARTAMENTO AS D
JOIN EMPLEADO AS E ON E.COD_DEPTO = D.CODIGO_DEPARTAMENTO WHERE D.PRESUPUESTO >= 60000


/*13. Obtener los datos de los departamentos cuyo presupuesto es superior al presupuesto medio de todos los departamentos. */
SELECT * FROM DEPARTAMENTO WHERE PRESUPUESTO >= (SELECT AVG(PRESUPUESTO) FROM DEPARTAMENTO)


/*14. Obtener los nombres de los departamentos que tienen más de 2 empleados. */
SELECT D.NOMBRE_DEPTO, COUNT(E.DPI) AS 'CANTIDAD EMPLEADOS' FROM DEPARTAMENTO AS D
JOIN EMPLEADO AS E ON E.COD_DEPTO = D.CODIGO_DEPARTAMENTO WHERE D.PRESUPUESTO GROUP BY D.NOMBRE_DEPTO HAVING COUNT(*)>2; 


/*15. Agregar un nuevo departamento “Control de Calidad”, con presupuesto de 40,000 y código 11. Y agregar un empleado vinculado a este departamento de nombre Esther Vásquez y con DNI: 28948238 */
INSERT INTO EMPLEADO (DPI, NOMBRE, APELLIDOS, COD_DEPTO) VALUES ('28948238', 'ESTHER', 'VASQUEZ', '14')
SELECT * FROM EMPLEADO WHERE DPI = '28948238'
