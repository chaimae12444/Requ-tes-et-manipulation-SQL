-- Script pour gérer les données du blog
START TRANSACTION;
-- Ajout d’un article
INSERT INTO Article (titre, contenu, date_pub, id_utilisateur)
VALUES ('Nouveau post', 'abcd', '2024-05-17', 1);

-- Mise à jour d’un utilisateur
UPDATE Utilisateur
SET nom = 'chaimae'
WHERE id = 1;

-- Suppression d’un commentaire
DELETE FROM Commentaire
 WHERE id = 1;
COMMIT;
--Vérification
SELECT * FROM Article;
