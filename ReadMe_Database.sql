--Database name: genspark_proj
--See MySqlConnection ctx = {}; for password;
--If database name & password are not made in MySQL, these references must be made in numerous location within MVC

CREATE TABLE if not exists PlayerData(player_id int auto_increment PRIMARY KEY, team_id int FOREIGN KEY,
player_num int, player_name varchar(100) not null, player_pos varchar(2), PTS int, REB int, AST int, BLK int,
GP int, FGM int, FGA int, three_PM int, three_PA int, FTM int, FTA int, STL int, PF int);

INSERT into PlayerData(Team_id, Player_num, Player_name, Player_pos, PTS, REB, AST, BLK, GP, FGM, FGA, Three_PM, Three_PA, FTM, FTA, STL, PF)
VALUES (1, 6, "Lebron James", "PG", 1125, 350, 277, 27, 45, 484, 928, 104, 284, 180, 252, 69, 97),
(1, 5, "Talen Horten-Tucker", "SF", 585, 34, 181, 21, 65, 39, 221, 488, 130, 98, 130, 65, 130),
(1, 7, "Carmelo Anthony", "PF", 720, 223, 53, 43, 53, 244, 557, 122, 318, 106, 127, 42, 122),
(1, 0, "Russell Westbrook", "SG", 1086, 462, 438, 18, 60, 414, 954, 60, 204, 204, 306, 66, 180),
(1, 3, "Anthony Davis", "C", 855, 359, 107, 85, 37, 340, 636, 11, 67, 163, 226, 44, 93),
(2, 30, "Stephen Curry", "PG", 1471, 302, 371, 23, 57, 479, 1117, 262, 695, 257, 279, 80, 120),
(2, 3, "Jordan Poole", "SG", 896, 174, 196, 17, 56, 302, 700, 129, 381, 162, 174, 45, 146),
(2, 22, "Andrew Wiggins", "SF", 980, 235, 123, 39, 57, 376, 778, 114, 314, 114, 177, 57, 114),
(2, 23, "Draymond Green", "PF", 269, 258, 252, 41, 34, 109, 201, 14, 41, 41, 68, 48, 95),
(2, 5, "Kevon Looney", "C", 391, 471, 112, 43, 62, 161, 291, 0, 0, 62, 105, 37, 167);

CREATE TABLE if not exists TeamData(
team_id int auto_increment PRIMARY KEY,
team_name varchar(45) not null,
team_abr varchar(3),
city varchar(45),
US_state varchar(2),
W int, L int);

INSERT into TeamData(team_name, team_abr, city, US_state, W, L)
VALUES("Lakers", "LAL", "Los Angeles", "CA", 42, 30),
("Golden State Warriors", "GSW", "San Francisco", "CA", 39, 33);

CREATE TABLE userdata(User_id int auto_increment PRIMARY KEY, Username VARCHAR(45) not null, Email VARCHAR(45) not null, Password VARCHAR(45) not null);

CREATE TABLE content(Content_id int auto_increment PRIMARY KEY, User_Id int not null, Comments VARCHAR(200), Likes int, Dislikes int, 
CONSTRAINT FK_User FOREIGN KEY(user_id)
REFERENCES userdata(user_id)
);
