CREATE TABLE commandes(
    id SERIAL PRIMARY KEY,
    date_commande TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE commandes_detail(
    id SERIAL PRIMARY KEY,
    id_commande INTEGER REFERENCES commandes(id),
    id_plats INTEGER REFERENCES plats(id),
    quantite INTEGER NOT NULL
);

-- Jeux de donner 
INSERT INTO commandes(date_commande) VALUES
('2026-10-16 11:29:43'),
('2026-10-16 11:30:00');

INSERT INTO commandes_detail(id_commande, id_plats, quantite) VALUES 
(1, 1, 2),
(1, 2, 1),
(1, 3, 3),
(2, 1, 1),
(2, 2, 2);