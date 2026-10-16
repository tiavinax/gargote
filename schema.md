# TP – Conception base relationnelle : la gargote de Rado

## Étape 1 – La carte
<< Je veux la liste de mes plats avec leur prix. >>

**Question « Piège » :** Quel type choisissez-vous pour le prix ? Quel identifiant choisissez-vous ? 

**Reponse :**
=> J'ai choisi le type BIGINT et l'auto-increment comme identifiant .

## Étape 2 – Les catégories
<< Je range mes plats par catégorie : plats malagasy, plats chinois, soupes, desserts, boissons. >>

**Question « Piège » :** Pourquoi ne pas simplement ajouter une colonne categorie VARCHAR(50) dans la table des
plats ? Donnez un exemple de problème concret.

**Reponse :**
=> Ici le categorie est en VARCHAR(50) donc c'est un donner inserer a la main dans une formulaire d'ajout de plats.
Si il y a une erreur de frappe cela casse la logique car le plats ne peut pas etre vu ou compter.

## Étape 3 – Les commandes
« J'enregistre les commandes : la date, quels plats, et combien de chaque. »

**Question « Piège » :** Où placez-vous la quantité ?

**Reponse :**
=> Dans la table commandes_detail(id_commande,id_plat,quantite) / commandes(id,date);

## Étape 4 – Les habitués
« Certains clients sont des habitués, je veux les reconnaître. Mais la plupart sont de passage et je ne leur demande rien. »

**Question « Piège » :** Votre clé étrangère est-elle NOT NULL ? Quelle jointure faut-il pour ne perdre aucune commande ?

**Schema relationnel :**
- CLIENTS(id, nom)
- COMMANDES(id, date_commande, #id_client?) (modifié)

**Reponse :**
=> La clé étrangère id_client est facultative car les clients de passage ne sont pas enregistrés. Il faut une jointure externe gauche (LEFT JOIN) pour garder toutes les commandes.