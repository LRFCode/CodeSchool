
CREATE TABLE Category (
                CategoryId INT AUTO_INCREMENT NOT NULL,
                CategoryName VARCHAR(50) NOT NULL,
                PRIMARY KEY (CategoryId)
);


CREATE TABLE Challenge (
                ChallengeId INT AUTO_INCREMENT NOT NULL,
                ChallengeName VARCHAR(50) NOT NULL,
                CategoryId INT NOT NULL,
                PRIMARY KEY (ChallengeId)
);


CREATE TABLE Language (
                LanguageId INT AUTO_INCREMENT NOT NULL,
                LanguageName VARCHAR(50) NOT NULL,
                PRIMARY KEY (LanguageId)
);


ALTER TABLE Challenge ADD CONSTRAINT category_challenge_fk
FOREIGN KEY (CategoryId)
REFERENCES Category (CategoryId)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
