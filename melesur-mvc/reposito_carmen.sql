-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 01-03-2019 a las 20:00:00
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_examen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `idg` int(11) NOT NULL,
  `genero` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`idg`, `genero`) VALUES
(1, 'Acción'),
(2, 'Ciencia Ficción'),
(3, 'Comedia'),
(4, 'Drama'),
(5, 'Fantasía'),
(6, 'Melodrama'),
(7, 'Musical'),
(8, 'Romance'),
(9, 'Suspense'),
(10, 'Terror');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pertenece`
--

CREATE TABLE `pertenece` (
  `ids` int(11) NOT NULL,
  `idg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pertenece`
--

INSERT INTO `pertenece` (`ids`, `idg`) VALUES
(1, 3),
(1, 4),
(2, 2),
(2, 10),
(3, 1),
(3, 5),
(4, 3),
(5, 3),
(6, 4),
(6, 7),
(7, 1),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(9, 4),
(10, 1),
(10, 4),
(11, 1),
(11, 4),
(12, 1),
(12, 4),
(13, 1),
(13, 4),
(14, 1),
(14, 4),
(15, 3),
(16, 2),
(17, 3),
(17, 4),
(17, 5),
(18, 3),
(18, 4),
(19, 2),
(19, 3),
(19, 10),
(20, 1),
(20, 4),
(21, 4),
(21, 10),
(22, 4),
(22, 10),
(23, 1),
(23, 5),
(23, 9),
(24, 10),
(25, 3),
(26, 3),
(27, 1),
(27, 2),
(27, 10),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 9),
(31, 1),
(31, 9),
(32, 4),
(33, 4),
(34, 10),
(35, 6),
(36, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie`
--

CREATE TABLE `serie` (
  `ids` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `temporadas` tinyint(4) NOT NULL,
  `puntuacion` float(10,2) NOT NULL,
  `argumento` text,
  `plataforma` varchar(100) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `serie`
--

INSERT INTO `serie` (`ids`, `titulo`, `fecha`, `temporadas`, `puntuacion`, `argumento`, `plataforma`, `poster`) VALUES
(1, 'La maravillosa Sra. Maisel', '2017-03-17', 2, 8.70, 'Set in 1950s Manhattan, The Marvelous Mrs. Maisel is a 60-minute dramedy that centers on Miriam \"Midge\" Maisel, a sunny, energetic, sharp, Jewish girl who had her life mapped out: go to college, find a husband, have kids, and throw the best Yom Kippur break-fasts in town. Soon enough, she finds herself exactly where she had hoped to be, living happily with her husband and two children in the Upper West Side. A woman of her time, Midge is a cheerleader wife to a man who dreams of a stand-up comedy career, but her perfect life is upended when her husband suddenly leaves her for another woman. Utterly unprepared, Midge is left with no choice but to reevaluate her life. When she accidentally stumbles onto the stage at a nightclub, she discovers her own comedic skills and decides to use this newfound talent to help her reinvent her life. The series follows the trajectory of Midge\'s journey as she pursues a career in the male-dominated, stand-up comedy profession, and transforms from uptown...', 'Amazon Prime Video', 'https://m.media-amazon.com/images/M/MV5BNTBlNWE5NjEtMTFjOC00MzZmLTkwNWQtNzU0MzM0MTVjNTM5XkEyXkFqcGdeQXVyNjkwNzEwMzU@._V1_.jpg'),
(2, 'American Gods', '2017-04-30', 2, 8.00, 'Shadow is a man with a past. But now he wants nothing more than to live a quiet life with his wife and stay out of trouble. Until he learns that she\'s been killed in a terrible accident. Flying home for the funeral, as a violent storm rocks the plane, he is greeted by a strange man in the seat next to him. The man calls himself Mr. Wednesday, and he knows more about Shadow than is possible. He warns Shadow that a far bigger storm is coming. And from that moment on, nothing will ever be the same', 'Amazon Prime Video', 'https://m.media-amazon.com/images/M/MV5BOTUwMTI1NTIzMV5BMl5BanBnXkFtZTgwNjE1MDA2NzM@._V1_SY1000_CR0,0,666,1000_AL_.jpg'),
(3, 'Grimm', '2011-10-28', 6, 7.80, 'Portland detective, Nick Burkhardt, has seen some gruesome crime scenes, but nothing prepares him for the strange visions he begins seeing: seemingly regular people momentarily transforming into hideous monsters. A visit from his only living relative reveals the truth. Nick has inherited the ability to see supernatural creatures, and as a \"Grimm,\" he is tasked with keeping the balance between mankind and the mythological. A reformed \"Big Bad Wolf\" becomes his greatest (and also reluctant) ally and confidant. It\'s not long before his work as a policeman leads Nick to the criminals he once thought were only found in fairy tales.', 'Amazon Prime Video', 'https://m.media-amazon.com/images/M/MV5BMTkyODg2MzQwMV5BMl5BanBnXkFtZTgwNTA2MjE1MDI@._V1_.jpg'),
(4, 'Parks and Recreation', '2004-04-09', 7, 8.40, 'Leslie Knope, a mid-level bureaucrat in an Indiana Parks and Recreation Department, hopes to beautify her town (and boost her own career) by helping local nurse Ann Perkins turn an abandoned construction site into a community park. However, what should be a fairly simple project is stymied at every turn by oafish bureaucrats, selfish neighbors, governmental red tape, and a myriad of other challenges. Leslie\'s colleague Tom Haverford, who delights in exploiting his position for personal gain, is as likely to undermine her efforts as to help her, while her boss, Ron Swanson, is adamantly opposed to government in any form, even though he\'s a bureaucrat', 'Amazon Prime Video', 'https://m.media-amazon.com/images/M/MV5BMjA5MjUxNDgwNF5BMl5BanBnXkFtZTgwMDI5NjMwNDE@._V1_.jpg'),
(5, 'Community', '2009-09-17', 6, 8.50, 'A former lawyer attends a community college when it is discovered he faked his Bachelor\'s degree. In an attempt to get with a student in his Spanish class, he forms a Spanish study group. To his surprise, more people attend the study group and the group of misfits form an unlikely community.', 'Amazon Prime Video', 'https://m.media-amazon.com/images/M/MV5BMTQ2Njk2MzY2M15BMl5BanBnXkFtZTgwMDkxODg3MDE@._V1_.jpg'),
(6, 'Mozart in the Jungle', '2015-05-25', 4, 8.20, 'Love, money, ambition and music intertwine in Mozart in the Jungle, a half hour comedic drama that looks at finding yourself and finding love while conquering New York City. A brash new maestro Rodrigo stirs up the New York Symphony as young oboist Hailey hopes for her big chance.', 'Amazon Prime Video', 'https://m.media-amazon.com/images/M/MV5BMjIzNTYyOTkyOV5BMl5BanBnXkFtZTgwNzk5NzYzNDM@._V1_SY1000_CR0,0,675,1000_AL_.jpg'),
(7, 'Tom Clancy\'s Jack Ryan', '2018-08-31', 1, 8.20, 'When CIA analyst Jack Ryan stumbles upon a suspicious series of bank transfers his search for answers pulls him from the safety of his desk job and catapults him into a deadly game of cat and mouse throughout Europe and the Middle East, with a rising terrorist figurehead preparing for a massive attack against the US and her allies', 'Amazon Prime Video', 'https://m.media-amazon.com/images/M/MV5BMjIzMDcyMDcxOV5BMl5BanBnXkFtZTgwMTg1NDk2NTM@._V1_.jpg'),
(8, 'The Tick', '2017-08-25', 2, 7.40, 'In a world where superheroes have been real for decades, an accountant with no superpowers comes to realize his city is owned by a super villain. As he struggles to uncover this conspiracy, he falls in league with a strange blue superhero.\r\n\r\n', 'Amazon Prime Video', 'https://m.media-amazon.com/images/M/MV5BMTk5Nzc0Mzc5MV5BMl5BanBnXkFtZTgwNzE5NzI1NzM@._V1_.jpg'),
(9, 'The Umbrella Academy', '2019-02-15', 1, 10.00, 'n the same day in October 1989, forty-three infants are inexplicably born to random, unconnected women who showed no signs of pregnancy the day before. Seven are adopted by Sir Reginald Hargreeves, a billionaire industrialist, who creates The Umbrella Academy and prepares his \"children\" to save the world. But not everything went according to plan. In their teenage years, the family fractured and the team disbanded. Now, the six surviving thirty-something members reunite upon the news of Hargreeves\' passing. Luther, Diego, Allison, Klaus, Vanya and Number Five work together to solve a mystery surrounding their father\'s death. But the estranged family once again begins to come apart due to their divergent personalities and abilities, not to mention the imminent threat of a global apocalypse.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BNTFhOTk1NTgtYWM1ZS00NWI1LTgzYzAtYmE5MjZiMDE0NzlhXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,675,1000_AL_.jpg'),
(10, 'Daredevil', '2015-10-20', 3, 10.00, 'As a child Matt Murdock was blinded by a chemical spill in a freak accident. Instead of limiting him it gave him superhuman senses that enabled him to see the world in a unique and powerful way. Now he uses these powers to deliver justice, not only as a lawyer in his own law firm, but also as vigilante at night, stalking the streets of Hell\'s Kitchen as Daredevil, the man without fear', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BODcwOTg2MDE3NF5BMl5BanBnXkFtZTgwNTUyNTY1NjM@._V1_SY1000_CR0,0,675,1000_AL_.jpg'),
(11, 'Jessica Jones', '2015-11-20', 2, 8.00, 'Ever since her short-lived stint as a superhero ended in tragedy, Jessica Jones has been rebuilding her personal life and career as a hot-tempered, sardonic private detective in Hell\'s Kitchen, New York City. Plagued by self-loathing and a wicked case of PTSD, Jessica battles demons from within and without, using her extraordinary abilities as an unlikely champion for those in need. Especially if they\'re willing to cut her a check.', 'Neflix', 'https://m.media-amazon.com/images/M/MV5BMTkxMDk5NTQ3MF5BMl5BanBnXkFtZTgwNzg3ODU3NDM@._V1_SY1000_CR0,0,674,1000_AL_.jpg'),
(12, 'Luke Cage', '2016-09-30', 2, 7.40, 'After a sabotaged experiment leaves him with super strength and unbreakable skin, Luke Cage becomes a fugitive trying to rebuild his life in modern day Harlem, New York City. But he is soon pulled out of the shadows and must fight a battle for the heart of his city - forcing him to confront a past he had tried to bury', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BMjAxOTM3NjEwMV5BMl5BanBnXkFtZTgwNTkyOTY4NTM@._V1_SY1000_CR0,0,675,1000_AL_.jpg'),
(13, 'Iron Fist', '2017-03-17', 2, 6.60, 'Danny Rand returns to New York City after being missing for years, trying to reconnect with his past and his family legacy. He fights against the criminal element corrupting his world around him with his incredible kung-fu mastery and ability to summon the awesome power of the fiery Iron Fist.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BMjI5Mjg1NDcyOV5BMl5BanBnXkFtZTgwMjAxOTQ5MTI@._V1_SY1000_CR0,0,674,1000_AL_.jpg'),
(14, 'The Defenders', '2017-08-18', 2, 7.40, '\"Marvel\'s The Defenders\" follows Daredevil, Jessica Jones, Luke Cage and Iron Fist. A quartet of singular heroes with one common goal - to save New York City. This is the story of four solitary figures, burdened with their own personal challenges, who realize they just might be stronger when teamed together.', '', 'https://m.media-amazon.com/images/M/MV5BNWU4NmY3MTMtMTBmMi00NjFjLTkwMmItYWZhZWUwNDg5M2ExXkEyXkFqcGdeQXVyNDUyOTg3Njg@._V1_SY1000_CR0,0,674,1000_AL_.jpg'),
(15, 'Friends', '1997-11-27', 10, 9.00, 'Rachel Green, Ross Geller, Monica Geller, Joey Tribbiani, Chandler Bing and Phoebe Buffay are six 20 something year-olds, living off of one another in the heart of New York City. Over the course of ten years, this average group of buddies goes through massive mayhem, family trouble, past and future romances, fights, laughs, tears and surprises as they learn what it really means to be a friend.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BNDVkYjU0MzctMWRmZi00NTkxLTgwZWEtOWVhYjZlYjllYmU4XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg'),
(16, 'Star Trek Discovery', '2017-09-25', 2, 7.40, 'Ten years before Kirk, Spock, and the Enterprise, the USS Discovery discovers new worlds and lifeforms as one Starfleet officer learns to understand all things alien.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BOTg5MzA1MjAwNV5BMl5BanBnXkFtZTgwNzAwMDU5NjM@._V1_SY1000_CR0,0,694,1000_AL_.jpg'),
(17, 'Una serie de catastróficas desdichas', '2017-01-13', 3, 8.00, 'After the Baudelaire parents die in a terrible fire, the Baudelaire orphans search for their families secrets and get them and their fortune away from the terrible grasp of the sinister Count Olaf as he moves with them between different guardians in disguise.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BMTYzMjA3OTgxOV5BMl5BanBnXkFtZTgwMjAwMDU5NjM@._V1_SY1000_CR0,0,675,1000_AL_.jpg'),
(18, 'Derry Girls', '2018-12-21', 2, 8.20, 'https://m.media-amazon.com/images/M/MV5BNTNkMzc2NmQtNTFjOS00ZmY2LWJmZjktMmZlOGUzZWEyYTFhXkEyXkFqcGdeQXVyMTYzMDM0NTU@._V1_.jpg', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BNTNkMzc2NmQtNTFjOS00ZmY2LWJmZjktMmZlOGUzZWEyYTFhXkEyXkFqcGdeQXVyMTYzMDM0NTU@._V1_.jpg'),
(19, 'Santa Clarita Diet', '2017-02-17', 3, 7.80, 'Sheila and Joel are married real estate agents in Santa Clarita, California. When Sheila dies, their lives take a dark turn.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BMTYxMjA3ODkxN15BMl5BanBnXkFtZTgwMDkzNjk5NDM@._V1_SY1000_CR0,0,674,1000_AL_.jpg'),
(20, 'Glow', '2018-06-29', 3, 8.10, 'A look at the personal and professional lives of a group of women who perform for a wrestling organization in Los Angeles during the 1980s.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BOTA0ODc1MzM3M15BMl5BanBnXkFtZTgwMDM3MTA3NTM@._V1_.jpg'),
(21, 'La maldición de Hill House', '2018-10-12', 2, 10.00, 'Explores a group of siblings who, as children, grew up in what would go on to become the most famous haunted house in the country. Now adults, and forced back together in the face of tragedy, the family must finally confront the ghosts of their past, some of which still lurk in their minds while others may actually be stalking the shadows of Hill House.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BMTU4NzA4MDEwNF5BMl5BanBnXkFtZTgwMTQxODYzNjM@._V1_SY1000_CR0,0,674,1000_AL_.jpg'),
(22, 'Dark', '2017-12-01', 2, 9.00, 'Year 2019. Events take place in a small German town called Winden. Two months ago, Jonas returned to the school with his father committing suicide. A couple of weeks ago when he came back, he learns that a child is lost in the town. Days of searching have remained unsuccessful and the whole town is on the thorn. With the disappearance of one of the children who have gone out to have fun together in order to get away from the tension of their parents, things get mixed up in the town.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BMTUzNjQ2MTY5NV5BMl5BanBnXkFtZTgwOTAzNTQxNDM@._V1_SY1000_CR0,0,674,1000_AL_.jpg'),
(23, 'La orden', '2019-03-07', 1, 6.80, 'Out to avenge his mother\'s death, a college student pledges a secret order and lands in a war between werewolves and practitioners of dark magic.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BMzdlOWM4OWMtNTVjMC00MTk5LWEwODEtMmQ0ZWZkZjJjNzIxXkEyXkFqcGdeQXVyOTc3ODM5NTQ@._V1_.jpg'),
(24, 'Kingdom', '2019-01-25', 1, 8.30, 'While strange rumors about their ill king grip a kingdom, the crown prince becomes their only hope against a mysterious plague overtaking the land.', 'Netflix', 'https://m.media-amazon.com/images/M/MV5BMmMzYzE5NzctZGZmZC00MmVkLTllMWUtZDY3YzIzYWEyMTIxXkEyXkFqcGdeQXVyNTI2MzI4NTU@._V1_SY1000_CR0,0,666,1000_AL_.jpg'),
(25, 'Silicon Valley', '2014-04-07', 6, 8.50, 'In the high-tech gold rush of modern Silicon Valley, the people most qualified to succeed are the least capable of handling success. A comedy partially inspired by Mike Judge\'s own experiences as a Silicon Valley engineer in the late 1980s.', 'HBO', 'https://m.media-amazon.com/images/M/MV5BMTAxNTEyODE5MTNeQTJeQWpwZ15BbWU4MDE3MjM3ODQz._V1_SY1000_CR0,0,675,1000_AL_.jpg'),
(26, 'The Big Bang Theory', '2017-09-25', 11, 8.20, 'Leonard Hofstadter and Sheldon Cooper are both brilliant physicists working at Cal Tech in Pasadena, California. They are colleagues, best friends, and roommates, although in all capacities their relationship is always tested primarily by Sheldon\'s regimented, deeply eccentric, and non-conventional ways. They are also friends with their Cal Tech colleagues mechanical engineer Howard Wolowitz and astrophysicist Rajesh Koothrappali. The foursome spend their time working on their individual work projects, playing video games, watching science-fiction movies, or reading comic books. As they are self-professed nerds, all have little or no luck with women. When Penny, a pretty woman and an aspiring actress from Omaha, moves into the apartment across the hall from Leonard and Sheldon\'s, Leonard has another aspiration in life, namely to get Penny to be his girlfriend.', 'HBO', 'https://m.media-amazon.com/images/M/MV5BY2FmZTY5YTktOWRlYy00NmIyLWE0ZmQtZDg2YjlmMzczZDZiXkEyXkFqcGdeQXVyNjg4NzAyOTA@._V1_SY1000_CR0,0,666,1000_AL_.jpg'),
(27, 'Legión', '2017-02-08', 3, 8.30, 'Legion, based on the Marvel Comics by Chris Claremont and Bill Sienkiewicz, is the story of David Haller (Dan Stevens), a troubled young man who may be more than human. Diagnosed as schizophrenic as a child, David has been in and out of psychiatric hospitals for years. Now in his early 20\'s and free once again, David loses himself in the rhythm of the structured regimen of daily life: breakfast, lunch, dinner, therapy, medications, sleep. David spends the rest of his time in companionable silence alongside his chatterbox friend Lenny (Aubrey Plaza), a fellow patient whose life-long drug and alcohol addiction has done nothing to quell her boundless optimism that her luck is about to change. The pleasant numbness of David\'s routine is completely upended with the arrival of a beautiful and troubled new patient named Syd (Rachel Keller). Inexplicably drawn to one another, David and Syd share a startling encounter, after which David must confront the shocking possibility that the voices he...', 'HBO', 'https://m.media-amazon.com/images/M/MV5BMjQyOTQ3Njc5M15BMl5BanBnXkFtZTgwMzgyNjAxNTM@._V1_.jpg'),
(28, 'The Flash', '2015-07-25', 6, 7.90, 'Barry Allen is a Central City police forensic scientist with a reasonably happy life, despite the childhood trauma of a mysterious red and yellow lightning killing his mother and framing his father. All that changes when a massive particle accelerator accident leads to Barry being struck by lightning in his lab. Coming out of coma nine months later, Barry and his new friends at S.T.A.R labs find that he now has the ability to move at superhuman speed. Furthermore, Barry learns that he is but one of many affected by that event, most of whom are using their powers for evil. Determined to make a difference, Barry dedicates his life to fighting such threats, as The Flash. While he gains allies he never expected, there are also secret forces determined to aid and manipulate him for their own agenda.', 'HBO', 'https://m.media-amazon.com/images/M/MV5BMjI1MDAwNDM4OV5BMl5BanBnXkFtZTgwNjUwNDIxNjM@._V1_SY1000_SX800_AL_.jpg'),
(29, 'Supergirl', '2015-10-25', 5, 6.40, 'Years ago, Krypton was about to explode and Kal-El was sent to Earth to escape that fate. However, his older cousin, Kara, was also intended to accompany the infant as his protector. Unfortunately, Kara was accidentally diverted into the timeless Phantom Zone for years before finally arriving on Earth decades later and found by her cousin who had grown into Superman. Years later, Kara Danvers is a young professional adrift in a thankless job until a fateful crisis ignites a sense of purpose using Kryptonian powers she had long hidden. Inspired, Kara decides to emulate her cousin\'s superheroic ways, only to find her foster sister introducing her to the secret Department of Extra-Normal Operations, dedicated to fighting alien menaces including those Kara inadvertently led to Earth. Now with such help, the Maid of Might takes her place as Earth\'s newest champion with new friends and enemies challenging her world.', 'HBO', 'https://m.media-amazon.com/images/M/MV5BMjE0MzgxNjYzOV5BMl5BanBnXkFtZTgwMzk3NDUyNTM@._V1_.jpg'),
(30, 'Lucifer', '2016-01-25', 4, 9.00, 'Lucifer, bored from his sulking life in hell, comes to live in Los Angeles. While there, he helps humanity with its miseries through his experience and telepathic abilities to bring people\'s deepest desires and thoughts out of them. While meeting with a girl in his nightclub (called Lux), a shootout involving him and the girl leads him to become a LAPD consultant who tries to punish people for their crimes through law and justice', 'HBO', 'https://m.media-amazon.com/images/M/MV5BMjI4MTU0NzE1OF5BMl5BanBnXkFtZTgwODI3NDc0OTE@._V1_SY1000_CR0,0,646,1000_AL_.jpg'),
(31, 'El ilusionista', '2018-03-12', 1, 7.50, 'A superstar magician Cameron Black whose career is ruined by scandal has only one place to turn to practice his art of deception, illusion, and influence, the FBI where he\'ll become the world\'s first consulting illusionist, helping the government solve crimes that defy explanation, and trap criminals and spies by using deception', 'HBO', 'https://m.media-amazon.com/images/M/MV5BN2RlMDVlZTktMjQxNy00YjdjLTlmMWYtNDUwMDZkNjE4ODJmXkEyXkFqcGdeQXVyMjU0OTAwMDc@._V1_SY1000_CR0,0,666,1000_AL_.jpg'),
(32, 'Feud', '2017-03-05', 1, 10.00, 'Tells the story of the legendary rivalry between Joan Crawford (Jessica Lange) and Bette Davis (Susan Sarandon) during their collaboration on the Academy Award®-nominated thriller What Ever Happened to Baby Jane? and after the cameras stopped rolling. The series explores how the two women endured ageism and misogyny while struggling to hang on to success and fame in the twilight of their careers.', 'HBO', 'https://m.media-amazon.com/images/M/MV5BMjA2ODdhY2YtNDAzZi00MDQ5LTljZmYtMjcyZmJiY2YxOWE1L2ltYWdlXkEyXkFqcGdeQXVyNjY5NjM5MjA@._V1_SY1000_CR0,0,685,1000_AL_.jpg'),
(33, 'Gunpowder', '2017-12-19', 1, 6.70, 'British activist Guy Fawkes and a group of provincial English Catholics plan to blow up the House of Lords and kill King James I in the early 17th century.', 'HBO', 'https://m.media-amazon.com/images/M/MV5BMTc4MTI0MDI5OV5BMl5BanBnXkFtZTgwNzczMDYzNDM@._V1_SY1000_CR0,0,674,1000_AL_.jpg'),
(34, 'Heathers: escuela de jóvenes asesinos', '2018-07-11', 1, 5.50, 'TV version of a 1988 black comedy, \'Heathers,\' where an outcast student plots to kill the cool kids.', 'HBO', 'https://m.media-amazon.com/images/M/MV5BMTU4NjMxMzI5Nl5BMl5BanBnXkFtZTgwNzg5NjY4NDM@._V1_SY1000_CR0,0,674,1000_AL_.jpg'),
(35, 'Boardwalk Empire', '2010-12-13', 5, 8.60, 'Set in the Prohibition era of the 1920s Boardwalk Empire is the story of Enoch \"Nucky\" Thompson, the treasurer of Atlantic County, Atlantic City, New Jersey. Due to his relationships with mobsters as well as political contacts, the Federal Government start to take an interest in him. His lavish lifestyle seems at odds with his position, and as well as his connections, there is prolific bootlegging in the area.', 'HBO', 'https://m.media-amazon.com/images/M/MV5BMjNhODE1M2YtMjFmMC00YTliLThhNDktMzI0MjljMzI3NDVjL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg'),
(36, 'Frasier', '1993-09-16', 11, 10.00, 'Dr. Frasier Crane, a successful Boston therapist, moves to Seattle to get a new start on life. He has a radio talk show, which he uses to relay his wit and wisdom to others, but at times he struggles with his own problems with his salt-of-the-earth father, his pretentious brother, and his friends and co-workers.', NULL, 'https://m.media-amazon.com/images/M/MV5BNzViNjNkZDktMTE5Yi00NjRmLWEyYTYtZjQ5ZWM5OThlMzJlXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SY1000_SX746_AL_.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`idg`);

--
-- Indices de la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD PRIMARY KEY (`ids`,`idg`),
  ADD KEY `fk_pertenece_genero` (`idg`);

--
-- Indices de la tabla `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`ids`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `idg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `serie`
--
ALTER TABLE `serie`
  MODIFY `ids` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pertenece`
--
ALTER TABLE `pertenece`
  ADD CONSTRAINT `fk_pertenece_genero` FOREIGN KEY (`idg`) REFERENCES `genero` (`idg`),
  ADD CONSTRAINT `fk_pertenece_serie` FOREIGN KEY (`ids`) REFERENCES `serie` (`ids`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
