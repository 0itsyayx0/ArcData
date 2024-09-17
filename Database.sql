create database ArcData;
DROP database ArcData;
USE ArcData;

CREATE TABLE IF NOT EXISTS EPS
(
  Id_Eps INT NOT NULL UNIQUE,
  Nit_Eps VARCHAR(10) NOT NULL,
  Nombre_Eps VARCHAR(30),
  Direccion_Eps VARCHAR(40),
  Correo_Eps VARCHAR(100),
  PRIMARY KEY (Id_Eps));
  
  CREATE TABLE IF NOT EXISTS HISTORIAL_CLINICO
(
  Id_Hclinico INT NOT NULL UNIQUE,
  Id_Paciente_Fk INT NOT NULL,
  Id_Eps_Fk INT NOT NULL,
  Observaciones VARCHAR(500),
  PRIMARY KEY (Id_Hclinico),
  FOREIGN KEY (Id_Paciente_Fk) REFERENCES PACIENTE(Id_Paciente),
  FOREIGN KEY (Id_Eps_Fk) REFERENCES EPS(Id_Eps));
  
  CREATE TABLE IF NOT EXISTS PACIENTE
(
  Id_Paciente INT NOT NULL UNIQUE,
  Numero_Documento_Paciente VARCHAR(10) NOT NULL UNIQUE,
  Nombre_Paciente VARCHAR(25),
  Apellido_Paciente VARCHAR(25),
  Correo_Paciente VARCHAR(100),
  Direccion_Paciente VARCHAR(100),
  Fecha_Nacimiento_Paciente VARCHAR(10),
  Id_Eps_Fk INT,
  PRIMARY KEY (Id_Paciente),
  FOREIGN KEY (Id_Eps_Fk) REFERENCES EPS(Id_Eps)
);



CREATE TABLE IF NOT EXISTS DOCTOR
(
  Id_Doctor INT NOT NULL UNIQUE,
  Id_Especialidad_Fk INT,
  Id_Eps_Fk INT,
  Numero_Documento_Doctor VARCHAR(10) UNIQUE,
  Nombre_Doctor VARCHAR(25),
  Apellido_Doctor VARCHAR(25),
  Correo_Doctor VARCHAR(100),
  Direccion_Doctor VARCHAR(100),
  Fecha_Nacimiento_Doctor VARCHAR(10),
  PRIMARY KEY (Id_Doctor),
  FOREIGN KEY (Id_Especialidad_Fk) REFERENCES ESPECIALIDAD(Id_Especialidad),
  FOREIGN KEY (Id_Eps_Fk) REFERENCES EPS(Id_Eps)
);

CREATE TABLE IF NOT EXISTS CITA
(
  Id_cita INT NOT NULL UNIQUE,
  Id_Paciente_Fk INT NOT NULL,
  Id_Doctor_Fk INT NOT NULL,
  Observaciones VARCHAR(500),
  Ordenes_Medicas VARCHAR(200),
  Tipo_Cita VARCHAR(200),
  PRIMARY KEY (Id_cita),
  FOREIGN KEY (Id_Paciente_Fk) REFERENCES PACIENTE(Id_Paciente),
  FOREIGN KEY (Id_Doctor_Fk) REFERENCES DOCTOR(Id_Doctor)
);

CREATE TABLE IF NOT EXISTS PQR
(
  Id_Pqr INT NOT NULL UNIQUE,
  Tipo_Pqr VARCHAR(30),
  PRIMARY KEY (Id_Pqr)
);

CREATE TABLE IF NOT EXISTS ESPECIALIDAD
(
  Id_Especialidad INT NOT NULL UNIQUE,
  Id_Doctor_Fk INT,
  Nombre_Esp VARCHAR(50),
  PRIMARY KEY (Id_Especialidad)
);

CREATE TABLE IF NOT EXISTS PRESENTA_PQRS
(
  Id_Presenta INT NOT NULL UNIQUE,
  Id_Paciente_Fk INT NOT NULL,
  Id_Pqr_Fk INT NOT NULL,
  Fecha VARCHAR(10) NOT NULL,
  calificacion VARCHAR(10),
  Descripcion VARCHAR(50),
  Estado VARCHAR(50),
  PRIMARY KEY (Id_Presenta),
  FOREIGN KEY (Id_Paciente_Fk) REFERENCES PACIENTE(Id_Paciente),
  FOREIGN KEY (Id_Pqr_Fk) REFERENCES PQR(Id_pqr)
);

CREATE TABLE IF NOT EXISTS TELEFONO_DOCTOR
(
  Id_Telefono INT NOT NULL UNIQUE,
  Id_Doctor_Fk INT NOT NULL,
  Telefono_Doctor VARCHAR(10) UNIQUE,
  PRIMARY KEY (Id_Telefono),
  FOREIGN KEY (Id_Doctor_Fk) REFERENCES DOCTOR(Id_Doctor)
);

CREATE TABLE IF NOT EXISTS TELEFONO_PACIENTE
(
  Id_Telefono_Pac INT NOT NULL UNIQUE,
  Id_Paciente_Fk INT,
  Telefono_Paciente VARCHAR(10) UNIQUE,
  PRIMARY KEY (Id_Telefono_Pac),
  FOREIGN KEY (Id_Paciente_Fk) REFERENCES PACIENTE(Id_Paciente)
);
  SHOW TABLES LIKE 'PACIENTE';
  
  ALTER TABLE CITA DROP COLUMN Tipo_Cita;
  
ALTER TABLE HISTORIAL_CLINICO ADD COLUMN Img BLOB;

CREATE TABLE IF NOT EXISTS PQR
(
  Id_Pqr INT NOT NULL UNIQUE,
  Tipo_Pqr VARCHAR(30),
  PRIMARY KEY (Id_Pqr)
);

CREATE TABLE IF NOT EXISTS ESPECIALIDAD
(
  Id_Especialidad INT NOT NULL UNIQUE,
  Id_Doctor_Fk INT,
  Nombre_Esp VARCHAR(50),
  PRIMARY KEY (Id_Especialidad)
);

CREATE TABLE IF NOT EXISTS PRESENTA_PQRS
(
  Id_Presenta INT NOT NULL UNIQUE,
  Id_Paciente_Fk INT NOT NULL,
  Id_Pqr_Fk INT NOT NULL,
  Fecha VARCHAR(10) NOT NULL,
  calificacion VARCHAR(10),
  Descripcion VARCHAR(50),
  Estado VARCHAR(50),
  PRIMARY KEY (Id_Presenta),
  FOREIGN KEY (Id_Paciente_Fk) REFERENCES PACIENTE(Id_Paciente),
  FOREIGN KEY (Id_Pqr_Fk) REFERENCES PQR(Id_pqr)
);

CREATE TABLE IF NOT EXISTS TELEFONO_DOCTOR
(
  Id_Telefono INT NOT NULL UNIQUE,
  Id_Doctor_Fk INT NOT NULL,
  Telefono_Doctor VARCHAR(10) UNIQUE,
  PRIMARY KEY (Id_Telefono),
  FOREIGN KEY (Id_Doctor_Fk) REFERENCES DOCTOR(Id_Doctor)
);

CREATE TABLE IF NOT EXISTS TELEFONO_PACIENTE
(
  Id_Telefono_Pac INT NOT NULL UNIQUE,
  Id_Paciente_Fk INT,
  Telefono_Paciente VARCHAR(10) UNIQUE,
  PRIMARY KEY (Id_Telefono_Pac),
  FOREIGN KEY (Id_Paciente_Fk) REFERENCES PACIENTE(Id_Paciente)
);
  SHOW TABLES LIKE 'PACIENTE';
  
  ALTER TABLE CITA DROP COLUMN Tipo_Cita;
  
ALTER TABLE HISTORIAL_CLINICO ADD COLUMN Img BLOB;

