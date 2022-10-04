-- CREATE DATABASE "saga_movies_weekend"


CREATE TABLE "movies" (
  "id" SERIAL PRIMARY KEY,
  "title" VARCHAR(120) NOT NULL,
  "poster"  VARCHAR(120) NOT NULL,
  "description" TEXT NOT NULL
);


CREATE TABLE "genres" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(80) NOT NULL
);


-- JUNCTION TABLE
-- Movies can have multiple genres and each genre can be applied to multiple movies
-- This is many-to-many!
CREATE TABLE "movies_genres" (
  "id" SERIAL PRIMARY KEY,
  "movie_id" INT REFERENCES "movies" NOT NULL,
  "genre_id" INT REFERENCES "genres" NOT NULL
);

--------[ MY DATA!]--------

INSERT INTO "genres" ("name")
VALUES 
('Adventure'),
('Animated'),
('Biographical'),
('Comedy'),
('Disaster'),
('Drama'),
('Epic'),
('Fantasy'),
('Musical'),
('Romantic'),         --10
('Science Fiction'),  --11
('Space-Opera'),      --12
('Superhero'),        --13
('Horror'), 		  --14
('Thriller'),		  --15
('Slasher');		  --16

INSERT INTO "movies" ("title", "poster", "description")
VALUES ('The Shining', 'images/shining.jpeg', 'A novelist - Jack Torrance takes a job interview as winter caretaker of the isolated, old, huge and beautiful Overlook Hotel. Jack brings his wife - Wendy and his son Danny. It happens that Danny, has a mysterious power known as "The Shining". Danny meets Hallorann - the hotel cook in their first day arriving at the Overlook, who warns him about the hotel and the sinister Room 237. As the days go by, Danny has visions, meanwhile Jack starts driving into insanity, turning more and more aggressive, at the point that Danny and Wendy gets convinced that Jack might try to do something bad.'), ('Halloween', 'images/halloween.jpeg', 'On a cold Halloween night in 1963, six year old Michael Myers brutally murdered his 17-year-old sister, Judith. He was sentenced and locked away for 15 years. But on October 30, 1978, while being transferred for a court date, a 21-year-old Michael Myers steals a car and escapes Smith''s Grove. He returns to his quiet hometown of Haddonfield, Illinois, where he looks for his next victims.'), ('IT', 'images/it.jpeg', 'It (also referred to as Stephen King''s IT) is a 1990 horror/drama miniseries based on Stephen King''s novel of the same name. The story revolves around an inter-dimensional predatory life-form, which has the ability to transform itself into its prey''s worst fears, allowing it to exploit the phobias of its victims. It mostly takes the form of a sadistic, wisecracking clown called "Pennywise the Dancing Clown". The main protagonists are "The Losers Club", a group of outcast kids who discover Pennywise and vow to destroy him by any means necessary. The series takes place over two different time periods, the first when the Losers first discover Pennywise as children, and the second when they''re called back as adults to defeat Pennywise, who has resurfaced.'), ('Scream', 'images/scream.jpeg', 'A peaceful town in California turns into a bloodbath when a masked killer haunts the town. Sidney Prescott, a young teenage girl, whose mother was killed a year before, becomes the target of the mask killer! Her boyfriend Billy Loomis becomes the main suspect along with Sidney''s father. Local Tabloid News Reporter Gail Weathers and Woodsbroro''s Deputy Dwight "Dewey" Riley investigate and try to figure out who the killer is and if it''s the same person who killed Sid''s mom the year before!'), ('Friday the 13th', 'images/friday.jpeg', 'In 1958, two camp counselors are both murdered by an unseen killer. Twenty-one years later, the camp is opened again despite the townspeople''s fears that more mayhem will occur. The camp owner and counselors are murdered one-by-one by an unseen killer. Could he or she be the same person who killed the two camp counselors in 1958? Everything climaxes with the final counselor coming face-to-face with the killer.'), ('Carrie', 'images/carrie.jpeg', 'The story of Carrie White, a girl brought up, almost in isolation, by her domineering, religious mother Margaret. After an embarrassing incident in the showers causes her classmates to tease Carrie ruthlessly, her teacher Miss Collins disciplines them severely. However, one of the students feels sorry for what she did and asks her boyfriend to take Carrie to the senior prom instead of her. Determined to have revenge, the other students hatch a plot against Carrie, which turns horribly wrong when Carrie''s strange mental powers are unleashed during the school prom.'), ('The Thing', 'images/thing.jpeg', 'A US research station, Antarctica, early-winter 1982. The base is suddenly buzzed by a helicopter from the nearby Norwegian research station. They are trying to kill a dog that has escaped from their base. After the destruction of the Norwegian chopper the members of the US team fly to the Norwegian base, only to discover them all dead or missing. They do find the remains of a strange creature the Norwegians burned. The Americans take it to their base and deduce that it is an alien life form. After a while it is apparent that the alien can take over and assimilate into other life forms, including humans, and can spread like a virus. This means that anyone at the base could be inhabited by The Thing, and tensions escalate.'), ('The Bride of Frankenstein', 'images/frankenstein.jpeg', 'In this sequel to Frankenstein (1931) both Henry Frankenstein and his monster have survived. The monster, thought to be dead by the local villagers, is found out when he attempts to save a young girl from drowning. He''s taken into custody but escapes into the woods, where he meets a blind man who enchants him with his violin. Dr. Frankenstein meanwhile is forced to work with the mad Dr. Pretorius who has also been experimenting with the creation of life. When the monster eventually returns home, Frankenstein and Pretorius create a woman to be his friend, but her rejection of him leads to disaster.');

INSERT INTO "movies_genres" ("movie_id", "genre_id")
VALUES 
(1,14),(1,15),    		-- The Shining
(2,14),(2,16),          -- Halloween
(3,14),(3,15),          -- IT
(4,15),(4,16),          -- Scream
(5,14),(5,16),          -- Friday the 13th
(6,14),(6,15),          -- Carrie
(7,11),(7,14),(7,15),	-- The Thing
(8,14),(8,15);			-- The Bride of Frankenstein

--------[ DATA! GIVEN TO US ]---------

-- starter movies
INSERT INTO "movies" ("title", "poster", "description")
VALUES 
('Avatar', 'images/avatar.jpeg', 'Avatar (marketed as James Cameron''s Avatar) is a 2009 American epic science fiction film directed, written, produced, and co-edited by James Cameron, and stars Sam Worthington, Zoe Saldana, Stephen Lang, Michelle Rodriguez, and Sigourney Weaver. The film is set in the mid-22nd century, when humans are colonizing Pandora, a lush habitable moon of a gas giant in the Alpha Centauri star system, in order to mine the mineral unobtanium, a room-temperature superconductor. The expansion of the mining colony threatens the continued existence of a local tribe of Na''vi – a humanoid species indigenous to Pandora. The film''s title refers to a genetically engineered Na''vi body operated from the brain of a remotely located human that is used to interact with the natives of Pandora.'),
('Beauty and the Beast', 'images/beauty-and-the-beast.jpg', 'Beauty and the Beast is a 2017 American musical romantic fantasy film directed by Bill Condon from a screenplay written by Stephen Chbosky and Evan Spiliotopoulos. Co-produced by Walt Disney Pictures and Mandeville Films, it was filmed in the UK with predominantly British principal actors. The film is a live-action remake of Disney''s 1991 animated film of the same name, itself an adaptation of Jeanne-Marie Leprince de Beaumont''s 18th-century fairy tale. The film features an ensemble cast that includes Emma Watson and Dan Stevens as the eponymous characters with Luke Evans, Kevin Kline, Josh Gad, Ewan McGregor, Stanley Tucci, Audra McDonald, Gugu Mbatha-Raw, Ian McKellen, and Emma Thompson in supporting roles.'),
('Captain Marvel', 'images/captain-marvel.jpg', 'Captain Marvel is a 2019 American superhero film based on the Marvel Comics character Carol Danvers. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the twenty-first film in the Marvel Cinematic Universe (MCU). The film is written and directed by Anna Boden and Ryan Fleck, with Geneva Robertson-Dworet also contributing to the screenplay. Brie Larson stars as Danvers, alongside Samuel L. Jackson, Ben Mendelsohn, Djimon Hounsou, Lee Pace, Lashana Lynch, Gemma Chan, Annette Bening, Clark Gregg, and Jude Law. Set in 1995, the story follows Danvers as she becomes Captain Marvel after Earth is caught in the center of a galactic conflict between two alien civilizations.'),
('Finding Nemo', 'images/finding-nemo.jpg', 'Finding Nemo is a 2003 American computer-animated adventure film produced by Pixar Animation Studios and released by Walt Disney Pictures. Written and directed by Andrew Stanton with co-direction by Lee Unkrich, the film stars the voices of Albert Brooks, Ellen DeGeneres, Alexander Gould, and Willem Dafoe. It tells the story of the overprotective ocellaris clownfish named Marlin who, along with a regal blue tang named Dory, searches for his abducted son Nemo all the way to Sydney Harbour. Along the way, Marlin learns to take risks and comes to terms with Nemo taking care of himself.'),
('Gone Girl', 'images/gone-girl.jpg', 'Gone Girl is a 2014 American psychological thriller film directed by David Fincher and written by Gillian Flynn, based on her popular 2012 novel of the same title. The film stars Ben Affleck, Rosamund Pike, Neil Patrick Harris, and Tyler Perry. Set in Missouri, the story begins as a mystery that follows the events surrounding Nick Dunne (Affleck), who becomes the primary suspect in the sudden disappearance of his wife Amy (Pike).'),
('The Double Life of Véronique', 'images/double-life.jpg', 'Véronique (Irène Jacob) is a beautiful young French woman who aspires to be a renowned singer; Weronika (also Jacob) lives in Poland, has a similar career goal and looks identical to Véronique, though the two are not related. The film follows both women as they contend with the ups and downs of their individual lives, with Véronique embarking on an unusual romance with Alexandre Fabbri (Philippe Volter), a puppeteer who may be able to help her with her existential issues.'),
('James Bond: Goldfinger', 'images/james-bond.jpg', 'Goldfinger is a 1964 British spy film and the third installment in the James Bond series produced by Eon Productions, starring Sean Connery as the fictional MI6 agent James Bond. It is based on the novel of the same name by Ian Fleming. The film also stars Honor Blackman as Bond girl Pussy Galore and Gert Fröbe as the title character Auric Goldfinger, along with Shirley Eaton as the iconic Bond girl Jill Masterson. Goldfinger was produced by Albert R. Broccoli and Harry Saltzman and was the first of four Bond films directed by Guy Hamilton.'),
('Life of Pi', 'images/life-of-pi.jpeg', 'Life of Pi is a 2012 survival drama film based on Yann Martel''s 2001 novel of the same name. Directed by Ang Lee, the film''s adapted screenplay was written by David Magee, and it stars Suraj Sharma, Irrfan Khan, Rafe Spall, Tabu Hashmi, Adil Hussain, and Gérard Depardieu. The storyline revolves around an Indian man named "Pi" Patel, telling a novelist about his life story, and how at 16 he survives a shipwreck and is adrift in the Pacific Ocean on a lifeboat with a Bengal tiger. The film had its worldwide premiere as the opening film of the 51st New York Film Festival at both the Walter Reade Theater and Alice Tully Hall in New York City on September 28, 2012.'),
('Monsters, Inc.', 'images/monsters-inc.jpg', 'Monsters, Inc. is a 2001 American computer-animated comedy film produced by Pixar Animation Studios and distributed by Walt Disney Pictures. Featuring the voices of John Goodman, Billy Crystal, Steve Buscemi, James Coburn, and Jennifer Tilly, the film was directed by Pete Docter in his directorial debut, and executive produced by John Lasseter and Andrew Stanton. The film centers on two monsters – James P. "Sulley" Sullivan and his one-eyed partner and best friend Mike Wazowski – employed at the titular energy-producing factory Monsters, Inc, which generates power by scaring human children. The monster world believes that children are toxic, and when a small child enters the factory, Sulley and Mike must return her home before it is too late.'),
('Star Wars: The Last Jedi', 'images/star-wars.jpg', 'Star Wars: The Last Jedi (also known as Star Wars: Episode VIII – The Last Jedi) is a 2017 American epic space-opera film written and directed by Rian Johnson. It is the second installment of the Star Wars sequel trilogy, following The Force Awakens (2015), and the eighth episode of the main Star Wars film franchise. It was produced by Lucasfilm and distributed by Walt Disney Studios Motion Pictures. The film''s ensemble cast includes Mark Hamill, Carrie Fisher, Adam Driver, Daisy Ridley, John Boyega, Oscar Isaac, Andy Serkis, Lupita Nyong''o, Domhnall Gleeson, Anthony Daniels, Gwendoline Christie, and Frank Oz in returning roles, with Kelly Marie Tran, Laura Dern and Benicio del Toro joining the cast. It features the first posthumous film performance by Fisher, who died in December 2016, and the film is dedicated to her memory. The plot follows Rey as she receives Jedi training from Luke Skywalker, in hopes of turning the tide for the Resistance in the fight against Kylo Ren and the First Order, while General Leia Organa, Finn, and Poe Dameron attempt to escape a First Order attack on the dwindling Resistance fleet.'),
('The Martian', 'images/the-martian.jpg', 'The Martian is a 2015 science fiction film directed by Ridley Scott and starring Matt Damon adapted from the novel of the same name by Andy Weir. The film depicts an astronaut''s lone struggle to survive on Mars after being left behind, and efforts to rescue him, and bring him home to Earth. It also stars Jessica Chastain, Kristen Wiig, Jeff Daniels, Michael Peña, Kate Mara, Sean Bean, Sebastian Stan, Donald Glover, Aksel Hennie, and Chiwetel Ejiofor.'),
('The Social Network', 'images/the-social-network.jpg', 'The Social Network is a 2010 American biographical drama film directed by David Fincher and written by Aaron Sorkin. Adapted from Ben Mezrich''s 2009 book The Accidental Billionaires: The Founding of Facebook, a Tale of Sex, Money, Genius and Betrayal, the film portrays the founding of social networking website Facebook and the resulting lawsuits. It stars Jesse Eisenberg as founder Mark Zuckerberg, along with Andrew Garfield as Eduardo Saverin, Justin Timberlake as Sean Parker, Armie Hammer as Cameron and Tyler Winklevoss, and Max Minghella as Divya Narendra. Neither Zuckerberg nor any other Facebook staff were involved with the project, although Saverin was a consultant for Mezrich''s book. The film was released in the United States by Columbia Pictures on October 1, 2010.'),
('Titanic', 'images/titanic.jpg', 'Titanic is a 1997 American epic romance and disaster film directed, written, co-produced, and co-edited by James Cameron. A fictionalized account of the sinking of the RMS Titanic, it stars Leonardo DiCaprio and Kate Winslet as members of different social classes who fall in love aboard the ship during its ill-fated maiden voyage.'),
('Toy Story', 'images/toy-story.jpg', 'Toy Story is a 1995 American computer-animated adventure comedy film produced by Pixar Animation Studios and released by Walt Disney Pictures. The feature-film directorial debut of John Lasseter, it was the first feature-length film to be entirely computer-animated, as well as the first feature film from Pixar. The screenplay was written by Joss Whedon, Andrew Stanton, Joel Cohen, and Alec Sokolow from a story by Lasseter, Stanton, Pete Docter, and Joe Ranft. The film features music by Randy Newman, and was executive-produced by Steve Jobs and Edwin Catmull. The film features the voices of Tom Hanks, Tim Allen, Don Rickles, Wallace Shawn, John Ratzenberger, Jim Varney, Annie Potts, R. Lee Ermey, John Morris, Laurie Metcalf, and Erik von Detten. Taking place in a world where anthropomorphic toys come to life when humans are not present, its plot focuses on the relationship between an old-fashioned pull-string cowboy doll named Woody and an astronaut action figure, Buzz Lightyear, as they evolve from rivals competing for the affections of their owner Andy Davis to friends who work together to be reunited with him after being separated.');

-- starter genres
INSERT INTO "genres" ("name")
VALUES 
('Adventure'),
('Animated'),
('Biographical'),
('Comedy'),
('Disaster'),
('Drama'),
('Epic'),
('Fantasy'),
('Musical'),
('Romantic'),         --10
('Science Fiction'),  --11
('Space-Opera'),      --12
('Superhero');        --13


-- starter movies and genres data
INSERT INTO "movies_genres" ("movie_id", "genre_id")
VALUES 
(1,1), (1,3), (1,4),      -- Avatar
(2,1), (2,11), (2,12),    -- Beauty
(3,3),                    -- Cpt Marvel
(4,4), (4,7),             -- Nemo
(5,3),                    -- Gone Girl
(6,12),                   -- Véronique
(7,9),(7,2),              -- Bond
(8,4),                    -- Pi
(9,4),                    -- Monsters
(10,4),                   -- Star Wars
(11,6), (11,11),          -- Martian
(12,8), (12,9),           -- Social Net
(13,4), (13,10), (13,6),  -- Titanic
(14,3), (14,2), (14,4);   -- Toy Story
