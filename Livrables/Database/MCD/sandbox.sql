CREATE TABLE `PUBLISHER` (
  `Id`,
  `Name`,
  PRIMARY KEY(`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE `ORDER` (
  `Id.1`,
  `Id_User`,
  `Id.2`,
  PRIMARY KEY(`Id.1`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE `BOOK_ORDER` (
  `Id`,
  `Id_Book`,
  `Quantity`,
  `Id_Order`,
  PRIMARY KEY(`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE `BOOK` (
  `Id.1`,
  `Title`,
  `Id_Category`,
  `Supply`,
  `Threshold`,
  `Summary`,
  `Release_Date`,
  `Price`,
  `Id_Publisher`,
  `ImageLink`,
  `Id.2`,
  `Id.3`,
  `Id.4`,
  PRIMARY KEY(`Id.1`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE `BOOK_AUTHOR` (
  `Id`,
  `Id_Author`,
  `Id_Book`,
  PRIMARY KEY(`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE `AUTHOR` (
  `Id.1`,
  `FirstName`,
  `LastName`,
  `Id.2`,
  PRIMARY KEY(`Id.1`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE `USER` (
  `Id.1`,
  `FirstName`,
  `LastName`,
  `Mail`,
  `Address`,
  `ZIP`,
  `City`,
  `Login`,
  `Password`,
  `Id.2`,
  PRIMARY KEY(`Id.1`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE `CATEGORY` (
  `Id.1`,
  `Name`,
  `Id.2`,
  PRIMARY KEY(`Id.1`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

ALTER TABLE `ORDER` ADD FOREIGN KEY (`Id`) REFERENCES `BOOK_ORDER` (`Id`);
ALTER TABLE `BOOK` ADD FOREIGN KEY (`Id`) REFERENCES `BOOK_AUTHOR` (`Id`);
ALTER TABLE `BOOK` ADD FOREIGN KEY (`Id`) REFERENCES `BOOK_ORDER` (`Id`);
ALTER TABLE `BOOK` ADD FOREIGN KEY (`Id`) REFERENCES `PUBLISHER` (`Id`);
ALTER TABLE `AUTHOR` ADD FOREIGN KEY (`Id`) REFERENCES `BOOK_AUTHOR` (`Id`);
ALTER TABLE `USER` ADD FOREIGN KEY (`Id`) REFERENCES `ORDER` (`Id`);
ALTER TABLE `CATEGORY` ADD FOREIGN KEY (`Id`) REFERENCES `BOOK` (`Id`);