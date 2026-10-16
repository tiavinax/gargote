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

