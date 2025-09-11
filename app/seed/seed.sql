CREATE DATABASE IF NOT EXISTS appdb;
USE appdb;

CREATE TABLE IF NOT EXISTS items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  description TEXT
);

INSERT INTO items (name, description) VALUES
('Artikulli 1', 'Përshkrimi i artikullit 1'),
('Artikulli 2', 'Përshkrimi i artikullit 2');
