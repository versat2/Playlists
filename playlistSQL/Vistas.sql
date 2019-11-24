CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `new_view` AS
    SELECT 
        `playlist_has_pivit`.`playlist_idplaylist` AS `playlist_idplaylist`,
        `playlist_has_pivit`.`pivit_idpivit` AS `pivit_idpivit`
    FROM
        `playlist_has_pivit`
    ORDER BY `playlist_has_pivit`.`playlist_idplaylist`