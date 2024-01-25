-- Montrer le nombre total de Kdrama par catégorie 
SELECT genre.libelle, COUNT(kdrama.id) AS total_dramas
FROM genre
LEFT JOIN kdrama_genre ON genre.id = kdrama_genre.id_Genre
LEFT JOIN kdrama ON kdrama_genre.id_KDrama = kdrama.id
GROUP BY genre.id
ORDER BY total_dramas DESC;

-- Lister tous les personnages avec l'acteur qui correspond pour un drama (ici, True Beauty)
SELECT personnage.nom, personnage.prenom, acteur.nom AS acteur_nom, acteur.prenom AS acteur_prenom
FROM personnage
JOIN acteur ON personnage.id_Acteur = acteur.id
JOIN kdrama ON personnage.id_Kdrama = kdrama.id
WHERE kdrama.titre = 'True Beauty';

--Mettre à jour la description d'un drama 
UPDATE kdrama
SET description = 'Do Do Hee, une héritière, travaille avec Jung Koo Won pour retrouver ses anciens pouvoirs.'
WHERE titre = 'My Demon';

-- Supprimer toutes les notes en dessous de 1 
DELETE FROM review
WHERE note < 1;

-- Afficher les dramas avec la note moyenne (au dessus de 3) et le nombre de reviews attribués
SELECT kdrama.titre AS KDrama, AVG(note) AS note_moyenne, COUNT(review.id) AS total_reviews
FROM review
JOIN kdrama ON review.id_Kdrama = Kdrama.id
GROUP BY id_Kdrama
HAVING note_moyenne > 3;

-- Lister tous les personnages avec les acteurs correspondants
(SELECT nom, prenom, 'Acteur' AS Source FROM acteur
LIMIT 5)
UNION
(SELECT nom, prenom, 'Personnage' AS Source FROM personnage
LIMIT 5);

-- Ajouter une colonne dans une table
ALTER TABLE acteur
ADD COLUMN annee_naissance int(4);

-- Afficher un acteur avec un nom qui commence par K
SELECT * FROM acteur
WHERE nom LIKE 'K%';

-- Afficher les dramas qui sont sortis en 2021, 2022 ou 2023
SELECT * FROM kdrama
WHERE annee IN (2021, 2022, 2023);

-- Afficher les dramas avec le nbr d'épisode compris entre 14 et 16
SELECT * FROM kdrama
WHERE nb_episodes BETWEEN 14 AND 16;
--LIMIT 5;

-- Catégoriser les review comme positives, neutres ou négatives 
SELECT id, note,
  CASE
    WHEN note >= 4 THEN 'Bien'
    WHEN note = 3 THEN 'Bof'
    ELSE 'Nul'
  END AS categorie
FROM review;

--EXPLAIN : explique une requête
EXPLAIN SELECT * FROM kdrama
WHERE nb_episodes BETWEEN 14 AND 16;

-- TRUNCATE TABLE : Supprimer  le contenu d'une table 
TRUNCATE TABLE studio;

--DROP TABLE
DROP TABLE studio;


