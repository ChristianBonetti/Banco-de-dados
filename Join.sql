CREATE DATABASE IF NOT EXISTS db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(100)
);

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    attack_power INT NOT NULL,
    defense_power INT NOT NULL,
    class_id INT NOT NULL,
    FOREIGN KEY (class_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (name, description) VALUES
('Guerreiro', 'Personagem forte e resistente.'),
('Mago', 'Personagem com grande poder mágico.'),
('Arqueiro', 'Personagem ágil e preciso.'),
('Assassino', 'Personagem furtivo e letal.'),
('Cavaleiro', 'Personagem com grande poder de ataque montado em um cavalo.');

INSERT INTO tb_personagens (name, attack_power, defense_power, class_id) VALUES
('Lancelot', 3000, 2000, 1),
('Merlin', 1000, 1000, 2),
('Robin Hood', 2500, 1500, 3),
('Ezio Auditore', 2200, 1200, 4),
('Arthur', 4000, 3000, 5),
('Gandalf', 1500, 1500, 2),
('Legolas', 2800, 1300, 3),
('Connor Kenway', 2400, 1400, 4);

SELECT * FROM tb_personagens WHERE attack_power > 2000;

SELECT * FROM tb_personagens WHERE defense_power BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE name LIKE '%C%';

SELECT tb_personagens.*, tb_classes.name as class_name FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.class_id = tb_classes.id;

SELECT tb_personagens.*, tb_classes.name as class_name FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.class_id = tb_classes.id WHERE tb_classes.name = 'Arqueiro';
