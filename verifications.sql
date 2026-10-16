-- ETAPE 1 : afficher les plats du plus cher au moins cher
SELECT libelle, prix FROM plats ORDER BY prix DESC;

-- ETAPE 2 : nombre de plats par catégorie, y compris les catégories sans plat.
SELECT c.libelle, count(p.id) as nb_plats
FROM categories c
    LEFT JOIN plats p ON c.id = p.id_categorie
GROUP BY
    c.id;

-- ETAPE 3 : montant total de chaque commande.
SELECT co.id as commande, SUM(cdd.quantite * p.prix) as total
FROM
    commandes co
    JOIN commandes_detail cdd ON co.id = cdd.id_commande
    JOIN plats p ON cdd.id_plats = p.id
GROUP BY
    co.id;

-- ETAPE 4 : commandes avec le nom du client ou "client de passage".
SELECT co.id as commande, COALESCE(c.nom, 'client de passage') as client
FROM commandes co
    LEFT JOIN clients c ON co.id_client = c.id
ORDER BY co.id;