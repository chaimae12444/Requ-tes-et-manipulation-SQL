CREATE DATABASE indix;
USE indix;
CREATE TABLE Article (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(40) NOT NULL,
    autoeur VARCHAR(35),
    contenu TEXT NOT NULL,
    datepub DATE,
    vues INT ,
);
INSERT INTO Article (titre, autoueur, contenu, datepub, vues) VALUES
('débuter avec SQL', 'Jean Dupont', 'Ceci est un article pour débuter avec SQL.', '2023-01-15' , 150)
('ORDER BY', 'Ahmed', 'Trier les données en SQL', '2023-02-20', 180),
('SQL Basics', 'Ahmed', 'Introduction aux requêtes SQL', '2023-06-25', 120),
SELECT * FROM Article;
SELECT titre, datepub
FROM Article
WHERE datepub >= '3023-01-15'
ORDER BY datepub ASC
LIMIT 3;