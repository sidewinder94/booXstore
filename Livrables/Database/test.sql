INSERT IGNORE INTO `users`(`ID`, `FIRSTNAME`, `LASTNAME`, `MAIL`, `ADDRESS`, `ZIP`, `CITY`, `LOGIN`, `PASSWORD`) VALUES (0, "Toto", "Coppée", "toto.coppee@yahoo.fr", "La Basse Lande", 44522, "Pouillé-les-Côteaux", "TCoppee", "azerty");
INSERT IGNORE INTO `users`(`ID`, `FIRSTNAME`, `LASTNAME`, `MAIL`, `ADDRESS`, `ZIP`, `CITY`, `LOGIN`, `PASSWORD`) VALUES (1, "Tintin", "Dupont", "titin.dupont@gmail.com", "8 Chemin des Chabris", 03450, "Vicq", "Dupont", "123456789");
INSERT IGNORE INTO `sellers`(`ID`, `LOGIN`, `PASSWORD`) VALUES (0, "Google", "play");
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (0, "Hachette livres");
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (1, "Folio junior");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (0, "Livres pour enfants");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (1, "Action");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (2, "Fantastique");
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (0, "J. K. Rowling (Auteur)"); 
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (0, "Harry Potter à l’École des Sorciers", "Le jour de ses onze ans, Harry Potter, un orphelin élevé par un oncle et une tante qui le détestent, voit son existence bouleversée. Un géant vient le chercher pour l’emmener à Poudlard, une école de sorcellerie! Voler en balai, jeter des sorts, combattre les trolls : Harry Potter se révèle un sorcier doué. Mais un mystère entoure sa naissance et l’effroyable V..., le mage dont personne n’ose prononcer le nom ?", 2, 1, 20, 5, '1998-11-16', 28.99, "HP1-Folio");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (1, "Harry Potter et la Chambre des Secrets", "Harry Potter fait une rentrée fracassante en voiture volante à l'école des sorciers. Cette deuxième année ne s'annonce pas de tout repos... surtout depuis qu'une étrange malédiction s'est abattue sur les élèves. Entre les cours de potion magique, les matches de Quidditch et les combats de mauvais sorts, Harry et ses amis Ron et Hermione trouveront-ils le temps de percer le mystère de la Chambre des Secrets ?Un livre magique pour sorciers confirmés.", 2, 1, 20, 5, '1999-03-28', 30.99, "HP2-Folio");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (2, "Harry Potter et le prisonnier d'Azkaban", "Sirius Black, le dangereux criminel qui s'est échappé de la forteresse d'Azkaban, recherche Harry Potter. C'est donc sous bonne garde que l'apprenti sorcier fait sa troisième rentrée à Poudlard. Au programme : des cours de divination, la fabrication d'une potion de ratatinage, le dressage des hippogriffes... Mais Harry est-il vraiment à l'abri du danger qui le menace ?", 2, 1, 20, 5, '1999-08-19', 32.99, "HP3-Folio");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (3, "Harry Potter et la Coupe de Feu", "Harry Potter a quatorze ans et entre en quatrième année au collège de Poudlard. Une grande nouvelle attend Harry, Ron et Hermione à leur arrivée : la tenue d'un tournoi de magie exceptionnel entre les plus célèbres écoles de sorcellerie. Déjà les délégations étrangères font leur entrée. Harry se réjouit... Trop vite. Il va se trouver plongé au cœur des évènements les plus dramatiques qu'il ait jamais eu à affronter.", 2, 1, 20, 5, '2000-11-29', 34.99, "HP4-Folio");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (4, "Harry Potter et l'Ordre du Phénix", "À quinze ans, Harry entre en cinquième année à Poudlard mais il n'a jamais été aussi anxieux. L'adolescence, la perspective des examens et ces étranges cauchemars... Car Celui-Dont-On-Ne-Doit-Pas-Prononcer-Le-Nom est de retour. Le ministère de la Magie ne semble pas prendre cette menace au sérieux, contrairement à Dumbledore, le directeur du collège de Poudlard. La résistance s'organise alors autour de Harry qui va devoir compter sur le courage et la fidélité de ses amis de toujours...",  2, 1, 20, 5, '2003-12-03', 34.99, "HP5-Folio");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (5, "Harry Potter et le Prince de Sang-Mêlé", "Dans un monde de plus en plus inquiétant, Harry se prépare à retrouver Ron et Hermione. Bientôt, ce sera la rentrée à Poudlard, avec les autres étudiants de sixième année. Mais pourquoi Dumbledore vient-il en personne chercher Harry chez les Dursley ? Dans quels extraordinaires voyages au cœur de la mémoire va-t-il l'entraîner ?", 2, 1, 20, 5, '2005-10-01', 34.99, "HP6-Folio");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (6, "Harry Potter et les Reliques de la Mort", "Cette année, Harry a dix-sept ans et ne retourne pas à Poudlard. Avec Ron et Hermione, il se consacre à la dernière mission confiée par Dumbledore. Mais le Seigneur des Ténèbres règne en maître. Traqués, les trois fidèles amis sont contraints à la clandestinité. D'épreuves en révélations, le courage, le choix et les sacrifices de Harry seront déterminants dans la lutte contre les forces du Mal.", 2, 1, 20, 5, '2007-10-26', 36.99, "HP7-Folio");
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (0, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (1, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (2, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (3, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (4, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (5, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (6, 0);