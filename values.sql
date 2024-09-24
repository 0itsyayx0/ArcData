Se le llenan los datos a la tabla correspondiente mente en este caso seria para la tabla 
EPS, Y PACIENTE 



INSERT INTO EPS (Id_Eps, Nit_Eps, Nombre_Eps, Direccion_Eps, Correo_Eps) 
VALUES 
(2, '2345678901', 'EPS Vida', 'Calle 456', 'info@vidasalud.com'),
(3, '3456789012', 'EPS Bienestar', 'Avenida 789', 'contacto@bienestar.com'),
(4, '4567890123', 'EPS Salud Viva', 'Carrera 10', 'atencion@saludviva.com');

INSERT INTO PACIENTE (Id_Paciente, Numero_Documento_Paciente, Nombre_Paciente, Apellido_Paciente, Correo_Paciente, Direccion_Paciente, Fecha_Nacimiento_Paciente, Id_Eps_Fk)
VALUES 
(2, '2233445566', 'Ana', 'Gómez', 'ana.gomez@mail.com', 'Avenida Siempreviva 742', '1985-05-22', 2),
(3, '3344556677', 'Luis', 'Rodríguez', 'luis.rod@mail.com', 'Calle Principal 45', '2000-12-30', 1),
(4, '4455667788', 'Marta', 'López', 'marta.lopez@mail.com', 'Calle 9 No 23', '1972-08-10', 3),
(5, '5566778899', 'Carlos', 'Hernández', 'carlos.hernandez@mail.com', 'Calle del Sol 77', '1995-07-15', 4);
