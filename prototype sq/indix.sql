--employe--
INSERT INTO employe values
(1, 'sedraoui', 'chaimae','Développeur'),
(2, 'khamal', 'ibtissam', 'chef de projet'),
(3, 'alami', 'ahmed', 'designer');
--proget--
INSERT INTO projet values
(234, 'gestion de stock', '2024-01-15', '2024-04-13', 1),
(98, 'site web', '2025-02-20', '2025-05-18', 2),
(123, 'site-ecommerce beauty', '2026-03-11', '2026-06-09', 3);
--tache--
INSERT INTO tache values
(1, 'designer','en cours',1,234),
(2, 'devlopper backend','terminer',2,98),
(3, 'devlopper frontend','en cours',3,123 );
--Afficher tous les projets --
SELECT titre, dateDeb, dateFin
FROM PROJET;
--Afficher les employés dont le nom commence par 'EL'--
SELECT *
FROM EMPLOYE
WHERE nom LIKE 'EL%';
--Afficher les taches du projet Num 234 ordonnées par priorité par ordre croissant--
SELECT *
FROM TACHE
WHERE codeProjet = 234
ORDER BY priorite ASC;
--Afficher les projets qui doivent se terminer avant Avril 2026--
SELECT *
FROM PROJET
WHERE dateFin < '2026-04-01';
--Afficher tous les employés développeurs--
SELECT *
FROM EMPLOYE
WHERE fonction = 'Développeur';
--Afficher les taches terminées du projet de code 98--
SELECT *
FROM TACHE
WHERE codeProjet = 98
AND etat = 'Terminée';
--Afficher pour les projets avec leur responsables--
SELECT p.titre, p.dateDeb, p.dateFin, e.nom, e.prenom
FROM PROJET p
JOIN EMPLOYE e ON p.codeChef = e.codeEmp;
--Afficher les taches du projet 'Site E-commerce Beauty'--
SELECT t.*
FROM TACHE t
JOIN PROJET p ON t.codeProjet = p.codeProjet
WHERE p.titre = 'Site E-commerce Beauty';
--Afficher le nombre de taches 'terminées' du projet  'Site E-commerce Beauty'--
SELECT COUNT(*) AS nbTachesTerminees
FROM TACHE t
JOIN PROJET p ON t.codeProjet = p.codeProjet
WHERE p.titre = 'Site E-commerce Beauty'
AND t.etat = 'Terminée';
--Combien de projets ont été terminé dans l'année 2025--
SELECT COUNT(*) AS nbProjets
FROM PROJET
WHERE YEAR(dateFin) = 2025;
UPDATE
--Modifier la date de fin du projet 234 par "16/05/2026"--
UPDATE PROJET
SET dateFin = '2026-05-16'
WHERE codeProjet = 234;
--Modifier l’état de la tâche 98 à "Terminée"--
UPDATE TACHE
SET etat = 'Terminée'
WHERE codeTache = 98;
DELETE
--Supprimer les tâches non commencées du projet 123--
DELETE FROM TACHE
WHERE codeProjet = 123
AND etat = 'Non commencée';
--Supprimer l’employé "ALAMI AHMED"--
DELETE FROM EMPLOYE
WHERE nom = 'ALAMI'
AND prenom = 'AHMED';

