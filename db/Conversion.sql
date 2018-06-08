

--START ticket#14
ALTER TABLE Challenge ADD LanguageId INT NOT NULL;

ALTER TABLE Challenge ADD CONSTRAINT language_challenge_fk
FOREIGN KEY (LanguageId)
REFERENCES Language (LanguageId)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

--END ticket#14



