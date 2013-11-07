--
-- ------------------------------------- --
-- MySQL Request for completing Database
-- ------------------------------------- --
--

--
-- Create User
-- INSERT INTO `user`(`Id`, `FirstName`, `LastName`, `Mail`, `Address`, `ZIP`, `City`, `Login`, `Password`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9])
--
INSERT IGNORE INTO `user`(`Id`, `FirstName`, `LastName`, `Mail`, `Address`, `ZIP`, `City`, `Login`, `Password`) VALUES (0, "Toto","Coppée","toto.coppee@yahoo.fr", "La Basse Lande", 44522, "Pouillé-les-Côteaux", "TCoppee", "azerty");
INSERT IGNORE INTO `user`(`Id`, `FirstName`, `LastName`, `Mail`, `Address`, `ZIP`, `City`, `Login`, `Password`) VALUES (1, "Tintin","Dupont","titin.dupont@gmail.com", "8 Chemin des Chabris", 03450, "Vicq", "Dupont", "123456789");
INSERT IGNORE INTO `user`(`Id`, `FirstName`, `LastName`, `Mail`, `Address`, `ZIP`, `City`, `Login`, `Password`) VALUES (2, "Fabien","Ollivier","fabien.olliver@outlook.com", "3 Rue Pablo Picasso", 30100, "Alès", "Skill", "azerty1");

--
-- Create Seller
-- INSERT INTO `seller`(`Id`, `Login`, `Password`) VALUES ([value-1],[value-2],[value-3])
--
INSERT IGNORE INTO `seller`(`Id`, `Login`, `Password`) VALUES (0, "Google", "play");
INSERT IGNORE INTO `seller`(`Id`, `Login`, `Password`) VALUES (1, "Fnac", "book");

--
-- Create Publisher
-- INSERT INTO `publisher`(`Id`, `Name`) VALUES ([value-1],[value-2])
--
INSERT IGNORE INTO `publisher`(`Id`, `Name`) VALUES (0, "Hachette livres");
INSERT IGNORE INTO `publisher`(`Id`, `Name`) VALUES (1, "Folio junior");
INSERT IGNORE INTO `publisher`(`Id`, `Name`) VALUES (2, "Editions Albert René");
INSERT IGNORE INTO `publisher`(`Id`, `Name`) VALUES (3, "Pocket");
INSERT IGNORE INTO `publisher`(`Id`, `Name`) VALUES (4, "Gallimard");
INSERT IGNORE INTO `publisher`(`Id`, `Name`) VALUES (5, "Albin Michel");
INSERT IGNORE INTO `publisher`(`Id`, `Name`) VALUES (6, "Kana");
INSERT IGNORE INTO `publisher`(`Id`, `Name`) VALUES (7, "Larousse");
INSERT IGNORE INTO `publisher`(`Id`, `Name`) VALUES (8, "Soleil");
INSERT IGNORE INTO `publisher`(`Id`, `Name`) VALUES (9, "Delcourt");
INSERT IGNORE INTO `publisher`(`Id`, `Name`) VALUES (10, "Panini Comics");
INSERT IGNORE INTO `publisher`(`Id`, `Name`) VALUES (11, "Urban Comics");
INSERT IGNORE INTO `publisher`(`Id`, `Name`) VALUES (12, "Hachette");
INSERT IGNORE INTO `publisher`(`Id`, `Name`) VALUES (13, "Denoël");

--
-- Create Category
-- INSERT INTO `category`(`Id`, `Name`) VALUES ([value-1],[value-2])
--
INSERT IGNORE INTO `category`(`Id`, `Name`) VALUES (0, "Livres pour enfants");
INSERT IGNORE INTO `category`(`Id`, `Name`) VALUES (1, "Action");
INSERT IGNORE INTO `category`(`Id`, `Name`) VALUES (2, "Fantastique");
INSERT IGNORE INTO `category`(`Id`, `Name`) VALUES (3, "Policier");
INSERT IGNORE INTO `category`(`Id`, `Name`) VALUES (4, "Bande Dessinée");
INSERT IGNORE INTO `category`(`Id`, `Name`) VALUES (5, "Dramatique");
INSERT IGNORE INTO `category`(`Id`, `Name`) VALUES (6, "Science-fiction");
INSERT IGNORE INTO `category`(`Id`, `Name`) VALUES (7, "Manga");
INSERT IGNORE INTO `category`(`Id`, `Name`) VALUES (8, "Horreur");
INSERT IGNORE INTO `category`(`Id`, `Name`) VALUES (9, "Livre de cuisne");
INSERT IGNORE INTO `category`(`Id`, `Name`) VALUES (10, "Comics");
INSERT IGNORE INTO `category`(`Id`, `Name`) VALUES (11, "Livre de coloriage");
INSERT IGNORE INTO `category`(`Id`, `Name`) VALUES (12, "Documentaire");

-- 
-- Create Author
-- INSERT INTO `author`(`Id`, `FirstName`, `LastName`) VALUES ([value-1],[value-2],[value-3])
--
INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (0, "J.K.", "Rowling");

INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (1, "René", "Goscinny");
INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (2, "Albert", "Uderzo");
INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (3, "Jean-Yves", "Ferri");
INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (4, "Didier", "Conrad");

INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (5, "Gilles", "Legardinier");

INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (6, "J.R.R.", "Tolkein");

INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (7, "Stephen", "King");

INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (8, "Masashi", "Kishimoto");

INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (9, "Larousse", "");

INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (10, "Didier", "Tarquin"); 
INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (11, "Scotch", "Arleston");

INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (12, "Robert", "Kirkman");

INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (13, "Charlie", "Adlard");

INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (14, "Victor Gischler");
INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (15, "Rob Liefeld"); 
INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (16, "Whilce Portacio");
INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (17, "Philip Bond");
INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (18, "Kyle Baker");

INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (14, "Collectif (Auteur)");
INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (15, "Greg Capullo (Illustrations)"); 
INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (16, "Jason Fabok (Illustrations)");
INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (17, "Scott Snyder (Scenario)");
INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (18, "James Tynion IV (Scenario)");

INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (19, "Hachette (Auteur)");

INSERT IGNORE INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (20, "Philippe Katerine (Auteur)");

--
-- Create Book 
-- INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9])
--
-----------------------------------Harry Potter - Folio 
INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (0, "Harry Potter à l’École des Sorciers", 2, 20, 5, "Le jour de ses onze ans, Harry Potter, un orphelin élevé par un oncle et une tante qui le détestent, voit son existence bouleversée. Un géant vient le chercher pour l’emmener à Poudlard, une école de sorcellerie! Voler en balai, jeter des sorts, combattre les trolls : Harry Potter se révèle un sorcier doué. Mais un mystère entoure sa naissance et l’effroyable V..., le mage dont personne n’ose prononcer le nom ?", '1998-11-16', 28.99, 3);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (1, "Harry Potter et la Chambre des Secrets", 2, 20, 5, "Harry Potter fait une rentrée fracassante en voiture volante à l'école des sorciers. Cette deuxième année ne s'annonce pas de tout repos... surtout depuis qu'une étrange malédiction s'est abattue sur les élèves. Entre les cours de potion magique, les matches de Quidditch et les combats de mauvais sorts, Harry et ses amis Ron et Hermione trouveront-ils le temps de percer le mystère de la Chambre des Secrets ?Un livre magique pour sorciers confirmés.", '1999-03-28', 30.99, 3);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (2, "Harry Potter et le prisonnier d'Azkaban", 2, 20, 5, "Sirius Black, le dangereux criminel qui s'est échappé de la forteresse d'Azkaban, recherche Harry Potter. C'est donc sous bonne garde que l'apprenti sorcier fait sa troisième rentrée à Poudlard. Au programme : des cours de divination, la fabrication d'une potion de ratatinage, le dressage des hippogriffes... Mais Harry est-il vraiment à l'abri du danger qui le menace ?", '1999-08-19', 32.78, 3);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (3, "Harry Potter et la Coupe de Feu", 2, 20, 5, "Harry Potter a quatorze ans et entre en quatrième année au collège de Poudlard. Une grande nouvelle attend Harry, Ron et Hermione à leur arrivée : la tenue d'un tournoi de magie exceptionnel entre les plus célèbres écoles de sorcellerie. Déjà les délégations étrangères font leur entrée. Harry se réjouit... Trop vite. Il va se trouver plongé au cœur des évènements les plus dramatiques qu'il ait jamais eu à affronter.", '2000-11-29', 34.99, 3);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (4, "Harry Potter et l'Ordre du Phénix", 2, 20, 5, "À quinze ans, Harry entre en cinquième année à Poudlard mais il n'a jamais été aussi anxieux. L'adolescence, la perspective des examens et ces étranges cauchemars... Car Celui-Dont-On-Ne-Doit-Pas-Prononcer-Le-Nom est de retour. Le ministère de la Magie ne semble pas prendre cette menace au sérieux, contrairement à Dumbledore, le directeur du collège de Poudlard. La résistance s'organise alors autour de Harry qui va devoir compter sur le courage et la fidélité de ses amis de toujours...", '2003-12-03', 34.99, 3);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (5, "Harry Potter et le Prince de Sang-Mêlé", 2, 20, 5, "Dans un monde de plus en plus inquiétant, Harry se prépare à retrouver Ron et Hermione. Bientôt, ce sera la rentrée à Poudlard, avec les autres étudiants de sixième année. Mais pourquoi Dumbledore vient-il en personne chercher Harry chez les Dursley ? Dans quels extraordinaires voyages au cœur de la mémoire va-t-il l'entraîner ?", '2005-10-01', 34.99, 3);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (6, "Harry Potter et les Reliques de la Mort", 2, 20, 5, "Cette année, Harry a dix-sept ans et ne retourne pas à Poudlard. Avec Ron et Hermione, il se consacre à la dernière mission confiée par Dumbledore. Mais le Seigneur des Ténèbres règne en maître. Traqués, les trois fidèles amis sont contraints à la clandestinité. D'épreuves en révélations, le courage, le choix et les sacrifices de Harry seront déterminants dans la lutte contre les forces du Mal.", '2007-10-26', 36.99, 3);
 
----------------------------------- Asterix
INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (7, "Astérix chez les Pictes - 35", 4, 20, 5, "Les Pictes ? Oui, les Pictes ! Ces peuples de l’ancienne Ecosse, redoutables guerriers aux multiples clans, dont le nom, donné par les Romains, signifie littéralement « les hommes peints ». Astérix chez les Pictes promet donc un voyage épique vers une contrée riche de traditions, à la découverte d’un peuple dont les différences culturelles se traduiront en gags et jeux de mots mémorables.", '2013-10-24', 9.99, 2);

-----------------------------------
INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (8, "Demain j'arrête !", 5, 20, 5, "Comme tout le monde, Julie a fait beaucoup de trucs stupides. Elle pourrait raconter la fois où elle a enfilé un pull en dévalant des escaliers, celle où elle a tenté de réparer une prise électrique en tenant les fils entre ses dents, ou encore son obsession pour le nouveau voisin qu'elle n'a pourtant jamais vu, obsession qui lui a valu de se coincer la main dans sa boîte aux lettres en espionnant un mystérieux courrier... Mais tout cela n'est rien, absolument rien, à côté des choses insensées qu'elle va tenter pour approcher cet homme dont elle veut désormais percer le secret. Poussée par une inventivité débridée, à la fois intriguée et attirée par cet inconnu à côté duquel elle vit mais dont elle ignore tout, Julie va prendre des risques toujours plus délirants, jusqu'à pouvoir enfin trouver la réponse à cette question qui révèle tellement : pour qui avons-nous fait le truc le plus idiot de notre vie ?" , '2013-04-04', 18.99, 3);

-----------------------------------Harry Potter - Gallimard
INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (9, "Harry Potter à l’École des Sorciers", 2, 20, 5, "Le jour de ses onze ans, Harry Potter, un orphelin élevé par un oncle et une tante qui le détestent, voit son existence bouleversée. Un géant vient le chercher pour l’emmener à Poudlard, une école de sorcellerie! Voler en balai, jeter des sorts, combattre les trolls : Harry Potter se révèle un sorcier doué. Mais un mystère entoure sa naissance et l’effroyable V..., le mage dont personne n’ose prononcer le nom ?", '1998-11-16', 28.99, 4);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (10, "Harry Potter et la Chambre des Secrets", 2, 20, 5, "Harry Potter fait une rentrée fracassante en voiture volante à l'école des sorciers. Cette deuxième année ne s'annonce pas de tout repos... surtout depuis qu'une étrange malédiction s'est abattue sur les élèves. Entre les cours de potion magique, les matches de Quidditch et les combats de mauvais sorts, Harry et ses amis Ron et Hermione trouveront-ils le temps de percer le mystère de la Chambre des Secrets ?Un livre magique pour sorciers confirmés.", '1999-03-28', 30.99, 4);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (11, "Harry Potter et le prisonnier d'Azkaban", 2, 20, 5, "Sirius Black, le dangereux criminel qui s'est échappé de la forteresse d'Azkaban, recherche Harry Potter. C'est donc sous bonne garde que l'apprenti sorcier fait sa troisième rentrée à Poudlard. Au programme : des cours de divination, la fabrication d'une potion de ratatinage, le dressage des hippogriffes... Mais Harry est-il vraiment à l'abri du danger qui le menace ?", '1999-08-19', 32.78, 4);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (12, "Harry Potter et la Coupe de Feu", 2, 20, 5, "Harry Potter a quatorze ans et entre en quatrième année au collège de Poudlard. Une grande nouvelle attend Harry, Ron et Hermione à leur arrivée : la tenue d'un tournoi de magie exceptionnel entre les plus célèbres écoles de sorcellerie. Déjà les délégations étrangères font leur entrée. Harry se réjouit... Trop vite. Il va se trouver plongé au cœur des évènements les plus dramatiques qu'il ait jamais eu à affronter.", '2000-11-29', 34.99, 4);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (13, "Harry Potter et l'Ordre du Phénix", 2, 20, 5, "À quinze ans, Harry entre en cinquième année à Poudlard mais il n'a jamais été aussi anxieux. L'adolescence, la perspective des examens et ces étranges cauchemars... Car Celui-Dont-On-Ne-Doit-Pas-Prononcer-Le-Nom est de retour. Le ministère de la Magie ne semble pas prendre cette menace au sérieux, contrairement à Dumbledore, le directeur du collège de Poudlard. La résistance s'organise alors autour de Harry qui va devoir compter sur le courage et la fidélité de ses amis de toujours...", '2003-12-03', 34.99, 4);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (14, "Harry Potter et le Prince de Sang-Mêlé", 2, 20, 5, "Dans un monde de plus en plus inquiétant, Harry se prépare à retrouver Ron et Hermione. Bientôt, ce sera la rentrée à Poudlard, avec les autres étudiants de sixième année. Mais pourquoi Dumbledore vient-il en personne chercher Harry chez les Dursley ? Dans quels extraordinaires voyages au cœur de la mémoire va-t-il l'entraîner ?", '2005-10-01', 34.99, 4);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (15, "Harry Potter et les Reliques de la Mort", 2, 20, 5, "Cette année, Harry a dix-sept ans et ne retourne pas à Poudlard. Avec Ron et Hermione, il se consacre à la dernière mission confiée par Dumbledore. Mais le Seigneur des Ténèbres règne en maître. Traqués, les trois fidèles amis sont contraints à la clandestinité. D'épreuves en révélations, le courage, le choix et les sacrifices de Harry seront déterminants dans la lutte contre les forces du Mal.", '2007-10-26', 36.99, 4);

-----------------------------------Le Seigneur des Anneaux
INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (16, "Le Seigneur des Anneaux, Tome 1 : La communauté de l'Anneau", 4, 20, 5, "Aux temps reculés qu'évoque le récit, la Terre est peuplée d'innombrables créatures étranges. Les Hobbits, apparentés à l'Homme, mais proches également des Elfes et des Nains, vivent en paix au nord-ouest de l'Ancien Monde, dans la Comté. Paix précaire et menacée, cependant, depuis que Bilbon Sacquet a dérobé au monstre Gollum l'Anneau de Puissance jadis forgé par Sauron de Mordor. Car cet anneau est doté d'un pouvoir immense et maléfique. Il permet à son détenteur de se rendre invisible et lui confère une autorité sans limites sur les possesseurs des autres Anneaux. Bref, il fait de lui le Maître du Monde. C'est pourquoi Sauron s'est juré de reconquérir l'Anneau par tous les moyens. Déjà ses Cavaliers Noirs rôdent aux frontières de la Comté.", '1954-07-29', 6.99, 3);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (17, "Le Seigneur des Anneaux, Tome 2 : Les Deux tours", 4, 20, 5, "Frodon le Hobbit et ses Compagnons se sont engagés, au Grand Conseil d'Elrond, à détruire l'Anneau de Puissance dont Sauron de Mordor cherche à s'emparer pour asservir tous les peuples de la Terre habitée: Elfes et Nains, Hommes et Hobbits. Dès les premières étapes de leur audacieuse entreprise, les Compagnons de Frodon vont affronter les forces du Seigneur des Ténèbres et bientôt ils devront se disperser pour survivre. Parviendront-ils à échapper aux Cavaliers de Rohan ? Trouveront-ils asile auprès de Ceux des Arbres, grâce à l'entremise de Sylvebarbe ? Qu'adviendra-t-il de Gandalf le Gris métamorphosé, au-delà de la mort, en Cavalier Blanc ?", '1954-11-11', 6.99, 3);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (18, "Le Seigneur des Anneaux, Tome 3 : Le Retour du Roi", 4, 20, 5, "Avec Le Retour du Roi s'achèvent dans un fracas d'apocalypse les derniers combats de la guerre de l'Anneau. Tandis que le continent se couvre de ténèbres, annonçant pour le peuple des Hobbits l'aube d'une ère nouvelle, Frodon poursuit son entreprise. Alors qu'il n'a pu franchir la Porte Noire, il se demande comment atteindre le Mont du Destin. Peut-être est-il trop tard : le Seigneur des Ténèbres mobilise ses troupes. Les Rohirrim n'ont plus le temps d'en finir avec le traître assiégé dans l'imprenable tour d'Orthanc; ils doivent se rassembler pour faire face à l'ennemi. Tentant une fois de plus sa chance, Frodon passe par le Haut Col, où il sera livré à l'abominable Arachné. Survivra-t-il à son dangereux périple à travers le Pays Noir ?", '1955-10-20', 7.99, 3);

-----------------------------------
INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (19, "Docteur Sleep", 4, 20, 5, "Danny Torrance a grandi. Ses démons aussi... <br>La suite tant attendue du cultissime Shining.<br><br>Stephen King renoue avec l histoire et le personnage de l un de ses plus grands succès : Shining. Le petit Dany Torrance est désormais adulte. Il a échappé au sort de son père alcoolique et travaille en tant qu aide-soignant dans un hospice où il utilise ses pouvoirs surnaturels pour apaiser la souffrance des mourants. D où son surnom : Docteur Sleep. Il rencontre Abra, fillette de 12 ans, pourchassée par un étrange groupe de voyageurs qui traversent les Etats-Unis en se nourrissant de la lumière des enfants télépathes. Commence alors une guerre épique entre le bien et le mal... <br>King signe un livre magistral, d une richesse inouïe : à la fois conte fantastique, roman d aventure, thriller et allégorie de l Amérique contemporaine - et nous prouve qu il est bel et bien « The King » !", '2013-11-01', 23.99, 5);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (20, "Naruto, Tome 60", 7, 20, 5, "Même les cinq Kage réunis ne parviennent pas à faire plier Madara tant la puissance qu'il déploie est phénoménale... Tsunade prend alors la résolution d'enfreindre les préceptes du Ninjutsu Médical ! De leur côté, Itachi et Sasuke affrontent Kabuto afin d'interrompre Edotensei !", '2013-09-06', 6.50, 6);

-----------------------------------Cuisine
INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (21, "30 recettes au Nutella", 8, 10, 2, "30 recettes gourmandes dans un livre en forme de pot de Nutella pour tous les accros de la pâte à tartiner : des petites douceurs individuelles : de la tartine de Nutella revisitée aux tartelettes Nutella-banane, des gâteaux généreux au Nutella à partager : gâteau roulé, galette des rois ou encore charlotte au Nutella- des recettes fondantes et incontournables : mousse, petites crèmes, glace au Nutella, des recettes étonnantes pour épater petits et grands : macarons, truffes au coeur de noisette caramélisée, petits nems à la mangue.", '2012-03-07', 4.99, 7);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (22, "Burgers - Les meilleures recettes", 8, 10, 2, "25 recettes irrésistibles dans un livre en forme de burger, pour tous les accros à la cuisine américaine revisitée à la française ! <br><br>De délicieuses recettes de burgers faciles et rapides à réaliser pour toutes les occasions : une soirée décontractée entre amis, un dîner plus élaboré et même un déjeuner équilibré :<br> Burger de bœuf classique, triple cheddar, burger aux nuggets et citron confit, burger au foie gras poêlé, figues, pomme et mâche, burger aux poivrons rôtis, aubergine et feta...", '2012-12-07', 5.99, 7);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (23, "La Vache qui rit - Les meilleures recettes", 8, 10, 2, "26 recettes, froides ou chaudes, auxquelles La vache qui rit apporte une petite touche lactée et beaucoup de crémeux : smoothie à la tomate, gaspacho de courgettes, paupiettes de veau, mignon de porc farci, fondue...", '2012-07-15', 4.99, 7);

-----------------------------------Lanfeust des étoiles
INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (24, "Lanfeust des étoiles, tome 1 : un,deux ... troy", 4, 20, 5, "Troy est une planète où chacun possède un pouvoir différent. Lanfeust, doté de tous les pouvoirs, court les chemins en quête d'aventures. Mais il est recherché par des visiteurs venus d'outre espace. Il apprend qu'il est, avec le terrible pirate Thanos, le résultat d'une expérience sur les pouvoirs psy, menée depuis des millénaires par les Princes-Marchands de la planète Meirrion. Ceux-ci ont envoyé un de leurs agents, la séduisante et énergique Glace, pour récupérer leurs résultats. Mais la confédération d'Abraxar fait tout pour contrecarrer les projets de Meirrion. C'est accompagné du troll Hébus et de la belle Cixi, que Lanfeust quitte Troy. Il découvre, loin dans les étoiles, qu'il pourrait être au centre des principaux combats de l'univers...", '2001-12-01', 13.99, 8);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (25, "Lanfeust des étoiles, tome 2 : Les Tours de Meirrion", 4, 20, 5, "Troy est une planète où chacun possède un pouvoir magique différent. Lanfeust, doté de tous les pouvoirs, court les chemins en quête d'aventures. Mais il est recherché par des visiteurs venus d'outre-espace. Il apprend qu'il est, avec le terrible pirate Thanos, le résultat d'une expérience sur les pouvoirs psy, menée depuis des millénaires par les Princes Marchands de la planète Meirrion. Ceux-ci ont envoyé un de leurs agents, la séduisante et énergique Glace, pour récupérer leurs résultats. Mais la confédération d'Abraxar fait tout pour contrecarrer les projets de Meirrion. C'est accompagné du troll Hébus et de la belle Cixi que Lanfeust quitte Troy pour découvrir que, loin dans les étoiles, il pourrait être au centre des principaux combats de l'univers...", '2003-03-26', 13.99, 8);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (26, "Lanfeust des Etoiles, tome 3 : Les sables d'Abraxar", 4, 20, 5, "Troy est une planète où chacun possède un pouvoir magique différent. Lanfeust, doté de tous les pouvoirs, court les chemins en quête d'aventures. Mais il est recherché par des visiteurs venus d'outre-espace. Il apprend qu'il est, avec le terrible pirate Thanos, le résultat d'une expérience sur les pouvoirs psy, menée depuis des millénaires par les Princes Marcrands de la planète Meirrion. Ceux-ci ont envoyé un de leurs agents, la séduisante et énergique Glace, pour récupérer leurs résultats. Mais la confédération d'Abraxar fait tout pour contrecarrer les projets de Meirrion. C'est accompagné du troll Hébus et de la belle Cixi que Lanfeust quitte Troy pour découvrir que, loin dans les étoiles, il pourrait être au centre des principaux combats de l'univers..", '2004-01-21', 13.99, 8);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (27, "Lanfeust des Etoiles, Tome 4 : Les Buveurs de Mondes", 4, 20, 5, "Un classique de l’aventure fantastique qui vous emmène... loin dans les étoiles !<br> Accrochez-vous !<br> Abraxar, siège de la résistance contre la domination des princes marchands, vient d’être envahie par les hommes de Dheluu. À leur tête, Thanos et l’agent Glace. Mais Lanfeust a tenté une manœuvre désespérée : faire passer la planète entière à travers une porte pour l’expédier... loin. Ce qu’il n’avait pas prévu, c’était un choc en retour qui les enverrait, lui et Swiip, quatre mille ans dans le passé.", '2004-12-08', 13.99, 8);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (28, "Lanfeust des Etoiles, Tome 5 : La Chevauchée des Bactéries", 4, 20, 5, "Troy est une planète où chacun possède un pouvoir magique différent. Lanfeust, doté de tous les pouvoirs, court les chemins en quête d'aventures.Mais il est recherché par des visiteurs venus d'outre-espace. Il apprend qu'il est, avec le terrible pirate Thanos, le résultat d'une expérience sur les pouvoirs psy, menée depuis des millénaires par les Princes Marchands de la planète Meirrion. Ceux-ci ont envoyé un de leurs agents, la séduisante et énergique Glace, pour récupérer leurs résultats. Mais la confédération d'Abraxar fait tout pour contrecarrer les projets de Meirrion. C'est accompagné du troll Hébus et de la belle Cixi que Lanfeust quitte Troy pour découvrir que, loin dans les étoiles, il pourrait être au centre des principaux combats de l'univers...", '2005-12-07', 13.99, 8);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (29, "Lanfeust des Etoiles, tome 6 : Le Râle du flibustier", 4, 20, 5, "Troy est une planète où chacun possède un pouvoir magique différent. Lanfeust, doté de tous les pouvoirs, court les chemins en quête d'aventures. Mais il est recherché par des visiteurs venus d'outre-espace. Il apprend qu'il est, avec le terrible pirate Thanos, le résultat d'une expérience sur les pouvoirs psy, menée depuis des millénaires par les Princes Marchands de la planète Meirrion. Ceux-ci ont envoyé un de leurs agents, la séduisante et énergique Glace, pour récupérer leurs résultats. Mais la confédération d'Abraxar. fait tout pour contrecarrer les projets de Meirrion. C'est accompagné du troll Hébus et de la belle Cixi que Lanfeust quitte Troy pour découvrir que, loin dans les étoiles, il pourrait être au centre des principaux combats de l'univers...", '2006-12-06', 13.99, 8);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (30, "Lanfeust des Etoiles, Tome 7 : Le secret des Dolphantes", 4, 20, 5, "Troy est une planète où chacun possède un pouvoir magique différent. Lanfeust, doté de tous les pouvoirs, court les chemins en quête d'aventures. Mais il est recherché par des visiteurs venus d'outre-espace. Il apprend qu'il est, avec le terrible pirate Thanos, le résultat d'une expérience sur les pouvoirs psy, menée depuis des millénaires par les Princes Marchands de la planète Meirrion. Ceux-ci ont envoyé un de leurs agents, la séduisante et énergique Glace, pour récupérer leurs résultats. Mais la confédération d'Abraxar. fait tout pour contrecarrer les projets de Meirrion. C'est accompagné du troll Hébus et de la belle Cixi que Lanfeust quitte Troy pour découvrir que, loin dans les étoiles, il pourrait être au centre des principaux combats de l'univers...", '2007-12-12', 13.99, 8);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (31, "Lanfeust des Etoiles, Tome 8 : Le sang des comètes", 4, 20, 5, "Troy est une planète où chacun possède un pouvoir magique différent. Lanfeust, doté de tous les pouvoirs, court les chemins en quête d'aventures. Mais il est recherché par des visiteurs venus d'outre-espace. Il apprend qu'il est, avec le terrible pirate Thanos, le résultat d'une expérience sur les pouvoirs psy, menée depuis des millénaires par les Princes Marchands de la planète Meirrion. Ceux-ci ont envoyé un de leurs agents, la séduisante et énergique Glace, pour récupérer leurs résultats. Mais la confédération d'Abraxar. fait tout pour contrecarrer les projets de Meirrion. C'est accompagné du troll Hébus et de la belle Cixi que Lanfeust quitte Troy pour découvrir que, loin dans les étoiles, il pourrait être au centre des principaux combats de l'univers...", '2008-11-26', 13.99, 8);

-----------------------------------Comics
INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (32, "Walking Dead, Tome 18 : Lucille...", 10, 20, 5, "La mort de Glenn a été un grand traumatisme pour tous. À sa suite, Rick, qui n’est plus le chef de la communauté, semble accepter sa soumission à Negan, un choix également assumé par Michonne. Rick ne bronche pas quand le tueur revient l’humilier une nouvelle fois. Mais qu’en est-il de Carl ? Celui-ci a échappé à la surveillance de son père, et se trouve caché sous un matelas, armé d’un fusil...", '2013-09-04', 13.50, 9);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (33, "Deadpool Corps : Le club des cinq", 10, 20, 5, "Le sort de l'univers est entre les mains de Deadpool ! A qui demandera-t-il de l'aide ? Mais à des doubles de lui-même originaires d'univers alternatifs, bien sûr ! Découvrez la bande de cinglés appelée à former le Deadpool Corps : Lady Deadpool, le garnement Kidpool, le chien Dogpool et Têtepool, la tête de zombie. Cet album rassemble le récit complet Le club des cinq, écrit par le romancier Victor Gischler et illustré par un (dead)pool d'excellents dessinateurs composé de Kyle Baker, Philip Bond (Kill Your Boyfriend), Rob Liefeld et Whilce Portacio (X-Men) !", '2011-05-18', 14, 10);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (34, "Batman tome 2", 10, 20, 5, "La Cour des Hiboux prend son envol, et la nuit à venir pourrait bien signer la mort de Gotham City elle-même. Lancés depuis les hauteurs de la ville, les Ergots, émissaires assassins de la Cour, ont pour mission de mettre à mort les personnalités les plus progressistes de la cité, laissant à leurs maîtres le champ libre pour étendre leur emprise. Les prochains noms sur leur liste ? Lincoln March et Bruce Wayne... (contient Batman Vol. 2: The City of Owls HC - #8-12 + Night of the Owls : Batman Annual #1 (48-pages) )", '2013-04-12', 18.50, 11);

-----------------------------------Coloriage
INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (35, "Mon livre de coloriages hello kitty", 11, 10, 2, "Amuse-toi à colorier Hello Kitty avec tes plus belles couleurs. Puis découpe tes dessins selon les pointillés pour décorer ta chambre.", '2012-05-02', 2.80, 12);

INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (36, "Mon livre de coloriage my little Pony", 11, 10, 2, "Des jeux simples et des stickers pour les petits.", '2012-05-02', 2.80, 12);

-----------------------------------Ananas
INSERT IGNORE INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (36, "Comme un ananas", 12, 10, 2, "Ouvrage publié à l'occasion de l'exposition «Comme un ananas», Carte Blanche à Philippe Katerine, présentée à la Galerie des Galeries, Galeries Lafayette Haussmann, du 4 avril au 2 juin 2012.", '2012-04-05', 17.50, 13);

--
-- Create Orders
-- INSERT INTO `orders`(`Id`, `Id_User`, `Date`, `Total`) VALUES ([value-1],[value-2],[value-3],[value-4])
--
INSERT IGNORE INTO `orders`(`Id`, `Id_User`, `Date`, `Total`) VALUES (0, 1, '2013-05-17', 0);
INSERT IGNORE INTO `orders`(`Id`, `Id_User`, `Date`, `Total`) VALUES (1, 1, '2013-07-08', 0);
INSERT IGNORE INTO `orders`(`Id`, `Id_User`, `Date`, `Total`) VALUES (2, 2, '2013-07-25', 0);
INSERT IGNORE INTO `orders`(`Id`, `Id_User`, `Date`, `Total`) VALUES (3, 0, '2013-08-01', 0);
INSERT IGNORE INTO `orders`(`Id`, `Id_User`, `Date`, `Total`) VALUES (4, 2, '2013-09-15', 0);

--
-- Create Book_Orders
-- INSERT INTO `book_order`(`Id`, `Id_Book`, `Quantity`, `Id_Order`) VALUES ([value-1],[value-2],[value-3],[value-4])
--
INSERT IGNORE INTO `book_orders`(`Id`, `Id_Book`, `Quantity`, `Id_Orders`) VALUES (0, 2, 1, 2);
INSERT IGNORE INTO `book_orders`(`Id`, `Id_Book`, `Quantity`, `Id_Orders`) VALUES (1, 3, 4, 2);
INSERT IGNORE INTO `book_orders`(`Id`, `Id_Book`, `Quantity`, `Id_Orders`) VALUES (2, 1, 1, 1);

--
-- Create Book_Author
-- INSERT INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES ([value-1],[value-2],[value-3])
--
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (0, 0, 0);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (1, 0, 1);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (2, 0, 2);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (3, 0, 3);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (4, 0, 4);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (5, 0, 5);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (6, 0, 6);

INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (7, 1, 7);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (8, 2, 7);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (9, 3, 7);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (10, 4, 7);

INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (11, 5, 8);

INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (12, 0, 9);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (13, 0, 10);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (14, 0, 11);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (15, 0, 12);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (16, 0, 13);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (17, 0, 14);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (18, 0, 15);

INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (19, 6, 16);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (20, 6, 17);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (21, 6, 18);

INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (22, 7, 19);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (23, 8, 20);

INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (24, 9, 21);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (25, 9, 22);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (26, 9, 23);

INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (27, 10, 24);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (28, 11, 24);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (29, 10, 25);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (30, 11, 25);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (31, 10, 26);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (32, 11, 26);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (33, 10, 27);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (34, 11, 27);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (35, 10, 28);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (36, 11, 28);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (37, 10, 29);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (38, 11, 29);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (40, 10, 30);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (41, 11, 30);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (42, 10, 31);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (43, 11, 31);

INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (44, 12, 32);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (44, 13, 32);

INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (44, 14, 33);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (44, 15, 33);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (44, 16, 33);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (44, 17, 33);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (44, 18, 33);

INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (44, 14, 34);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (44, 15, 34);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (44, 16, 34);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (44, 17, 34);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (44, 18, 34);

INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (44, 19, 35);
INSERT IGNORE INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (44, 19, 36);