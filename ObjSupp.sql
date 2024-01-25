-- Procédure stockée pour compter nombre de reviews et moyenne par drama.
DELIMITER $$

CREATE PROCEDURE StatistiquesReview(IN dramaID INT)
BEGIN
    DECLARE ReviewTotal INT;
    DECLARE NoteMoyenne DECIMAL(3,2);

    -- Obtient le nombre total de critiques pour le drama
    SELECT COUNT(id) INTO ReviewTotal FROM review WHERE id_Kdrama = dramaID;

    -- Calcule la note moyenne pour le drama
    SELECT AVG(note) INTO NoteMoyenne FROM review WHERE id_Kdrama = dramaID;

    -- Affiche les résultats
    SELECT CONCAT('ID du Kdrama: ', dramaID) AS 'ID du Kdrama',
           CONCAT('Reviews totales: ', totalReviews) AS 'Reviews totales',
           CONCAT('Note Moyenne: ', IFNULL(averageRating, 0)) AS 'Note Moyenne';
END $$

DELIMITER ;

-- Call 
CALL StatistiquesReview(1);


-- Trigger pour limiter les notes possibles de 0 à 5 

DELIMITER $$
CREATE TRIGGER `VerifierNote` BEFORE INSERT ON `review` FOR EACH ROW BEGIN
        IF NEW.note < 0 OR NEW.note > 5 THEN SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT
        = "La note doit être comprise entre 0 et 5";
    END IF;
END
$$
DELIMITER ;


-- VUE : Cette vue regroupe des informations clés sur les dramas, y compris le titre, l'année, le nombre d'épisodes, la description, le studio, les genres, l'acteur principal, les personnages, et la note moyenne basée sur les reviews

CREATE VIEW Vue_InfoDramas2 AS
SELECT 
    kd.id AS ID_Drama,
    kd.titre AS Titre_Drama,
    kd.annee AS Annee_Drama,
    kd.nb_episodes AS Nombre_Episodes,
    kd.description AS Description_Drama,
    s.libelle AS Studio,
    GROUP_CONCAT(DISTINCT g.libelle ORDER BY g.id ASC SEPARATOR ', ') AS Genres,
    GROUP_CONCAT(DISTINCT CONCAT(a.nom, ' ', a.prenom) ORDER BY p.id ASC SEPARATOR ', ') AS Acteurs,
    GROUP_CONCAT(DISTINCT CONCAT(p.nom, ' ', p.prenom) ORDER BY p.id ASC SEPARATOR ', ') AS Personnages,
    IFNULL(AVG(r.note), 0) AS Note_Moyenne
FROM kdrama kd
LEFT JOIN studio s ON kd.id_Studio = s.id
LEFT JOIN kdrama_genre kg ON kd.id = kg.id_KDrama
LEFT JOIN genre g ON kg.id_Genre = g.id
LEFT JOIN personnage p ON kd.id = p.id_Kdrama
LEFT JOIN acteur a ON p.id_Acteur = a.id
LEFT JOIN review r ON kd.id = r.id_Kdrama
GROUP BY kd.id;

-- Afficher vue : 
SELECT * FROM vue_infodramas2;