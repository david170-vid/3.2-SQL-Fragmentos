CREATE DATABASE LCS3_Rutas;
USE LCS3_Rutas;

CREATE TABLE vehiculo(
    idVehiculo INT PRIMARY KEY,
    marca VARCHAR(30),
    modelo VARCHAR(30),
    placas VARCHAR(15)
);

CREATE TABLE conductor(
    idConductor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    licencia VARCHAR(30) UNIQUE,
    telefono VARCHAR(20)
);

CREATE TABLE ruta(
    idRuta INT PRIMARY KEY AUTO_INCREMENT,
    idVehiculo INT,
    idConductor INT,
    origen VARCHAR(100),
    destino VARCHAR(100),
    fecha_salida DATETIME,
    fecha_llegada DATETIME,
    kilometros DECIMAL(8,2),
    FOREIGN KEY (idVehiculo) REFERENCES vehiculo(idVehiculo),
    FOREIGN KEY (idConductor) REFERENCES conductor(idConductor)
);

CREATE TABLE transaccionCombustible(
    idTransaccion INT PRIMARY KEY AUTO_INCREMENT,
    idVehiculo INT,
    idRuta INT,
    fecha DATETIME,
    litros DECIMAL(8,2),
    costo DECIMAL(10,2),
    estacion VARCHAR(100),
    FOREIGN KEY (idVehiculo) REFERENCES vehiculo(idVehiculo),
    FOREIGN KEY (idRuta) REFERENCES ruta(idRuta)
);
