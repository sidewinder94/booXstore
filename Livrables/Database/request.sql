--
-- ------------------------------------- --
-- MySQL Request for completing Database
-- ------------------------------------- --
--

--
-- Create User
-- INSERT INTO `user`(`Id`, `FirstName`, `LastName`, `Mail`, `Address`, `ZIP`, `City`, `Login`, `Password`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9])
--
INSERT INTO `user`(`Id`, `FirstName`, `LastName`, `Mail`, `Address`, `ZIP`, `City`, `Login`, `Password`) VALUES (0, "Toto","Coppée","toto.coppee@yahoo.fr", "La Basse Lande", 44522, "Pouillé-les-Côteaux", "TCoppee", "azerty");
INSERT INTO `user`(`Id`, `FirstName`, `LastName`, `Mail`, `Address`, `ZIP`, `City`, `Login`, `Password`) VALUES (1, "Tintin","Dupont","titin.dupont@gmail.com", "8 Chemin des Chabris", 03450, "Vicq", "Dupont", "123456789");
INSERT INTO `user`(`Id`, `FirstName`, `LastName`, `Mail`, `Address`, `ZIP`, `City`, `Login`, `Password`) VALUES (2, "Fabien","Ollivier","fabien.olliver@outlook.com", "3 Rue Pablo Picasso", 30100, "Alès", "Skill", "azerty1");

--
-- Create Seller
-- INSERT INTO `seller`(`Id`, `Login`, `Password`) VALUES ([value-1],[value-2],[value-3])
--
INSERT INTO `seller`(`Id`, `Login`, `Password`) VALUES (0, "Google", "play");
INSERT INTO `seller`(`Id`, `Login`, `Password`) VALUES (1, "Fnac", "book");

--
-- Create Publisher
-- INSERT INTO `publisher`(`Id`, `Name`) VALUES ([value-1],[value-2])
--
INSERT INTO `publisher`(`Id`, `Name`) VALUES (0, "Hachette livres");
INSERT INTO `publisher`(`Id`, `Name`) VALUES (1, "Folio junior");
INSERT INTO `publisher`(`Id`, `Name`) VALUES (2, "Editions Albert René");
INSERT INTO `publisher`(`Id`, `Name`) VALUES (3, "Pocket");
INSERT INTO `publisher`(`Id`, `Name`) VALUES (4, "Gallimard");

--
-- Create Category
-- INSERT INTO `category`(`Id`, `Name`) VALUES ([value-1],[value-2])
--
INSERT INTO `category`(`Id`, `Name`) VALUES (0, "Livres pour enfants");
INSERT INTO `category`(`Id`, `Name`) VALUES (1, "Action");
INSERT INTO `category`(`Id`, `Name`) VALUES (2, "Fantastique");
INSERT INTO `category`(`Id`, `Name`) VALUES (3, "Policier");
INSERT INTO `category`(`Id`, `Name`) VALUES (4, "Bande Dessinée");
INSERT INTO `category`(`Id`, `Name`) VALUES (5, "Dramatique");
INSERT INTO `category`(`Id`, `Name`) VALUES (6, "Science-fiction");
INSERT INTO `category`(`Id`, `Name`) VALUES (7, "Manga");

-- 
-- Create Author
-- INSERT INTO `author`(`Id`, `FirstName`, `LastName`) VALUES ([value-1],[value-2],[value-3])
--
INSERT INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (0, "J.K.", "Rowling");
INSERT INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (1, "René", "Goscinny");
INSERT INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (2, "Albert", "Uderzo");
INSERT INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (3, "Jean-Yves", "Ferri");
INSERT INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (4, "Didier", "Conrad");
INSERT INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (5, "Gilles", "Legardinier");
INSERT INTO `author`(`Id`, `FirstName`, `LastName`) VALUES (6, "J.R.R.", "Tolkein");

--
-- Create Book 
-- INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9])
--
INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (0, "Harry Potter à l’École des Sorciers", 2, 20, 5, "Le jour de ses onze ans, Harry Potter, un orphelin élevé par un oncle et une tante qui le détestent, voit son existence bouleversée. Un géant vient le chercher pour l’emmener à Poudlard, une école de sorcellerie! Voler en balai, jeter des sorts, combattre les trolls : Harry Potter se révèle un sorcier doué. Mais un mystère entoure sa naissance et l’effroyable V..., le mage dont personne n’ose prononcer le nom ?", 1998-16-11, 28.99, 3);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (1, "Harry Potter et la Chambre des Secrets", 2, 20, 5, "Harry Potter fait une rentrée fracassante en voiture volante à l'école des sorciers. Cette deuxième année ne s'annonce pas de tout repos... surtout depuis qu'une étrange malédiction s'est abattue sur les élèves. Entre les cours de potion magique, les matches de Quidditch et les combats de mauvais sorts, Harry et ses amis Ron et Hermione trouveront-ils le temps de percer le mystère de la Chambre des Secrets ?Un livre magique pour sorciers confirmés.", 1999-28-03, 30.99, 3);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (2, "Harry Potter et le prisonnier d'Azkaban", 2, 20, 5, "Sirius Black, le dangereux criminel qui s'est échappé de la forteresse d'Azkaban, recherche Harry Potter. C'est donc sous bonne garde que l'apprenti sorcier fait sa troisième rentrée à Poudlard. Au programme : des cours de divination, la fabrication d'une potion de ratatinage, le dressage des hippogriffes... Mais Harry est-il vraiment à l'abri du danger qui le menace ?", 1999-19-08, 32.78, 3);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (3, "Harry Potter et la Coupe de Feu", 2, 20, 5, "Harry Potter a quatorze ans et entre en quatrième année au collège de Poudlard. Une grande nouvelle attend Harry, Ron et Hermione à leur arrivée : la tenue d'un tournoi de magie exceptionnel entre les plus célèbres écoles de sorcellerie. Déjà les délégations étrangères font leur entrée. Harry se réjouit... Trop vite. Il va se trouver plongé au cœur des évènements les plus dramatiques qu'il ait jamais eu à affronter.", 2000-29-11, 34.99, 3);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (4, "Harry Potter et l'Ordre du Phénix", 2, 20, 5, "À quinze ans, Harry entre en cinquième année à Poudlard mais il n'a jamais été aussi anxieux. L'adolescence, la perspective des examens et ces étranges cauchemars... Car Celui-Dont-On-Ne-Doit-Pas-Prononcer-Le-Nom est de retour. Le ministère de la Magie ne semble pas prendre cette menace au sérieux, contrairement à Dumbledore, le directeur du collège de Poudlard. La résistance s'organise alors autour de Harry qui va devoir compter sur le courage et la fidélité de ses amis de toujours...", 2003-03-12, 34.99, 3);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (5, "Harry Potter et le Prince de Sang-Mêlé", 2, 20, 5, "Dans un monde de plus en plus inquiétant, Harry se prépare à retrouver Ron et Hermione. Bientôt, ce sera la rentrée à Poudlard, avec les autres étudiants de sixième année. Mais pourquoi Dumbledore vient-il en personne chercher Harry chez les Dursley ? Dans quels extraordinaires voyages au cœur de la mémoire va-t-il l'entraîner ?", 2005-01-10, 34.99, 3);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (6, "Harry Potter et les Reliques de la Mort", 2, 20, 5, "Cette année, Harry a dix-sept ans et ne retourne pas à Poudlard. Avec Ron et Hermione, il se consacre à la dernière mission confiée par Dumbledore. Mais le Seigneur des Ténèbres règne en maître. Traqués, les trois fidèles amis sont contraints à la clandestinité. D'épreuves en révélations, le courage, le choix et les sacrifices de Harry seront déterminants dans la lutte contre les forces du Mal.", 2007-26-10, 36.99, 3);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (7, "Astérix chez les Pictes - 35", 4, 20, 5, "Les Pictes ? Oui, les Pictes ! Ces peuples de l’ancienne Ecosse, redoutables guerriers aux multiples clans, dont le nom, donné par les Romains, signifie littéralement « les hommes peints ». Astérix chez les Pictes promet donc un voyage épique vers une contrée riche de traditions, à la découverte d’un peuple dont les différences culturelles se traduiront en gags et jeux de mots mémorables.", 2013-24-10, 9.99, 2);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (8, "Demain j'arrête !", 5, 20, 5, "Comme tout le monde, Julie a fait beaucoup de trucs stupides. Elle pourrait raconter la fois où elle a enfilé un pull en dévalant des escaliers, celle où elle a tenté de réparer une prise électrique en tenant les fils entre ses dents, ou encore son obsession pour le nouveau voisin qu'elle n'a pourtant jamais vu, obsession qui lui a valu de se coincer la main dans sa boîte aux lettres en espionnant un mystérieux courrier... Mais tout cela n'est rien, absolument rien, à côté des choses insensées qu'elle va tenter pour approcher cet homme dont elle veut désormais percer le secret. Poussée par une inventivité débridée, à la fois intriguée et attirée par cet inconnu à côté duquel elle vit mais dont elle ignore tout, Julie va prendre des risques toujours plus délirants, jusqu'à pouvoir enfin trouver la réponse à cette question qui révèle tellement : pour qui avons-nous fait le truc le plus idiot de notre vie ?" ,2013-04-04, 18.99, 3);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (9, "Harry Potter à l’École des Sorciers", 2, 20, 5, "Le jour de ses onze ans, Harry Potter, un orphelin élevé par un oncle et une tante qui le détestent, voit son existence bouleversée. Un géant vient le chercher pour l’emmener à Poudlard, une école de sorcellerie! Voler en balai, jeter des sorts, combattre les trolls : Harry Potter se révèle un sorcier doué. Mais un mystère entoure sa naissance et l’effroyable V..., le mage dont personne n’ose prononcer le nom ?", 1998-16-11, 28.99, 4);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (10, "Harry Potter et la Chambre des Secrets", 2, 20, 5, "Harry Potter fait une rentrée fracassante en voiture volante à l'école des sorciers. Cette deuxième année ne s'annonce pas de tout repos... surtout depuis qu'une étrange malédiction s'est abattue sur les élèves. Entre les cours de potion magique, les matches de Quidditch et les combats de mauvais sorts, Harry et ses amis Ron et Hermione trouveront-ils le temps de percer le mystère de la Chambre des Secrets ?Un livre magique pour sorciers confirmés.", 1999-28-03, 30.99, 4);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (11, "Harry Potter et le prisonnier d'Azkaban", 2, 20, 5, "Sirius Black, le dangereux criminel qui s'est échappé de la forteresse d'Azkaban, recherche Harry Potter. C'est donc sous bonne garde que l'apprenti sorcier fait sa troisième rentrée à Poudlard. Au programme : des cours de divination, la fabrication d'une potion de ratatinage, le dressage des hippogriffes... Mais Harry est-il vraiment à l'abri du danger qui le menace ?", 1999-19-08, 32.78, 4);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (12, "Harry Potter et la Coupe de Feu", 2, 20, 5, "Harry Potter a quatorze ans et entre en quatrième année au collège de Poudlard. Une grande nouvelle attend Harry, Ron et Hermione à leur arrivée : la tenue d'un tournoi de magie exceptionnel entre les plus célèbres écoles de sorcellerie. Déjà les délégations étrangères font leur entrée. Harry se réjouit... Trop vite. Il va se trouver plongé au cœur des évènements les plus dramatiques qu'il ait jamais eu à affronter.", 2000-29-11, 34.99, 4);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (13, "Harry Potter et l'Ordre du Phénix", 2, 20, 5, "À quinze ans, Harry entre en cinquième année à Poudlard mais il n'a jamais été aussi anxieux. L'adolescence, la perspective des examens et ces étranges cauchemars... Car Celui-Dont-On-Ne-Doit-Pas-Prononcer-Le-Nom est de retour. Le ministère de la Magie ne semble pas prendre cette menace au sérieux, contrairement à Dumbledore, le directeur du collège de Poudlard. La résistance s'organise alors autour de Harry qui va devoir compter sur le courage et la fidélité de ses amis de toujours...", 2003-03-12, 34.99, 4);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (14, "Harry Potter et le Prince de Sang-Mêlé", 2, 20, 5, "Dans un monde de plus en plus inquiétant, Harry se prépare à retrouver Ron et Hermione. Bientôt, ce sera la rentrée à Poudlard, avec les autres étudiants de sixième année. Mais pourquoi Dumbledore vient-il en personne chercher Harry chez les Dursley ? Dans quels extraordinaires voyages au cœur de la mémoire va-t-il l'entraîner ?", 2005-01-10, 34.99, 4);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (15, "Harry Potter et les Reliques de la Mort", 2, 20, 5, "Cette année, Harry a dix-sept ans et ne retourne pas à Poudlard. Avec Ron et Hermione, il se consacre à la dernière mission confiée par Dumbledore. Mais le Seigneur des Ténèbres règne en maître. Traqués, les trois fidèles amis sont contraints à la clandestinité. D'épreuves en révélations, le courage, le choix et les sacrifices de Harry seront déterminants dans la lutte contre les forces du Mal.", 2007-26-10, 36.99, 4);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (16, "Le Seigneur des Anneaux, Tome 1 : La communauté de l'Anneau", 4, 20, 5, "Aux temps reculés qu'évoque le récit, la Terre est peuplée d'innombrables créatures étranges. Les Hobbits, apparentés à l'Homme, mais proches également des Elfes et des Nains, vivent en paix au nord-ouest de l'Ancien Monde, dans la Comté. Paix précaire et menacée, cependant, depuis que Bilbon Sacquet a dérobé au monstre Gollum l'Anneau de Puissance jadis forgé par Sauron de Mordor. Car cet anneau est doté d'un pouvoir immense et maléfique. Il permet à son détenteur de se rendre invisible et lui confère une autorité sans limites sur les possesseurs des autres Anneaux. Bref, il fait de lui le Maître du Monde. C'est pourquoi Sauron s'est juré de reconquérir l'Anneau par tous les moyens. Déjà ses Cavaliers Noirs rôdent aux frontières de la Comté.", 1954-29-07, 6.99, 3);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (17, "Le Seigneur des Anneaux, Tome 2 : Les Deux tours", 4, 20, 5, "Frodon le Hobbit et ses Compagnons se sont engagés, au Grand Conseil d'Elrond, à détruire l'Anneau de Puissance dont Sauron de Mordor cherche à s'emparer pour asservir tous les peuples de la Terre habitée: Elfes et Nains, Hommes et Hobbits. Dès les premières étapes de leur audacieuse entreprise, les Compagnons de Frodon vont affronter les forces du Seigneur des Ténèbres et bientôt ils devront se disperser pour survivre. Parviendront-ils à échapper aux Cavaliers de Rohan ? Trouveront-ils asile auprès de Ceux des Arbres, grâce à l'entremise de Sylvebarbe ? Qu'adviendra-t-il de Gandalf le Gris métamorphosé, au-delà de la mort, en Cavalier Blanc ?", 1954-11-11, 6.99, 3);

INSERT INTO `book`(`Id`, `Title`, `Id_Category`, `Supply`, `Threshold`, `Summary`, `Release_Date`, `Price`, `Id_Publisher`) VALUES (18, "Le Seigneur des Anneaux, Tome 3 : Le Retour du Roi", 4, 20, 5, "Avec Le Retour du Roi s'achèvent dans un fracas d'apocalypse les derniers combats de la guerre de l'Anneau. Tandis que le continent se couvre de ténèbres, annonçant pour le peuple des Hobbits l'aube d'une ère nouvelle, Frodon poursuit son entreprise. Alors qu'il n'a pu franchir la Porte Noire, il se demande comment atteindre le Mont du Destin. Peut-être est-il trop tard : le Seigneur des Ténèbres mobilise ses troupes. Les Rohirrim n'ont plus le temps d'en finir avec le traître assiégé dans l'imprenable tour d'Orthanc; ils doivent se rassembler pour faire face à l'ennemi. Tentant une fois de plus sa chance, Frodon passe par le Haut Col, où il sera livré à l'abominable Arachné. Survivra-t-il à son dangereux périple à travers le Pays Noir ?", 1955-20-10, 7.99, 3);

--
-- Create Order
-- INSERT INTO `order`(`Id`, `Id_User`, `Date`, `Total`) VALUES ([value-1],[value-2],[value-3],[value-4])
--
INSERT INTO `order`(`Id`, `Id_User`, `Date`, `Total`) VALUES (0, 1, 2013-05-17, 0);
INSERT INTO `order`(`Id`, `Id_User`, `Date`, `Total`) VALUES (1, 1, 2013-07-08, 0);
INSERT INTO `order`(`Id`, `Id_User`, `Date`, `Total`) VALUES (2, 2, 2013-07-25, 0);
INSERT INTO `order`(`Id`, `Id_User`, `Date`, `Total`) VALUES (3, 0, 2013-08-01, 0);
INSERT INTO `order`(`Id`, `Id_User`, `Date`, `Total`) VALUES (4, 2, 2013-09-15, 0);

--
-- Create Book_Order A CHANGER ERREUR FOREIGN KEY
-- INSERT INTO `book_order`(`Id`, `Id_Book`, `Quantity`, `Id_Order`) VALUES ([value-1],[value-2],[value-3],[value-4])
--
INSERT INTO `book_order`(`Id`, `Id_Book`, `Quantity`, `Id_Order`) VALUES (0, 2, 1, 2);
INSERT INTO `book_order`(`Id`, `Id_Book`, `Quantity`, `Id_Order`) VALUES (1, 3, 4, 2);
INSERT INTO `book_order`(`Id`, `Id_Book`, `Quantity`, `Id_Order`) VALUES (2, 1, 1, 1);

--
-- Create Book_Author
-- INSERT INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES ([value-1],[value-2],[value-3])
--
INSERT INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (0, 1, 7);
INSERT INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (1, 2, 7);
INSERT INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (2, 3, 7);
INSERT INTO `book_author`(`Id`, `Id_Author`, `Id_Book`) VALUES (3, 4, 7);