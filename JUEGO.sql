DROP DATABASE IF EXISTS juego;
CREATE DATABASE juego;

USE juego;

CREATE TABLE Jugador(
     usuario VARCHAR(30) NOT NULL,
     contraseña VARCHAR(30) NOT NULL,
     id_usuario INT,
     PRIMARY KEY(usuario)
)ENGINE=InnoDB;

CREATE TABLE Partida(
     id_partida INT,
     fecha_hora DATETIME,
     duracion TIME,
     Ganador VARCHAR(20),
     PRIMARY KEY(id_partida)
)ENGINE=InnoDB;

CREATE TABLE Competicion(
     jugador_id INT NOT NULL,
     partida_id INT NOT NULL,
     FOREIGN KEY (jugador_id) REFERENCES Jugador(id_usuario),
     FOREIGN KEY (partida_id) REFERENCES Partida(id_partida),
     PRIMARY KEY(jugador_id,partida_id)
)ENGINE=InnoDB;

INSERT INTO Jugador VALUES ('Dorian', '1610lol', 1);  
INSERT INTO Jugador VALUES ('Claudia', 'clau666', 2); 
INSERT INTO Jugador VALUES ('Maria', '3456op', 3);
INSERT INTO Jugador VALUES ('Valeria', 'vale879', 4);
INSERT INTO Jugador VALUES ('Pedro', '1945sg', 5); 
INSERT INTO Jugador VALUES ('Jose', '4561hg', 9);

INSERT INTO Partida VALUES (1, '2023-12-04 19:00:23', '00:30:00', 'Pedro');
INSERT INTO Partida VALUES (2, '2014-04.23 12:08:00', '00:45:00', 'Dorian');
INSERT INTO Partida VALUES (3, '2019-09-12 09:56:01', '00:20:00', 'Valeria');
INSERT INTO Partida VALUES (4, '2003-01-01 04:23:12', '01:09:00', 'Jose');
