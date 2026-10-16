--ETAPE 1 : afficher les plats du plus cher au moins cher
SELECT libelle, prix FROM plats ORDER BY prix DESC;

-- ETAPE 2 : nombre de plats par catégorie, y compris les catégories sans plat.
SELECT c.libelle, count(p.id) as nb_plats FROM categories c LEFT JOIN plats p ON c.id = p.id_categorie GROUP BY c.id;