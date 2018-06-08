
CREATE TABLE Category (
                CategoryId INT AUTO_INCREMENT NOT NULL,
                CategoryName VARCHAR(50) NOT NULL,
                PRIMARY KEY (CategoryId)
);


CREATE TABLE Language (
                LanguageId INT AUTO_INCREMENT NOT NULL,
                LanguageName VARCHAR(50) NOT NULL,
                PRIMARY KEY (LanguageId)
);


CREATE TABLE Challenge (
                ChallengeId INT AUTO_INCREMENT NOT NULL,
                ChallengeName VARCHAR(50) NOT NULL,
                CategoryId INT NOT NULL,
                LanguageId INT NOT NULL,
                PRIMARY KEY (ChallengeId)
);


ALTER TABLE Challenge ADD CONSTRAINT category_challenge_fk
FOREIGN KEY (CategoryId)
REFERENCES Category (CategoryId)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Challenge ADD CONSTRAINT language_challenge_fk
FOREIGN KEY (LanguageId)
REFERENCES Language (LanguageId)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
