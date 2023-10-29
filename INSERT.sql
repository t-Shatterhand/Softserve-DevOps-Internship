
INSERT INTO public."Countries" ("Name", "Description", "Language")
VALUES 
    ('United States', 'A country in North America known for its diverse culture and technological advancements.', 'English'),
    ('United Kingdom', 'An island nation in Europe known for its rich history and cultural heritage.', 'English'),
    ('France', 'A European country famous for its art, cuisine, and fashion.', 'French'),
    ('Germany', 'A country in Central Europe known for its engineering and automotive industries.', 'German'),
    ('Japan', 'An Asian country known for its technology, traditional arts, and cuisine.', 'Japanese'),
    ('China', 'A populous country in East Asia known for its ancient civilization and rapid economic growth.', 'Chinese'),
    ('India', 'A country in South Asia known for its diverse culture, history, and cuisine.', 'Hindi'),
    ('Brazil', 'A country in South America known for its diverse ecosystems, samba, and soccer.', 'Portuguese'),
    ('Australia', 'A country in Oceania known for its stunning landscapes and unique wildlife.', 'English'),
    ('South Africa', 'A country in Africa known for its cultural diversity, wildlife, and history.', 'Afrikaans');

INSERT INTO public."Countries" ("Name", "Description", "Language")
VALUES 
    ('Poland', 'A European country in Central Europe known for its rich history, medieval architecture, and pierogi.', 'Polish'),
    ('Czech Republic', 'A European country in Central Europe known for its historical castles, beer, and beautiful landscapes.', 'Czech'),
    ('Hungary', 'A European country in Central Europe known for its thermal baths, paprika, and unique cuisine.', 'Hungarian'),
    ('Slovakia', 'A European country in Central Europe known for its mountains, caves, and folk traditions.', 'Slovak'),
    ('Estonia', 'A Northern European country known for its digital society, forests, and Baltic Sea coastline.', 'Estonian'),
    ('Latvia', 'A Northern European country known for its diverse culture, forests, and beautiful coastline.', 'Latvian'),
    ('Lithuania', 'A Baltic country in Northern Europe known for its historic architecture, amber, and music festivals.', 'Lithuanian'),
    ('Romania', 'A European country in Southeastern Europe known for its castles, folklore, and beautiful countryside.', 'Romanian'),
    ('Bulgaria', 'A Southeastern European country known for its diverse landscapes, ancient ruins, and Black Sea coastline.', 'Bulgarian'),
    ('Croatia', 'A Southeastern European country known for its Adriatic Sea coast, historic cities, and cuisine.', 'Croatian'),
    ('Slovenia', 'A European country in Central Europe known for its alpine scenery, lakes, and outdoor activities.', 'Slovenian'),
    ('Serbia', 'A Southeastern European country known for its history, hospitality, and vibrant nightlife.', 'Serbian'),
    ('Bosnia and Herzegovina', 'A Southeastern European country known for its diverse cultures, scenic landscapes, and Ottoman architecture.', 'Bosnian, Croatian, Serbian'),
    ('Montenegro', 'A Southeastern European country known for its Adriatic coast, mountains, and medieval villages.', 'Montengrin'),
    ('Albania', 'A Southeastern European country known for its Adriatic and Ionian coastlines, historic sites, and vibrant culture.', 'Albanian'),
    ('North Macedonia', 'A Southeastern European country known for its diverse culture, mountains, and historic landmarks.', 'Macedonian'),
    ('Moldova', 'An Eastern European country known for its wine, monasteries, and diverse landscapes.', 'Romanian'),
    ('Ukraine', 'An Eastern European country known for its diverse culture, historic cities, and vast steppes.', 'Ukrainian');

INSERT INTO public."Countries" ("Name", "Description", "Language")
VALUES 
    ('Argentina', 'A South American country known for its tango, beef, and vibrant culture.', 'Spanish'),
    ('Nigeria', 'A West African country known for its diverse cultures, Nollywood film industry, and vibrant cities.', 'English'),
    ('Egypt', 'A North African country known for its ancient pyramids, Nile River, and historical landmarks.', 'Arabic'),
    ('Kenya', 'An East African country known for its wildlife, stunning landscapes, and Maasai culture.', 'English'),
    ('New Zealand', 'A country in Oceania known for its breathtaking scenery, Maori culture, and adventure sports.', 'English'),
    ('Mexico', 'A North American country known for its rich history, cuisine, and vibrant traditions.', 'Spanish'),
    ('Peru', 'A South American country known for its ancient ruins, Andean culture, and ceviche.', 'Spanish'),
    ('Saudi Arabia', 'A Middle Eastern country known for its desert landscapes, historic sites, and oil reserves.', 'Arabic'),
    ('South Korea', 'An East Asian country known for its technology, K-pop, and traditional palaces.', 'Korean'),
    ('Thailand', 'A Southeast Asian country known for its tropical beaches, temples, and street food.', 'Thai'),
    ('Vietnam', 'A Southeast Asian country known for its ancient history, delicious cuisine, and beautiful landscapes.', 'Vietnamese'),
	('Netherlands', 'A European country known for its flat landscape, windmills, and tulip fields.', 'Dutch'),
	('Italy', 'A European country known for its rich history, art, and cuisine.', 'Italian');
	
	
INSERT INTO public."Labels" ("Name", "Description", "Country_ID")
VALUES 
    ('Universal Music Group', 'One of the largest music record labels in the world, with a diverse roster of artists across various genres.', 1),
    ('Sony Music Entertainment', 'A global music conglomerate with a wide range of artists and labels under its umbrella.', 1),
    ('Warner Music Group', 'A major record label known for its diverse portfolio of artists and labels.', 1),
    ('EMI Group', 'A historic music label with a rich legacy, now part of the Universal Music Group.', 2),
    ('Atlantic Records', 'A prominent record label known for its focus on rock, pop, and urban genres.', 1),
    ('Capitol Records', 'A major record label known for its iconic building in Hollywood and diverse artist roster.', 1),
    ('Columbia Records', 'A renowned record label with a long history and a broad spectrum of artists and genres.', 1),
    ('Island Records', 'A record label known for its focus on reggae, pop, and rock music.', 2),
    ('Def Jam Recordings', 'A prominent record label specializing in hip-hop, founded by Russell Simmons and Rick Rubin.', 1),
    ('Republic Records', 'A label known for its diverse artist roster and successful marketing strategies.', 1);

INSERT INTO public."Labels" ("Name", "Description", "Country_ID")
VALUES 
    ('Polydor Records', 'A major record label based in the United Kingdom known for its diverse artist roster and historic contributions to the music industry.', 2),
    ('EMI Italy', 'A prominent record label in Italy known for supporting Italian and international artists across various genres.', 41),
    ('Virgin Records', 'A well-known record label founded in the UK, recognized for its diverse range of artists and musical styles.', 2),
    ('Parlophone Records', 'A British record label known for its historic contributions to pop and rock music, now part of Warner Music Group.', 2),
    ('Universal Music France', 'A leading record label in France, representing a wide array of French and international artists.', 3),
    ('EMI Germany', 'A significant record label in Germany with a focus on promoting both German and international musical talent.', 4),
    ('Sony Music Italy', 'A major record label in Italy known for its diverse roster of artists and its influence on the Italian music scene.', 41),
    ('Nuclear Blast', 'A well-known German record label specializing in heavy metal and hard rock music, with international acclaim.', 4),
    ('RCA Records', 'A historic record label with a presence across Europe, known for its contributions to various music genres.', 2),
    ('Spinnin'' Records', 'A Dutch record label focusing on electronic dance music (EDM) and associated genres, with a global presence.', 40);
	
INSERT INTO public."Albums" ("Name", "Year", "Track_Num", "Description", "Label_ID")
VALUES 
	('Thriller', 1982, 9, 'Thriller is the sixth studio album by American singer Michael Jackson, released on November 30, 1982.', 8),
    ('Back in Black', 1980, 10, 'Back in Black is the seventh studio album by Australian rock band AC/DC, released on 25 July 1980.', 10),
    ('The Dark Side of the Moon', 1973, 10, 'The Dark Side of the Moon is the eighth studio album by English rock band Pink Floyd, released on 1 March 1973.', 5),
    ('Rumors', 1977, 11, 'Rumors is the eleventh studio album by American rock band Fleetwood Mac, released on 4 February 1977.', 3),
    ('Abbey Road', 1969, 17, 'Abbey Road is the eleventh studio album by English rock band the Beatles, released on 26 September 1969.', 8),
    ('The Wall', 1979, 26, 'The Wall is the eleventh studio album by English rock band Pink Floyd, released on 30 November 1979.', 6),
    ('Back to Black', 2006, 11, 'Back to Black is the second and final studio album by English singer Amy Winehouse, released on 27 October 2006.', 4),
    ('Sgt. Pepper''s Lonely Hearts Club Band', 1967, 13, 'Sgt. Pepper''s Lonely Hearts Club Band is the eighth studio album by the English rock band the Beatles, released on 26 May 1967.', 5),
    ('A Night at the Opera', 1975, 12, 'A Night at the Opera is the fourth studio album by the British rock band Queen, released on 21 November 1975.', 3),
    ('Hotel California', 1976, 9, 'Hotel California is the fifth studio album by American rock band the Eagles, released on December 8, 1976.', 2),
    ('Born to Die', 2012, 15, 'Born to Die is the second studio album by American singer Lana Del Rey, released on January 27, 2012.', 1),
    ('Legend', 1984, 14, 'Legend is a compilation album by Bob Marley and the Wailers, released on 8 May 1984.', 1),
    ('Raising Hell', 1986, 12, 'Raising Hell is the third studio album by American hip hop group Run-DMC, released on May 15, 1986.', 2),
    ('Goodbye Yellow Brick Road', 1973, 17, 'Goodbye Yellow Brick Road is the seventh studio album by English singer Elton John, released on 5 October 1973.', 3),
    ('Darkness on the Edge of Town', 1978, 10, 'Darkness on the Edge of Town is the fourth studio album by Bruce Springsteen, released on June 2, 1978.', 6),
    ('Ride the Lightning', 1984, 8, 'Ride the Lightning is the second studio album by American heavy metal band Metallica, released on July 27, 1984.', 5),
    ('Court and Spark', 1974, 11, 'Court and Spark is the sixth studio album by Canadian singer-songwriter Joni Mitchell, released on January 1, 1974.', 6),
    ('Purple Rain', 1984, 9, 'Purple Rain is the sixth studio album by American recording artist Prince, released on June 25, 1984.', 3),
    ('Hunky Dory', 1971, 11, 'Hunky Dory is the fourth studio album by English musician David Bowie, released on 17 December 1971.', 7),
    ('The Queen Is Dead', 1986, 10, 'The Queen Is Dead is the third studio album by English rock band the Smiths, released on 16 June 1986.', 9);

UNFINISHED:
INSERT INTO public."Tracks" ("Name", "Duration", "Text", "Year", "Album_ID")
VALUES 
	('Billie Jean', 293, 'Billie Jean is not my lover.', 1982, 'Thriller'),
    ('You Shook Me All Night Long', 210, 'She was a fast machine.', 1980, 'Back in Black'),
    ('Money', 382, 'Money, get away. Get a good job with good pay and you''re okay.', 1973, 'The Dark Side of the Moon'),
    ('Go Your Own Way', 213, 'Loving you isn''t the right thing to do.', 1977, 'Rumors'),
    ('Come Together', 259, 'Here come old flat-top, he come groovin'' up slowly.', 1969, 'Abbey Road'),
    ('Comfortably Numb', 384, 'Hello? Is there anybody in there? Just nod if you can hear me.', 1979, 'The Wall'),
    ('Rehab', 212, 'They tried to make me go to rehab, I said, ''No, no, no.''', 2006, 'Back to Black'),
    ('Lucy in the Sky with Diamonds', 205, 'Picture yourself in a boat on a river with tangerine trees and marmalade skies.', 1967, 'Sgt. Pepper''s Lonely Hearts Club Band'),
    ('Bohemian Rhapsody', 367, 'Is this the real life? Is this just fantasy?', 1975, 'A Night at the Opera'),
    ('Hotel California', 391, 'On a dark desert highway, cool wind in my hair.', 1976, 'Hotel California'),
    ('Summertime Sadness', 281, 'Kiss me hard before you go.', 2012, 'Born to Die'),
    ('Redemption Song', 213, 'Old pirates, yes, they rob I. Sold I to the merchant ships.', 1984, 'Legend'),
    ('Walk This Way', 307, 'Backstroke lover, always hidin neath the covers.', 1975, 'Toys in the Attic'),
    ('Rocket Man', 290, 'She packed my bags last night pre-flight. Zero hour, nine a.m.', 1972, 'Honky Château'),
    ('Dancing in the Dark', 251, 'I get up in the evening and I ain''t got nothing to say.', 1984, 'Born in the U.S.A.'),
    ('Master of Puppets', 515, 'End of passion play, crumbling away. I''m your source of self-destruction.', 1986, 'Master of Puppets'),
    ('Help Me', 187, 'Help me, I think I''m falling. In love too fast.', 1974, 'Court and Spark'),
    ('Sweet Child o'' Mine', 356, 'She''s got a smile that it seems to me reminds me of childhood memories.', 1987, 'Appetite for Destruction'),
    ('Imagine', 185, 'Imagine there''s no heaven. It''s easy if you try.', 1971, 'Imagine'),
    ('There Is a Light That Never Goes Out', 213, 'Take me out tonight. Where there''s music and there''s people who are young and alive.', 1986, 'The Queen Is Dead');	