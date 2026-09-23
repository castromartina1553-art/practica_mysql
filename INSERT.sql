INSERT INTO cliente (nombre_apellido, dni, telefono, email, direccion)
VALUES
('Martina Castro', '47361788', '2644407436', 'marty@gmail.com', 'Rivadavia'),
('Gabriela Tejada', '24244772', '2644510591', 'gaby@gmail.com', 'Isla Victoria'),
('Mauro Castro', '24343070', '2644119113', 'mauro@gmail.com','Sargento Cabral')


INSERT INTO vehiculo (marca, modelo, patente, precio, anio)
VALUES
('Toyota', 'Corolla', 'ABC123', 15000.00, 2020),
('Honda', 'Civic', 'XYZ789', 18000.00, 2021),
('Ford', 'Focus', 'DEF456', 16000.00, 2019)


INSERT INTO alquiler (fecha_inicio, fecha_fin, monto_total, id_cliente, id_vehiculo)
VALUES
('2023-01-01', '2023-01-10', 100000.00, 1, 1),
('2023-02-15', '2023-02-20', 300000.00, 2, 2),
('2023-03-05', '2023-03-12', 400000.00, 3, 3)  

INSERT INTO pago (fecha_pago, monto, metodo_pago, id_alquiler)
VALUES
('2023-01-05', 150000.00, 'Tarjeta de crédito', 1),
('2023-02-18', 350000.00, 'Efectivo', 2),
('2023-03-10', 450000.00, 'Transferencia bancaria', 3);