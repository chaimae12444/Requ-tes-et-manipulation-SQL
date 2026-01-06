CREATE DATABASE indix;
USE indix;
CREATE TABLE utilisateur (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(25)NOT NULL,
    email VARCHAR(100)NOT NULL UNIQUE,
    mot_de_passe VARCHAR(200)
);
INSERT INTO utilisateur (nom, email, mot_de_passe) VALUES
('Alice', 'alice@test.com', '1234'),
('Bob', 'bob@test.com', 'passbob'),
('Charlie', 'charlie@test.com', 'passcharlie');
SELECT * FROM utilisateur;