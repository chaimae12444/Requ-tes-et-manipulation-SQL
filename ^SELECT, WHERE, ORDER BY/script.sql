CREATE DATABASE MY_DATABASE;
USE MY_DATABASE;
CREAT TABLE Article(
    id INT PRIMARY KEY AUTO_INCREMENT;
    titre VARCHAR(255) NOT NULL;
    contenu TEXT NOT NULL;
    date-pub DATE
);
INSERT INTO article (titre, contenu, date-pub) VALUES
('premier article', 'ceci est le contenu du premier article', '2025-01-15'),
('deuxieme article', 'ceci est le contenu du deuxieme article', '2025-01-18');
SELECT * FROM article;
SELECT titre, date-pub
FROM article
WHERE date-pub >= '2025-01-18'
ORDER BY date-pub ASK
LIMIT 2