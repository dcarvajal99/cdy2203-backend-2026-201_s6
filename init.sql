-- Inicializacion de la base de datos para la veterinaria
USE mydatabase;

-- Tabla de usuarios para autenticacion JWT (minimo 3 usuarios)
CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255),
    password VARCHAR(255) NOT NULL
);

INSERT INTO user (username, email, password) VALUES
('admin', 'admin@veterinaria.cl', '$2a$10$E4Nq7dQJcQq8z1H4.bW.F.IFKxTxRZjA5M5JxMqCJ1m7x2CR3KpV6'),
('veterinario', 'vet@veterinaria.cl', '$2a$10$E4Nq7dQJcQq8z1H4.bW.F.IFKxTxRZjA5M5JxMqCJ1m7x2CR3KpV6'),
('recepcion', 'recepcion@veterinaria.cl', '$2a$10$E4Nq7dQJcQq8z1H4.bW.F.IFKxTxRZjA5M5JxMqCJ1m7x2CR3KpV6');
