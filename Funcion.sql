Se crea la funcion 

DELIMITER $$

CREATE FUNCTION calcular_edad(fecha_nacimiento DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN TIMESTAMPDIFF(YEAR, fecha_nacimiento, CURDATE());
END $$

DELIMITER ;

y se selecciona las tabla correspondiente con sus datos a visualizar 


SELECT Nombre_Paciente, Apellido_Paciente, calcular_edad(Fecha_Nacimiento_Paciente) AS Edad
FROM PACIENTE;


y se mostrara el resultado 

Nombre_Paciente	Apellido_Paciente	Fecha_Nacimiento_Paciente	Edad
Juan	Perez	1990-01-15	34
Ana	Gómez	1985-05-22	39
Luis	Rodríguez	2000-12-30	23
Marta	López	1972-08-10	52
Carlos	Hernández	1995-07-15	29
