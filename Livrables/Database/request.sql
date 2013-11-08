--
-- ------------------------------------- --
-- MySQL Request for completing Database
-- ------------------------------------- --
--

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ --
-- Create user
-- INSERT INTO `users`(`ID`, `FIRSTNAME`, `LASTNAME`, `MAIL`, `ADDRESS`, `ZIP`, `CITY`, `LOGIN`, `PASSWORD`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9])
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ --
INSERT IGNORE INTO `userS`(`ID`, `FIRSTNAME`, `LASTNAME`, `MAIL`, `ADDRESS`, `ZIP`, `CITY`, `LOGIN`, `PASSWORD`) VALUES (0, "Toto", "Coppée", "toto.coppee@yahoo.fr", "La Basse Lande", 44522, "Pouillé-les-Côteaux", "TCoppee", "azerty");
INSERT IGNORE INTO `userS`(`ID`, `FIRSTNAME`, `LASTNAME`, `MAIL`, `ADDRESS`, `ZIP`, `CITY`, `LOGIN`, `PASSWORD`) VALUES (1, "Tintin", "Dupont", "titin.dupont@gmail.com", "8 Chemin des Chabris", 03450, "Vicq", "Dupont", "123456789");
INSERT IGNORE INTO `userS`(`ID`, `FIRSTNAME`, `LASTNAME`, `MAIL`, `ADDRESS`, `ZIP`, `CITY`, `LOGIN`, `PASSWORD`) VALUES (2, "Fabien", "Ollivier", "fabien.olliver@outlook.com", "3 Rue Pablo Picasso", 30100, "Alès", "Skill", "azerty1");

-- --------------------------------------------------------------------------------------- --
-- Create Seller
-- INSERT INTO `sellers`(`ID`, `LOGIN`, `PASSWORD`) VALUES ([value-1],[value-2],[value-3])
-- --------------------------------------------------------------------------------------- --
INSERT IGNORE INTO `sellers`(`ID`, `LOGIN`, `PASSWORD`) VALUES (0, "Google", "play");
INSERT IGNORE INTO `sellers`(`ID`, `LOGIN`, `PASSWORD`) VALUES (1, "Fnac", "book");

-- ------------------------------------------------------------------- --
-- Create Publisher
-- INSERT INTO `publishers`(`ID`, `NAME`) VALUES ([value-1],[value-2])
-- ------------------------------------------------------------------- --
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (0, "Hachette"); -- Coloriage
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (1, "Folio junior"); -- Harry Potter
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (2, "Editions Albert René"); -- Asterix
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (3, "Pocket"); -- Demain j'arrete !, Le Seigneur des Anneaux
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (4, "Gallimard"); -- Harry Potter
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (5, "Albin Michel"); -- Docteur
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (6, "Kana"); -- Naruto
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (7, "Larousse"); -- Cuisine
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (8, "Soleil"); -- Lanfeust
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (9, "Delcourt"); -- Walking Dead
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (10, "Panini Comics"); -- Deadpool
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (11, "Urban Comics"); -- Batman
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (12, "Denoël"); -- Ananas
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (13, "First Interactive"); -- Cours
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (14, "Le livre du Zéro"); -- Cours
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (15, "Pocket Jeunesse"); -- The Mortal Instruments
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (16, "Livre de Poche"); -- Deux dans Berlin, Adieu
INSERT IGNORE INTO `publishers`(`ID`, `NAME`) VALUES (17, "Milady"); -- Fire after dark


-- ------------------------------------------------------------------- --
-- Create Category
-- INSERT INTO `categories`(`ID`, `NAME`) VALUES ([value-1],[value-2])
-- ------------------------------------------------------------------- --
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (0, "Livres pour enfants");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (1, "Action");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (2, "Fantastique");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (3, "Policier");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (4, "Bande Dessinée");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (5, "Dramatique");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (6, "Science-fiction");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (7, "Manga");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (8, "Horreur");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (9, "Livre de cuisne");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (10, "Comics");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (11, "Livre de coloriage");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (12, "Documentaire");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (13, "BD pour adultes");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (13, "Cours");
INSERT IGNORE INTO `categories`(`ID`, `NAME`) VALUES (14, "Romantique");

-- ---------------------------------------------------------------- --
-- Create Author
-- INSERT INTO `authors`(`ID`, `NAME`) VALUES ([value-1],[value-2])
-- ---------------------------------------------------------------- --
-- Harry Potter
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (0, "J. K. Rowling (Auteur)"); 
-- Asterix
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (1, "René Goscinny (Auteur)"); 
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (2, "Albert Uderzo (Auteur)"); 
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (3, "Jean-Yves Ferri (Auteur)"); 
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (4, "Didier Conrad (Auteur)");
-- Demain j'arrete !
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (5, "Gilles Legardinier (Auteur)");
-- Le Seigneur des Anneaux	 	
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (6, "J.R.R. Tolkein (Auteur)");
-- Docteur Sleep
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (7, "Stephen King (Auteur)");
-- Naruto
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (8, "Masashi Kishimoto (Auteur)");
-- Cuisine
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (9, "Larousse (Auteur)");
-- Lanfeust
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (10, "Scotch Arleston (Auteur)");
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (11, "Didier Tarquin (Illustrations)"); 
-- Walking Drad
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (12, "Robert Kirkman (Auteur)");
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (13, "Charlie Adlard (Illustrations)");
-- Deadpool
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (14, "Victor Gischler (Auteur)");
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (15, "Rob Liefeld (Auteur)"); 
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (16, "Whilce Portacio (Auteur)");
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (17, "Philip Bond (Auteur)");
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (18, "Kyle Baker (Auteur)");
-- Batman
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (19, "Collectif (Auteur)");
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (20, "Greg Capullo (Illustrations)"); 
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (21, "Jason Fabok (Illustrations)");
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (22, "Scott Snyder (Scenario)");
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (23, "James Tynion IV (Scenario)");
-- Coloriage 
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (24, "Hachette (Auteur)");
-- Ananas
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (25, "Philippe Katerine (Auteur)");
-- Cours
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (26, "Dan Gookin (Auteur)");
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (27, "Greg Harvey (Auteur)");
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (28, "Doug Lowe (Auteur)");
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (29, "Médéric Munier (Auteur)");
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (30, "Cyrille Herby (Auteur)");
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (31, "Mathieu Nebra (Auteur)");
-- The Mortal Instruments
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (32, "Cassandra Clare (Auteur)");
-- Berlin
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (33, "Richard Birkefeld (Auteur)");
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (34, "Göran Hachmeister (Auteur)");
-- Adieu
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (35, "Jacques Expert (Auteur)");
-- Trinity Blood
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (36, "Sunao Yoshida (Auteur)");
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (37, "Kiyo Kyujyo (Auteur)");
-- Fire after dark
INSERT IGNORE INTO `authors`(`ID`, `NAME`) VALUES (38, "Sadie Matthews (Auteur)");

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ --
-- Create Book 
-- INSERT INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9],[value-10])
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ --
-- Harry Potter - Folio 
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (0, "Harry Potter à l’École des Sorciers", "Le jour de ses onze ans, Harry Potter, un orphelin élevé par un oncle et une tante qui le détestent, voit son existence bouleversée. Un géant vient le chercher pour l’emmener à Poudlard, une école de sorcellerie! Voler en balai, jeter des sorts, combattre les trolls : Harry Potter se révèle un sorcier doué. Mais un mystère entoure sa naissance et l’effroyable V..., le mage dont personne n’ose prononcer le nom ?", 2, 1, 20, 5, '1998-11-16', 28.99, "HP1-Folio");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (1, "Harry Potter et la Chambre des Secrets", "Harry Potter fait une rentrée fracassante en voiture volante à l'école des sorciers. Cette deuxième année ne s'annonce pas de tout repos... surtout depuis qu'une étrange malédiction s'est abattue sur les élèves. Entre les cours de potion magique, les matches de Quidditch et les combats de mauvais sorts, Harry et ses amis Ron et Hermione trouveront-ils le temps de percer le mystère de la Chambre des Secrets ?Un livre magique pour sorciers confirmés.", 2, 1, 20, 5, '1999-03-28', 30.99, "HP2-Folio");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (2, "Harry Potter et le prisonnier d'Azkaban", "Sirius Black, le dangereux criminel qui s'est échappé de la forteresse d'Azkaban, recherche Harry Potter. C'est donc sous bonne garde que l'apprenti sorcier fait sa troisième rentrée à Poudlard. Au programme : des cours de divination, la fabrication d'une potion de ratatinage, le dressage des hippogriffes... Mais Harry est-il vraiment à l'abri du danger qui le menace ?", 2, 1, 20, 5, '1999-08-19', 32.99, "HP3-Folio");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (3, "Harry Potter et la Coupe de Feu", "Harry Potter a quatorze ans et entre en quatrième année au collège de Poudlard. Une grande nouvelle attend Harry, Ron et Hermione à leur arrivée : la tenue d'un tournoi de magie exceptionnel entre les plus célèbres écoles de sorcellerie. Déjà les délégations étrangères font leur entrée. Harry se réjouit... Trop vite. Il va se trouver plongé au cœur des évènements les plus dramatiques qu'il ait jamais eu à affronter.", 2, 1, 20, 5, '2000-11-29', 34.99, "HP4-Folio");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (4, "Harry Potter et l'Ordre du Phénix", "À quinze ans, Harry entre en cinquième année à Poudlard mais il n'a jamais été aussi anxieux. L'adolescence, la perspective des examens et ces étranges cauchemars... Car Celui-Dont-On-Ne-Doit-Pas-Prononcer-Le-Nom est de retour. Le ministère de la Magie ne semble pas prendre cette menace au sérieux, contrairement à Dumbledore, le directeur du collège de Poudlard. La résistance s'organise alors autour de Harry qui va devoir compter sur le courage et la fidélité de ses amis de toujours...",  2, 1, 20, 5, '2003-12-03', 34.99, "HP5-Folio");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (5, "Harry Potter et le Prince de Sang-Mêlé", "Dans un monde de plus en plus inquiétant, Harry se prépare à retrouver Ron et Hermione. Bientôt, ce sera la rentrée à Poudlard, avec les autres étudiants de sixième année. Mais pourquoi Dumbledore vient-il en personne chercher Harry chez les Dursley ? Dans quels extraordinaires voyages au cœur de la mémoire va-t-il l'entraîner ?", 2, 1, 20, 5, '2005-10-01', 34.99, "HP6-Folio");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (6, "Harry Potter et les Reliques de la Mort", "Cette année, Harry a dix-sept ans et ne retourne pas à Poudlard. Avec Ron et Hermione, il se consacre à la dernière mission confiée par Dumbledore. Mais le Seigneur des Ténèbres règne en maître. Traqués, les trois fidèles amis sont contraints à la clandestinité. D'épreuves en révélations, le courage, le choix et les sacrifices de Harry seront déterminants dans la lutte contre les forces du Mal.", 2, 1, 20, 5, '2007-10-26', 36.99, "HP7-Folio");
 
-- Asterix
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (7, "Astérix chez les Pictes - 35", "Les Pictes ? Oui, les Pictes ! Ces peuples de l’ancienne Ecosse, redoutables guerriers aux multiples clans, dont le nom, donné par les Romains, signifie littéralement « les hommes peints ». Astérix chez les Pictes promet donc un voyage épique vers une contrée riche de traditions, à la découverte d’un peuple dont les différences culturelles se traduiront en gags et jeux de mots mémorables.", 4, 2, 20, 5, '2013-10-24', 9.99, "Asterix");

-- Demain j'arrete
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (8, "Demain j'arrête !", "Comme tout le monde, Julie a fait beaucoup de trucs stupides. Elle pourrait raconter la fois où elle a enfilé un pull en dévalant des escaliers, celle où elle a tenté de réparer une prise électrique en tenant les fils entre ses dents, ou encore son obsession pour le nouveau voisin qu'elle n'a pourtant jamais vu, obsession qui lui a valu de se coincer la main dans sa boîte aux lettres en espionnant un mystérieux courrier... Mais tout cela n'est rien, absolument rien, à côté des choses insensées qu'elle va tenter pour approcher cet homme dont elle veut désormais percer le secret. Poussée par une inventivité débridée, à la fois intriguée et attirée par cet inconnu à côté duquel elle vit mais dont elle ignore tout, Julie va prendre des risques toujours plus délirants, jusqu'à pouvoir enfin trouver la réponse à cette question qui révèle tellement : pour qui avons-nous fait le truc le plus idiot de notre vie ?", 5, 3, 20, 5, '2013-04-04', 18.99, "DemainJarrete");

-- Harry Potter - Gallimard
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (9, "Harry Potter à l’École des Sorciers", "Le jour de ses onze ans, Harry Potter, un orphelin élevé par un oncle et une tante qui le détestent, voit son existence bouleversée. Un géant vient le chercher pour l’emmener à Poudlard, une école de sorcellerie! Voler en balai, jeter des sorts, combattre les trolls : Harry Potter se révèle un sorcier doué. Mais un mystère entoure sa naissance et l’effroyable V..., le mage dont personne n’ose prononcer le nom ?", 2, 4, 20, 5, '1998-11-16', 28.99, "HP1-Gallimard");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (10, "Harry Potter et la Chambre des Secrets", "Harry Potter fait une rentrée fracassante en voiture volante à l'école des sorciers. Cette deuxième année ne s'annonce pas de tout repos... surtout depuis qu'une étrange malédiction s'est abattue sur les élèves. Entre les cours de potion magique, les matches de Quidditch et les combats de mauvais sorts, Harry et ses amis Ron et Hermione trouveront-ils le temps de percer le mystère de la Chambre des Secrets ?Un livre magique pour sorciers confirmés.", 2, 4, 20, 5, '1999-03-28', 30.99, "HP2-Gallimard");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (11, "Harry Potter et le prisonnier d'Azkaban", "Sirius Black, le dangereux criminel qui s'est échappé de la forteresse d'Azkaban, recherche Harry Potter. C'est donc sous bonne garde que l'apprenti sorcier fait sa troisième rentrée à Poudlard. Au programme : des cours de divination, la fabrication d'une potion de ratatinage, le dressage des hippogriffes... Mais Harry est-il vraiment à l'abri du danger qui le menace ?", 2, 4, 20, 5, '1999-08-19', 32.78, "HP3-Gallimard");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (12, "Harry Potter et la Coupe de Feu", "Harry Potter a quatorze ans et entre en quatrième année au collège de Poudlard. Une grande nouvelle attend Harry, Ron et Hermione à leur arrivée : la tenue d'un tournoi de magie exceptionnel entre les plus célèbres écoles de sorcellerie. Déjà les délégations étrangères font leur entrée. Harry se réjouit... Trop vite. Il va se trouver plongé au cœur des évènements les plus dramatiques qu'il ait jamais eu à affronter.", 2, 4, 20, 5, '2000-11-29', 34.99, "HP4-Gallimard");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (13, "Harry Potter et l'Ordre du Phénix", "À quinze ans, Harry entre en cinquième année à Poudlard mais il n'a jamais été aussi anxieux. L'adolescence, la perspective des examens et ces étranges cauchemars... Car Celui-Dont-On-Ne-Doit-Pas-Prononcer-Le-Nom est de retour. Le ministère de la Magie ne semble pas prendre cette menace au sérieux, contrairement à Dumbledore, le directeur du collège de Poudlard. La résistance s'organise alors autour de Harry qui va devoir compter sur le courage et la fidélité de ses amis de toujours...",  2, 4, 20, 5, '2003-12-03', 34.99, "HP5-Gallimard");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (14, "Harry Potter et le Prince de Sang-Mêlé", "Dans un monde de plus en plus inquiétant, Harry se prépare à retrouver Ron et Hermione. Bientôt, ce sera la rentrée à Poudlard, avec les autres étudiants de sixième année. Mais pourquoi Dumbledore vient-il en personne chercher Harry chez les Dursley ? Dans quels extraordinaires voyages au cœur de la mémoire va-t-il l'entraîner ?", 2, 4, 20, 5, '2005-10-01', 34.99, "HP6-Gallimard");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (15, "Harry Potter et les Reliques de la Mort", "Cette année, Harry a dix-sept ans et ne retourne pas à Poudlard. Avec Ron et Hermione, il se consacre à la dernière mission confiée par Dumbledore. Mais le Seigneur des Ténèbres règne en maître. Traqués, les trois fidèles amis sont contraints à la clandestinité. D'épreuves en révélations, le courage, le choix et les sacrifices de Harry seront déterminants dans la lutte contre les forces du Mal.", 2, 4, 20, 5, '2007-10-26', 36.99, "HP7-Gallimard");

-- Le Seigneur des Anneaux
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (16, "Le Seigneur des Anneaux, Tome 1 : La communauté de l'Anneau", "Aux temps reculés qu'évoque le récit, la Terre est peuplée d'innombrables créatures étranges. Les Hobbits, apparentés à l'Homme, mais proches également des Elfes et des Nains, vivent en paix au nord-ouest de l'Ancien Monde, dans la Comté. Paix précaire et menacée, cependant, depuis que Bilbon Sacquet a dérobé au monstre Gollum l'Anneau de Puissance jadis forgé par Sauron de Mordor. Car cet anneau est doté d'un pouvoir immense et maléfique. Il permet à son détenteur de se rendre invisible et lui confère une autorité sans limites sur les possesseurs des autres Anneaux. Bref, il fait de lui le Maître du Monde. C'est pourquoi Sauron s'est juré de reconquérir l'Anneau par tous les moyens. Déjà ses Cavaliers Noirs rôdent aux frontières de la Comté.", 2, 3, 20, 5, '1954-07-29', 6.99, "lSdA_tome1");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (17, "Le Seigneur des Anneaux, Tome 2 : Les Deux tours", "Frodon le Hobbit et ses Compagnons se sont engagés, au Grand Conseil d'Elrond, à détruire l'Anneau de Puissance dont Sauron de Mordor cherche à s'emparer pour asservir tous les peuples de la Terre habitée: Elfes et Nains, Hommes et Hobbits. Dès les premières étapes de leur audacieuse entreprise, les Compagnons de Frodon vont affronter les forces du Seigneur des Ténèbres et bientôt ils devront se disperser pour survivre. Parviendront-ils à échapper aux Cavaliers de Rohan ? Trouveront-ils asile auprès de Ceux des Arbres, grâce à l'entremise de Sylvebarbe ? Qu'adviendra-t-il de Gandalf le Gris métamorphosé, au-delà de la mort, en Cavalier Blanc ?", 2, 3, 20, 5, '1954-11-11', 6.99, "lSdA_tome2");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (18, "Le Seigneur des Anneaux, Tome 3 : Le Retour du Roi", "Avec Le Retour du Roi s'achèvent dans un fracas d'apocalypse les derniers combats de la guerre de l'Anneau. Tandis que le continent se couvre de ténèbres, annonçant pour le peuple des Hobbits l'aube d'une ère nouvelle, Frodon poursuit son entreprise. Alors qu'il n'a pu franchir la Porte Noire, il se demande comment atteindre le Mont du Destin. Peut-être est-il trop tard : le Seigneur des Ténèbres mobilise ses troupes. Les Rohirrim n'ont plus le temps d'en finir avec le traître assiégé dans l'imprenable tour d'Orthanc; ils doivent se rassembler pour faire face à l'ennemi. Tentant une fois de plus sa chance, Frodon passe par le Haut Col, où il sera livré à l'abominable Arachné. Survivra-t-il à son dangereux périple à travers le Pays Noir ?", 2, 3, 20, 5, '1955-10-20', 7.99, "lSdA_tome3");

-- Docteur
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (19, "Docteur Sleep", "Danny Torrance a grandi. Ses démons aussi... <br/>La suite tant attendue du cultissime Shining.<br/><br/>Stephen King renoue avec l histoire et le personnage de l un de ses plus grands succès : Shining. Le petit Dany Torrance est désormais adulte. Il a échappé au sort de son père alcoolique et travaille en tant qu aide-soignant dans un hospice où il utilise ses pouvoirs surnaturels pour apaiser la souffrance des mourants. D où son surnom : Docteur Sleep. Il rencontre Abra, fillette de 12 ans, pourchassée par un étrange groupe de voyageurs qui traversent les Etats-Unis en se nourrissant de la lumière des enfants télépathes. Commence alors une guerre épique entre le bien et le mal... <br/>King signe un livre magistral, d une richesse inouïe : à la fois conte fantastique, roman d aventure, thriller et allégorie de l Amérique contemporaine - et nous prouve qu il est bel et bien « The King » !", 8, 5, 20, 5, '2013-11-01', 23.99, "DocteurSleep");

-- Naruto
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (20, "Naruto, Tome 60", "Même les cinq Kage réunis ne parviennent pas à faire plier Madara tant la puissance qu'il déploie est phénoménale... Tsunade prend alors la résolution d'enfreindre les préceptes du Ninjutsu Médical ! De leur côté, Itachi et Sasuke affrontent Kabuto afin d'interrompre Edotensei !", 7, 6, 10, 5, '2013-09-06', 6.50, "Naruto60");

-- Cuisine
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (21, "30 recettes au Nutella", "30 recettes gourmandes dans un livre en forme de pot de Nutella pour tous les accros de la pâte à tartiner : des petites douceurs individuelles : de la tartine de Nutella revisitée aux tartelettes Nutella-banane, des gâteaux généreux au Nutella à partager : gâteau roulé, galette des rois ou encore charlotte au Nutella- des recettes fondantes et incontournables : mousse, petites crèmes, glace au Nutella, des recettes étonnantes pour épater petits et grands : macarons, truffes au coeur de noisette caramélisée, petits nems à la mangue.", 9, 9, 10, 2, '2012-03-07', 4.99, "Nutella");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (22, "Burgers - Les meilleures recettes", "25 recettes irrésistibles dans un livre en forme de burger, pour tous les accros à la cuisine américaine revisitée à la française ! <br/><br/>De délicieuses recettes de burgers faciles et rapides à réaliser pour toutes les occasions : une soirée décontractée entre amis, un dîner plus élaboré et même un déjeuner équilibré :<br/> Burger de bœuf classique, triple cheddar, burger aux nuggets et citron confit, burger au foie gras poêlé, figues, pomme et mâche, burger aux poivrons rôtis, aubergine et feta...", 9, 9, 10, 2, '2012-12-07', 5.99, "Hamburger");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (23, "La Vache qui rit - Les meilleures recettes", "26 recettes, froides ou chaudes, auxquelles La vache qui rit apporte une petite touche lactée et beaucoup de crémeux : smoothie à la tomate, gaspacho de courgettes, paupiettes de veau, mignon de porc farci, fondue...", 9, 9, 10, 2, '2012-07-15', 4.99, "VacheQuiRit");

-- Lanfeust des étoiles
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (24, "Lanfeust des étoiles, tome 1 : un,deux ... troy", "Troy est une planète où chacun possède un pouvoir différent. Lanfeust, doté de tous les pouvoirs, court les chemins en quête d'aventures. Mais il est recherché par des visiteurs venus d'outre espace. Il apprend qu'il est, avec le terrible pirate Thanos, le résultat d'une expérience sur les pouvoirs psy, menée depuis des millénaires par les Princes-Marchands de la planète Meirrion. Ceux-ci ont envoyé un de leurs agents, la séduisante et énergique Glace, pour récupérer leurs résultats. Mais la confédération d'Abraxar fait tout pour contrecarrer les projets de Meirrion. C'est accompagné du troll Hébus et de la belle Cixi, que Lanfeust quitte Troy. Il découvre, loin dans les étoiles, qu'il pourrait être au centre des principaux combats de l'univers...", 13, 8, 20, 5, '2001-12-01', 13.99, "LdE_tome1");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (25, "Lanfeust des étoiles, tome 2 : Les Tours de Meirrion", "Troy est une planète où chacun possède un pouvoir magique différent. Lanfeust, doté de tous les pouvoirs, court les chemins en quête d'aventures. Mais il est recherché par des visiteurs venus d'outre-espace. Il apprend qu'il est, avec le terrible pirate Thanos, le résultat d'une expérience sur les pouvoirs psy, menée depuis des millénaires par les Princes Marchands de la planète Meirrion. Ceux-ci ont envoyé un de leurs agents, la séduisante et énergique Glace, pour récupérer leurs résultats. Mais la confédération d'Abraxar fait tout pour contrecarrer les projets de Meirrion. C'est accompagné du troll Hébus et de la belle Cixi que Lanfeust quitte Troy pour découvrir que, loin dans les étoiles, il pourrait être au centre des principaux combats de l'univers...", 13, 8, 20, 5, '2003-03-26', 13.99, "LdE_tome2");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (26, "Lanfeust des Etoiles, tome 3 : Les sables d'Abraxar", "Troy est une planète où chacun possède un pouvoir magique différent. Lanfeust, doté de tous les pouvoirs, court les chemins en quête d'aventures. Mais il est recherché par des visiteurs venus d'outre-espace. Il apprend qu'il est, avec le terrible pirate Thanos, le résultat d'une expérience sur les pouvoirs psy, menée depuis des millénaires par les Princes Marcrands de la planète Meirrion. Ceux-ci ont envoyé un de leurs agents, la séduisante et énergique Glace, pour récupérer leurs résultats. Mais la confédération d'Abraxar fait tout pour contrecarrer les projets de Meirrion. C'est accompagné du troll Hébus et de la belle Cixi que Lanfeust quitte Troy pour découvrir que, loin dans les étoiles, il pourrait être au centre des principaux combats de l'univers..", 13, 8, 20, 5, '2004-01-21', 13.99, "LdE_tome3");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (27, "Lanfeust des Etoiles, Tome 4 : Les Buveurs de Mondes", "Un classique de l’aventure fantastique qui vous emmène... loin dans les étoiles !<br/> Accrochez-vous !<br/> Abraxar, siège de la résistance contre la domination des princes marchands, vient d’être envahie par les hommes de Dheluu. À leur tête, Thanos et l’agent Glace. Mais Lanfeust a tenté une manœuvre désespérée : faire passer la planète entière à travers une porte pour l’expédier... loin. Ce qu’il n’avait pas prévu, c’était un choc en retour qui les enverrait, lui et Swiip, quatre mille ans dans le passé.", 13, 8, 20, 5, '2004-12-08', 13.99, "LdE_tome4");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (28, "Lanfeust des Etoiles, Tome 5 : La Chevauchée des Bactéries", "Troy est une planète où chacun possède un pouvoir magique différent. Lanfeust, doté de tous les pouvoirs, court les chemins en quête d'aventures.Mais il est recherché par des visiteurs venus d'outre-espace. Il apprend qu'il est, avec le terrible pirate Thanos, le résultat d'une expérience sur les pouvoirs psy, menée depuis des millénaires par les Princes Marchands de la planète Meirrion. Ceux-ci ont envoyé un de leurs agents, la séduisante et énergique Glace, pour récupérer leurs résultats. Mais la confédération d'Abraxar fait tout pour contrecarrer les projets de Meirrion. C'est accompagné du troll Hébus et de la belle Cixi que Lanfeust quitte Troy pour découvrir que, loin dans les étoiles, il pourrait être au centre des principaux combats de l'univers...", 13, 8, 20, 5, '2005-12-07', 13.99, "LdE_tome5");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (29, "Lanfeust des Etoiles, tome 6 : Le Râle du flibustier", "Troy est une planète où chacun possède un pouvoir magique différent. Lanfeust, doté de tous les pouvoirs, court les chemins en quête d'aventures. Mais il est recherché par des visiteurs venus d'outre-espace. Il apprend qu'il est, avec le terrible pirate Thanos, le résultat d'une expérience sur les pouvoirs psy, menée depuis des millénaires par les Princes Marchands de la planète Meirrion. Ceux-ci ont envoyé un de leurs agents, la séduisante et énergique Glace, pour récupérer leurs résultats. Mais la confédération d'Abraxar. fait tout pour contrecarrer les projets de Meirrion. C'est accompagné du troll Hébus et de la belle Cixi que Lanfeust quitte Troy pour découvrir que, loin dans les étoiles, il pourrait être au centre des principaux combats de l'univers...", 13, 8, 20, 5, '2006-12-06', 13.99, "LdE_tome6");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (30, "Lanfeust des Etoiles, Tome 7 : Le secret des Dolphantes", "Troy est une planète où chacun possède un pouvoir magique différent. Lanfeust, doté de tous les pouvoirs, court les chemins en quête d'aventures. Mais il est recherché par des visiteurs venus d'outre-espace. Il apprend qu'il est, avec le terrible pirate Thanos, le résultat d'une expérience sur les pouvoirs psy, menée depuis des millénaires par les Princes Marchands de la planète Meirrion. Ceux-ci ont envoyé un de leurs agents, la séduisante et énergique Glace, pour récupérer leurs résultats. Mais la confédération d'Abraxar. fait tout pour contrecarrer les projets de Meirrion. C'est accompagné du troll Hébus et de la belle Cixi que Lanfeust quitte Troy pour découvrir que, loin dans les étoiles, il pourrait être au centre des principaux combats de l'univers...", 13, 8, 20, 5, '2007-12-12', 13.99, "LdE_tome7");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (31, "Lanfeust des Etoiles, Tome 8 : Le sang des comètes", "Troy est une planète où chacun possède un pouvoir magique différent. Lanfeust, doté de tous les pouvoirs, court les chemins en quête d'aventures. Mais il est recherché par des visiteurs venus d'outre-espace. Il apprend qu'il est, avec le terrible pirate Thanos, le résultat d'une expérience sur les pouvoirs psy, menée depuis des millénaires par les Princes Marchands de la planète Meirrion. Ceux-ci ont envoyé un de leurs agents, la séduisante et énergique Glace, pour récupérer leurs résultats. Mais la confédération d'Abraxar. fait tout pour contrecarrer les projets de Meirrion. C'est accompagné du troll Hébus et de la belle Cixi que Lanfeust quitte Troy pour découvrir que, loin dans les étoiles, il pourrait être au centre des principaux combats de l'univers...", 13, 8, 20, 5, '2008-11-26', 13.99, "LdE_tome8");

-- Comics
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (32, "Walking Dead, Tome 18 : Lucille...", "La mort de Glenn a été un grand traumatisme pour tous. À sa suite, Rick, qui n’est plus le chef de la communauté, semble accepter sa soumission à Negan, un choix également assumé par Michonne. Rick ne bronche pas quand le tueur revient l’humilier une nouvelle fois. Mais qu’en est-il de Carl ? Celui-ci a échappé à la surveillance de son père, et se trouve caché sous un matelas, armé d’un fusil...", 9, 10, 10, 2, '2013-09-04', 13.50, "WalkingDead");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (33, "Deadpool Corps : Le club des cinq", "Le sort de l'univers est entre les mains de Deadpool ! A qui demandera-t-il de l'aide ? Mais à des doubles de lui-même originaires d'univers alternatifs, bien sûr ! Découvrez la bande de cinglés appelée à former le Deadpool Corps : Lady Deadpool, le garnement Kidpool, le chien Dogpool et Têtepool, la tête de zombie. Cet album rassemble le récit complet Le club des cinq, écrit par le romancier Victor Gischler et illustré par un (dead)pool d'excellents dessinateurs composé de Kyle Baker, Philip Bond (Kill Your Boyfriend), Rob Liefeld et Whilce Portacio (X-Men) !", 10, 10, 10, 2, '2011-05-18', 14, "Deadpool");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (34, "Batman tome 2", "La Cour des Hiboux prend son envol, et la nuit à venir pourrait bien signer la mort de Gotham City elle-même. Lancés depuis les hauteurs de la ville, les Ergots, émissaires assassins de la Cour, ont pour mission de mettre à mort les personnalités les plus progressistes de la cité, laissant à leurs maîtres le champ libre pour étendre leur emprise. Les prochains noms sur leur liste ? Lincoln March et Bruce Wayne... (contient Batman Vol. 2: The City of Owls HC - #8-12 + Night of the Owls : Batman Annual #1 (48-pages) )", 11, 10, 10, 2, '2013-04-12', 18.50, "Batman");

-- Coloriage
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (35, "Mon livre de coloriages hello kitty", "Amuse-toi à colorier Hello Kitty avec tes plus belles couleurs. Puis découpe tes dessins selon les pointillés pour décorer ta chambre.", 11, 0, 5, 1, '2012-05-02', 2.80, "HelloKitty_Color");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (36, "Mon livre de coloriage my little Pony", "Des jeux simples et des stickers pour les petits.", 11, 0, 5, 1, '2012-07-02', 2.80, "LittlePony_Color");

-- Ananas
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (37, "Comme un ananas", "Ouvrage publié à l'occasion de l'exposition «Comme un ananas», Carte Blanche à Philippe Katerine, présentée à la Galerie des Galeries, Galeries Lafayette Haussmann, du 4 avril au 2 juin 2012.", 12, 12, 20, 5, '2012-04-05', 17.50, "CommeAnanas");

-- Cours
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (38, "Word, Excel et PowerPoint 2013 pour les nuls", "Ce livre est divisé en trois parties indépendantes traitant les trois modules essentiels de la suite Office 2013. Le Livre I va vous faire découvrir Word et vous apprendre tout ce que vous devez savoir pour produire des documents impeccables. Le Livre II vous fera entrer de plain-pied dans l'univers des calculs avec Excel. De l'entrée des données à leur mise en forme en passant par la création de graphiques percutants, vous apprendrez tout ce qu'il faut savoir pour jongler avec les chiffres. Enfin, le Livre III est consacré à PowerPoint, l'outil de présentation de la suite Office. Dans cette partie, vous apprendrez à créer et à organiser vos diapositives, et à insérer des éléments graphiques pour les rendre encore plus captivantes.", 13, 13, 20, 5, '2013-08-14', 23.50, "Cours_WEP");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (39, "Créez des applications web avec Java EE", "Vous aimeriez apprendre le Java EE, mais vous ne savez pas par où commencer ? Cet ouvrage est fait pour vous ! Partant de zéro, il vous fera découvrir pas à pas le développement avec Java EE, en suivant les modèles de conception et les bonnes pratiques en vigueur dans le domaine.<br/>- 42 chapitres de difficulté progressive<br/>- Des exercices réguliers sous forme de TP<br/>- Un livre entièrement en couleur", 13, 14, 20, 5, '2013-02-27', 33.50, "JAVAEE");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (40, "Apprenez à programmer en Java - 2e édition", "Vous aimeriez apprendre à programmer en Java, mais vous débutez dans la programmation ?<br/>Pas de panique ! Vous tenez dans vos mains un livre conçu pour les débutants qui souhaitent se former à Java, le langage de programmation incontournable des professionnels !<br/>- 40 chapitres de difficulté progressive<br/>- Des travaux pratiques pour vous excercer<br/>- Un livre entièrement en couleur", 13, 14, 20, 5, '2013-11-13', 31.50, "JAVA");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (41, "Réalisez votre site web avec HTML5 et CSS3", "Vous rêvez d'apprendre à créer des sites web mais vous avez peur que ce soit compliqué car vous débutez ?<br/><br/>Ce livre est fait pour vous ! Conçu pour les débutants, il vous permettra de découvrir HTML5 et CSS3, les dernières technologies en matière de création de sites web.", 13, 14, 20, 5, '2013-02-27', 23.99, "HTML");

-- The Mortal Instruments
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (42, "The Mortal Instruments, Tome 1 : La cité des ténèbres", "Clary n'en croit pas ses yeux. Elle vient de voir le plus beau garçon de la soirée commettre un meurtre. Et, détail terrifiant : le corps de la victime a disparu d'un seul coup ! Mais le pire reste à venir... Sa mère a été kidnappée par d'étranges créatures et l'appartement complètement dévasté. Sans le savoir, Clary a pénétré dans une guerre invisible entre d'antiques forces démoniaques et la société secrète des Chasseurs d'Ombres... Une guerre dans laquelle elle a un rôle fatal à jouer.", 6, 15, 20, 5, '2013-05-07', 17.99, "TMI_tome1");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (43, "The Mortal Instruments, Tome 2 : La cité des cendres", "Le Monde Obscur est en émoi depuis le meurtre mystérieux d'un loup-garou survenu devant le Hunter's Moon. Du côté des Chasseurs d'Ombres, Valentin est de retour et une guerre sanglante se prépare. Pris dans la tourmente des événements, Clary et Jace se lancent à corps perdu dans la lutte sans merci qui oppose les défenseurs du bien aux forces du mal. Un combat qui les mènera des souterrains de la Cité Silencieuse aux eaux sombres de l'East River...", 6, 15, 20, 5, '2013-05-07', 17.99, "TMI_tome2");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (44, "The Mortal Instruments, Tome 3 : La cité de verre", "La lutte entre le bien et le mal se poursuit. Valentin rassemble son armée pour éradiquer la lignée des Chasseurs d'Ombres. Clary se rend dans la Cité de verre afin de sauver sa mère et découvrir son passé. Au cours de sa quête, elle rencontre Sébastien, un garçon énigmatique. Avec lui, elle comprend que le seul moyen d'arrêter la fureur de Valentin est de former une alliance entre Chasseurs d'Ombres et Créatures Obscures. Clary saura-t-elle maîtriser ses nouveaux .e pouvoirs à temps pour cet ultime affrontement ?", 6, 15, 20, 5, '2013-05-07', 17.99, "TMI_tome3");
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (45, "The Mortal Instruments, Tome 4 : La cité des anges déchus", "La guerre est terminée. Clary rentre à New York pour s'entraîner à devenir Chasseur d'Ombres. Mais les tensions se ravivent avec les Créatures Obscures, des Chasseurs d'Ombres sont assassinés... Les deux camps se préparent à une nouvelle confrontation et se disputent Simon, un vampire aux nombreux pouvoirs. Ils ne reculeront devant rien. Au risque pour Clary de perdre tous ceux qu'elle aime y compris lace.", 6, 15, 20, 5, '2013-06-07', 17.99, "TMI_tome3");
-- Berlin
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (46, "Deux dans Berlin", "Hiver 1944. Dans un hôpital militaire, Hans-Wilhelm Kalterer, un ancien des services de renseignements de la SS, se remet d'une blessure par balle. Il sait que la guerre est perdue et qu'il doit se racheter une conscience. Il rejoint la police criminelle de Berlin où il est chargé d'enquêter sur le meurtre d'un haut dignitaire nazi. Dans le même temps, Ruprecht Haas s'évade de Buchenwald à la faveur d’un raid aérien, et regagne la capitale pour retrouver les siens, bien décidé à se venger de ceux qui l'ont dénoncé. Tandis que Berlin agonise au rythme des bombardements alliés et de l'avancée inéluctable des troupes soviétiques, une chasse à l'homme sans merci s'engage. Car, de ces deux hommes au milieu du chaos, un seul doit survivre.", 3, 16, 10, 2, '2013-05-02', 7.99, "Berlin");
-- Adieu
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (47, "Adieu", "2001, Châtenay-Malabry. Une mère, son fils et sa fille sont retrouvés assassinés à leur domicile. Le père est porté disparu. Est-il lui aussi victime ou bien coupable ? Les recherches s'organisent, sous la direction du commissaire Langelier. Un mois plus tard jour pour jour, c'est au tour d'une seconde famille, tout aussi ordinaire, d'être abattue dans des circonstances identiques. Là aussi le père est introuvable. Presse, politiques, police, les avis sont unanimes, un tueur en série est à l'œuvre. Seul Langelier s'entête à concentrer tous ses efforts sur la piste des pères, qu'il soupçonne d'être à l'origine des massacres. Devant son obstination et son manque de résultats, son supérieur, le commissaire Ferracci, est obligé de lui retirer l'affaire. Commence alors entre les deux hommes une guerre froide, chacun s'efforçant de démontrer sa propre vérité, qui ne prendra fin que dix ans plus tard avec la révélation d'une incroyable réalité.", 3, 16, 10, 2, '2013-05-02', 7.99, "Adieu");
-- Trinity Blood
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (48, "Trinity Blood, tome 1", "Dans un avenir lointain, la civilisation est sur son déclin. Fraîchement débarqué de Rome, le jeune prêtre Abel Nightroad, est accueilli à l'église Saint-Matthias de la ville d'Istvàn. Malgré le calme apparent qui règne dans les rues, la bourgade est en proie à des troubles qui opposent les terrans au Seigneur Guyla, un Methuselah, la race des vampires apparus lors de l'Armageddon. Au cours de la nuit, l'église est attaquée par un vampire à la solde de Gyula et Abel doit intervenir pour protéger Esther, une jeune novice. Il révèle alors sa véritable force, celle du krsnik, un vampire capable de se nourrir du sang des autres vampires...!!", 7, 6, 20, 5, '2008-10-17', 6.50, "TrinityBlood1");

-- Fire after dark
INSERT IGNORE INTO `books`(`ID`, `TITLE`, `SUMMARY`, `CATEGORY_ID`, `PUBLISHER_ID`, `SUPPLY`, `THRESHOLD`, `RELEASEDATE`, `PRICE`, `IMAGENAME`) VALUES (49, "Fire after dark, Tome 2 : L'étreinte des secrets", "Beth est devenue une autre femme depuis qu’elle s’est éprise de Dominic. Pour lui, elle a appris d’autres façons d’atteindre l’extase. Jusqu’au moment terrible où il a perdu le contrôle, et où tout a basculé. Rongé par les remords, il s’exile dans l’espoir de dompter son désir de domination. Mais le mal est fait, et Beth brûle de poursuivre ces jeux délicieux où l’on oscille sans cesse entre souffrance et jouissance. Elle devra convaincre Dominic de laisser libre cours à ses fantasmes. Au risque de se briser.", 14, 17, 20, 5, '2008-10-17', 15.50, "FAD");

-- ---------------------------------------------------------------------------------- --
-- Create Authors_Books
-- INSERT INTO `authors_books`(`books_ID`, `authors_ID`) VALUES ([value-1],[value-2])
-- ---------------------------------------------------------------------------------- --
-- Harry Potter
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (0, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (1, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (2, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (3, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (4, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (5, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (6, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (9, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (10, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (11, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (12, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (13, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (14, 0);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (15, 0);
-- Asterix
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (7, 1);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (7, 2);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (7, 3);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (7, 4);
-- Demain j'arrete
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (8, 5);
-- Les Seigneurs des Anneaux
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (16, 6);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (17, 6);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (18, 6);
-- Docteur
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (19, 7);
-- Naruto 
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (20, 8);
-- Cuisine 
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (21, 9);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (22, 9);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (23, 9);
-- Lanfeust
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (24, 10);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (24, 11);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (25, 10);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (25, 11);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (26, 10);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (26, 11);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (27, 10);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (27, 11);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (28, 10);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (28, 11);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (29, 10);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (29, 11);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (30, 10);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (30, 11);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (31, 10);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (31, 11);
-- Walking Dead
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (32, 12);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (32, 13);
-- Deadpool
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (33, 14);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (33, 15);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (33, 16);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (33, 17);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (33, 18);
-- Batman
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (34, 19);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (34, 20);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (34, 21);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (34, 22);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (34, 23);
-- Coloriage
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (35, 24);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (36, 24);
-- Ananas
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (37, 25);
-- Cours
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (38, 26);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (38, 27);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (38, 28);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (39, 29);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (40, 30);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (41, 31);
-- The Mortal Instruments
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (42, 32);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (43, 32);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (44, 32);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (45, 32);
-- Berlin
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (46, 33);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (46, 34);
-- Adieu
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (47, 35);
-- Trinity Blood
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (48, 36);
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (48, 37);
-- Fire after dark
INSERT IGNORE INTO `authors_books`(`books_ID`, `authors_ID`) VALUES (49, 38);

-- ------------------------------------------------------------------------------------------------------------------ --
-- Create Orders
-- INSERT INTO `orders`(`ID`, `ORDERDATE`, `TOTALPRICE`, `USERS_ID`) VALUES ([value-1],[value-2],[value-3],[value-4])
-- ------------------------------------------------------------------------------------------------------------------ --
-- INSERT IGNORE INTO `orders`(`ID`, `ORDERDATE`, `TOTALPRICE`, `USERS_ID`) VALUES (0, 2013-01-01, 0, 0);

-- ------------------------------------------------------------------------------------------------------------------------ --
-- Create Book_Orders
-- INSERT INTO `books_orders`(`ID`, `QUANTITY`, `BOOKID_ID`, `ORDERID_ID`) VALUES ([value-1],[value-2],[value-3],[value-4])
-- ------------------------------------------------------------------------------------------------------------------------ --
-- INSERT IGNORE INTO `books_orders`(`ID`, `QUANTITY`, `BOOKID_ID`, `ORDERID_ID`) VALUES (0, 0, 0, 0);