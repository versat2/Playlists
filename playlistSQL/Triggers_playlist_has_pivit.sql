-- Al agregar una pivit a una playlist -> numpivits+1

DROP TRIGGER IF EXISTS `mydb`.`playlist_has_pivit_AFTER_INSERT`;

DELIMITER $$
USE `mydb`$$
CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`playlist_has_pivit_AFTER_INSERT` AFTER INSERT ON `playlist_has_pivit` FOR EACH ROW
BEGIN
DECLARE idp INT;
UPDATE playlist 
SET numpivits = numpivits + 1
WHERE idplaylist = NEW.playlist_idplaylist;
END$$
DELIMITER ;


-- Al eliminar una pivit de una playlist -> numpivits-1

DROP TRIGGER IF EXISTS `mydb`.`playlist_has_pivit_AFTER_DELETE`;

DELIMITER $$
USE `mydb`$$
CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`playlist_has_pivit_AFTER_DELETE` AFTER DELETE ON `playlist_has_pivit` FOR EACH ROW
BEGIN
UPDATE playlist
SET numpivits = numpivits - 1
WHERE idplaylist = OLD.playlist_idplaylist;
END$$
DELIMITER ;
