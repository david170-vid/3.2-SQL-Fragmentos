CREATE DATABASE LCS1_Principal;
USE LCS1_Principal;

CREATE TABLE flotilla(
    idFlotilla INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    descripcion TEXT,
    fecha_creacion DATE
);

CREATE TABLE vehiculo(
    idVehiculo INT PRIMARY KEY,
    marca VARCHAR(30),
    modelo VARCHAR(30),
    anio INT,
    placas VARCHAR(15),
    tipo VARCHAR(50),
    estado VARCHAR(20),
    idFlotilla INT,
    FOREIGN KEY (idFlotilla) REFERENCES flotilla(idFlotilla)
);

CREATE TABLE documento(
    idDocumento INT PRIMARY KEY AUTO_INCREMENT,
    idVehiculo INT,
    tipo_documento VARCHAR(50),
    archivo VARCHAR(255),
    fecha_vencimiento DATE,
    FOREIGN KEY (idVehiculo) REFERENCES vehiculo(idVehiculo)
);
