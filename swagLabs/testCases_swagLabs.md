# Test cases Swag Labs

Entraînement d'écriture de cas de test sur un site marchand en démo : [Swag Labs](https://www.saucedemo.com/v1/)




### Cast de test n°1 : Connexion en tant qu'utilisateur standard
Description : Je me connecte sur le site web en tant qu'utilisateur standard
Version : v 1.0    |     Priorité : haute

Précondition : depuis chrome, être connecté sur le site www.saucedemo.com/v1/

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Remplir le champ de texte "Username" par "standard_user" |  |  |
| 2 | Remplir le champ de texte "Password" par "secret_sauce" |  |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | On accède à la page des produits |



### Cast de test n°2 : Acheter tous les produits depuis la page "Produits"
Description : Je souhaite acheter tous les produits sans quitter la page "Produits" et procéder au paiement
Version : v 1.0    |     Priorité : haute

Précondition : depuis chrome, être connecté sur le site www.saucedemo.com/v1/

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Remplir le champ de texte "Username" par "standard_user" |  |  |
| 2 | Remplir le champ de texte "Password" par "secret_sauce" |  |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | J'accède à la page des produits |
| 4 | Cliquer sur le bouton "Add to cart" de chacun des produits |   | Le bouton "Add to cart" des produits devient "Remove" et une pastille rouge avec le nombre de produits apparaît sur le picto "Panier" |
| 5 | Cliquer sur le bouton "Panier" |  | J'accède à la page "Your Cart" |
| 6 | Vérifier que tous les produits et leurs informations sont bien présent et justes |  | Tous les produits doivent être présent |
| 7 | Cliquer sur le bouton "CHECKOUT" |  | J'accède à la page "Checkout: Your information |
| 8 | Remplir le champ de texte "Firstname" par "Pierre" |  |  |
| 9 | Remplir le champ de texte "Firstname" par "Le Guennec" |  |  |
| 10 | Remplir le champ de texte "ZIP/Postal Code" par 44000 |  |  |
| 11 | Cliquer sur le bouton "Continue" |  | J'accède à la page "Checkout: Overview" |
| 12 | Vérifier que la somme des produits est correcte et que la taxe est bien appliqué |  |  |
| 13 | Cliquer sur le bouton "FINISH" |  | J'accède à la page "Finish" |



### Cast de test n°3 : Retirer un produit du panier à différents stades
Description : Je retire des produits de mon panier à différents stades du circuit client
Version : v 1.0    |     Priorité : haute

Précondition : depuis chrome, être connecté sur le site www.saucedemo.com/v1/

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Remplir le champ de texte "Username" par "standard_user" |  |  |
| 2 | Remplir le champ de texte "Password" par "secret_sauce" |  |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | J'accède à la page des produits |
| 4 | Cliquer sur le bouton "Add to cart" de deux produits |  | Le bouton "Add to cart" des produits devient "Remove" et une pastille rouge avec le chiffre "2" apparaît sur le picto "Panier" |
| 5 | Cliquer sur le bouton "Remove" de l'un des deux produits |  | Le bouton "Remove" du produit devient "Add to cart" et la pastille rouge près du picto "Panier" devient "1" |
| 6 | Cliquer sur le bouton "Panier" |  | J'accède à la page "Your Cart" |
| 7 | Cliquer sur le bouton "Remove" du produit |  | La page s'actualise et il ne doit plus y avoir de produit |



### Cast de test n°4 : Naivuger sur différentes pages produits, consulter mon panier, continuer mon shopping et acheter les produits
Description : Je souhaite pouvoir consulter
Version : v 1.0    |     Priorité : haute

Précondition : depuis chrome, être connecté sur le site www.saucedemo.com/v1/

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Remplir le champ de texte "Username" par "standard_user" |  |  |
| 2 | Remplir le champ de texte "Password" par "secret_sauce" |  |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | J'accède à la page des produits |
| 4 | Cliquer sur la photo d'un produit |  | J'accède à la page du produit |
| 5 | Cliquer sur le bouton "Add to cart" |  | Le bouton "Add to cart" des produits devient "Remove" et une pastille rouge avec le chiffre "1" apparaît sur le picto "Panier" |
| 6 | X | X | X |
| 7 | X | X | X |
| 8 | X | X | X |
| 9 | X | X | X |
| 10 | X | X | X |
| 11 | X | X | X |
| 12 | X | X | X |
| 13 | X | X | X |





| X | X | X | X |