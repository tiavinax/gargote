CREATE TABLE clients (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

-- Jeux de donner
INSERT INTO clients (nom) VALUES ('Miora Rakoto');

ALTER TABLE commandes
ADD COLUMN id_client INTEGER REFERENCES clients (id);

UPDATE commandes
SET
    id_client = clients.id
FROM clients
WHERE
    commandes.id = 1
    AND clients.nom = 'Miora Rakoto';