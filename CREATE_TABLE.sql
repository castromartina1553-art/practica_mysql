CREATE TABLE vehiculo(
    id_vehiculo INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(60),
    modelo VARCHAR(60),
    patente VARCHAR(50) NOT NULL UNIQUE,
    precio DECIMAL(10,2), 
    anio INT
);

CREATE TABLE cliente(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre_apellido VARCHAR(100) NOT NULL,
    dni VARCHAR(40) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    email VARCHAR(20),
    direccion VARCHAR(60)
);

CREATE TABLE alquiler(
    id_alquiler INT PRIMARY KEY AUTO_INCREMENT,
    id_vehiculo INT NOT NULL,
    id_cliente INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    monto_total DECIMAL(10,2) NOT NULL,
  
    
    FOREIGN KEY (id_vehiculo) REFERENCES vehiculo(id_vehiculo),
    
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);


CREATE TABLE pago(
    id_pago INT PRIMARY KEY AUTO_INCREMENT,
    fecha_pago DATE,
    monto DECIMAL(10,2),
    metodo_pago VARCHAR(20),
    id_alquiler INT NOT NULL,
    
    FOREIGN KEY (id_alquiler) REFERENCES alquiler(id_alquiler)
);


