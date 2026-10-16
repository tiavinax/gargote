-- Active: 1773507358543@@127.0.0.1@5432@gargote

-- Nouveau
CREATE TABLE categories(
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(50) NOT NULL
);

-- Nouveau 
INSERT INTO categories (libelle) VALUES
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et goûter'),
('Boisson');

-- Modifier la table plats (categorie -> id_categorie)

ALTER TABLE plats ADD COLUMN id_categorie INTEGER;
UPDATE plats
SET id_categorie = categories.id
FROM categories
WHERE plats.categorie = categories.libelle;

ALTER TABLE plats DROP COLUMN categorie;
