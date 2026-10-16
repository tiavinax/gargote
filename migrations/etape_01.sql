CREATE TABLE plats (
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(50) NOT NULL,
    prix BIGINT NOT NULL,
    categorie VARCHAR(50) NOT NULL
);

INSERT INTO plats (libelle, prix, categorie) VALUES
('Romazava', 7000, 'Plat malagasy'),
('Ravitoto sy henakisoa', 8000, 'Plat malagasy'),
('Akoho sy voanio', 8500, 'Plat malagasy'),
('Mi sao', 6000, 'Plat chinois'),
('Soupe chinoise', 5000, 'Soupe'),
('Mofo gasy (les 4)', 1000, 'Dessert et goûter'),
('Ranon''ampango', 500, 'Boisson');