# Test cases Swag Labs

Entraînement d'écriture de cas de test sur un site marchand en démo : [Swag Labs](https://www.saucedemo.com/v1/)  

Sommaire :  
[Cas de test : Connexion](#cas-de-test--connexion)  
[Cas de test : Liste des produits](#cas-de-test--achat-de-produits)  
[Cas de test : Panier](#cas-de-test--panier)  
Menu à gauche  
Page Checkout  
End-to-End  

---

## Cas de test : Connexion

### Cas de test n°1 : Connexion en tant qu'utilisateur standard
Description : Je me connecte en tant qu'utilisateur standard  
Version : 1.0  
Priorité : haute  
Précondition : Ne pas être connecté en tant qu'utilisateur  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Remplir le champ "Username" avec une valeur correcte | standard_user |  |
| 2 | Remplir le champ "Password" avec une valeur correcte | secret_sauce |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | Je suis connecté et j'accède à la page des produits |

<br>

### Cas de test n°2 : Tentative de connexion avec un "username" incorrecte
Description : J'essaye de me connecter en tant qu'utilisateur standard avec un username incorecte  
Version : 1.0  
Priorité : haute  
Précondition : Ne pas être connecté en tant qu'utilisateur  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Remplir le champ "Username" avec une valeur incorrecte | toto |  |
| 2 | Remplir le champ "Password" avec une valeur correcte | secret_sauce |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | Le message d'erreur suivant apparaît : "Epic sadface: Username and password do not match any user in this service" |

<br>

### Cas de test n°3 : Tentative de connexion avec un "password" incorrecte
Description : J'essaye de me connecter en tant qu'utilisateur standard avec un password incorecte  
Version : v 1.0  
Priorité : haute  
Précondition : Ne pas être connecté en tant qu'utilisateur  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Remplir le champ "Username" avec une valeur correcte | standard_user |  |
| 2 | Remplir le champ "Password" avec une valeur incorrecte | toto |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | Le message d'erreur suivant apparaît : "Epic sadface: Username and password do not match any user in this service" |

<br>

### Cas de test n°4 : Tentative de connexion avec un "username" et un "password" incorrecte
Description : J'essaye de me connecter en tant qu'utilisateur standard avec un username et un password incorecte  
Version : v 1.0  
Priorité : haute  
Précondition : Ne pas être connecté en tant qu'utilisateur  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Remplir le champ "Username" avec une valeur incorrecte | toto |  |
| 2 | Remplir le champ "Password" avec une valeur incorrecte | toto |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | Le message d'erreur suivant apparaît : "Epic sadface: Username and password do not match any user in this service" |

<br>

### Cas de test n°5 : Tentative de connexion avec un "username" vide
Description : J'essaye de me connecter en tant qu'utilisateur standard avec un username vide  
Version : 1.0  
Priorité : haute  
Précondition : Ne pas être connecté en tant qu'utilisateur  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Laisser le champ "Username" vide |  |  |
| 2 | Remplir le champ "Password" avec une valeur correcte | secret_sauce |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | Le message d'erreur suivant apparaît : "Epic sadface: Username is required" |

<br>

### Cas de test n°6 : Tentative de connexion avec un "password" vide
Description : J'essaye de me connecter en tant qu'utilisateur standard avec un password vide   
Version : 1.0  
Priorité : haute  
Précondition : Ne pas être connecté en tant qu'utilisateur  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Remplir le champ "Username" avec une valeur correcte | standard_user |  |
| 2 | Laisser le champ "Password" vide |  |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | Le message d'erreur suivant apparaît : "Epic sadface: Password is required" |

<br>

---

## Cas de test : Liste des produits

### Cas de test n°7 : Naviguer et ajouter des produits au panier
Description : Je souhaite pouvoir naviguer et ajouter un produit au panier depuis la page "Produits" et depuis sa description  
Version : 1.0  
Priorité : haute    
Précondition : Je suis connecté en tant qu'utilisateur standard et je suis sur la page des produits  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Cliquer sur le bouton "Add to cart" d'un produit |   | Le bouton "Add to cart" d'un produit devient "Remove" et une pastille rouge avec le chiffre "1" apparaît sur le picto "Panier" |
| 2 | Cliquer sur la fiche d'un autre produit |  | J'accède à la page du produit cliqué |
| 3 | Cliquer sur le bouton "Add to cart" | X | Le bouton "Add to cart" des produits devient "Remove" et une pastille rouge avec le chiffre "1" apparaît sur le picto "Panier" |

<br>

### Cas de test n°8 : Trier les produits
Description : Je souhaite pouvoir trier les produits de "A à Z", "Z à A", du "Prix : le moins cher au plus cher" et du "Prix : le plus cher au moins cher"
Version : 1.0  
Priorité : basse  
Précondition : Je suis connecté en tant qu'utilisateur standard et je suis sur la page des produits  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Cliquer sur le bouton "Filtre" et sélectionner "Name (A to Z)" |  | Les produits sont triés par ordre alphabétique croissante |
| 2 | Cliquer sur le bouton "Filtre" et sélectionner "Name (Z to A)" |  | Les produits sont triés par ordre alphabétique décroissante |
| 3 | Cliquer sur le bouton "Filtre" et sélectionner "Price (low to high) " |  | Les produits sont triés selon l'ordre de prix croissant |
| 4 | Cliquer sur le bouton "Filtre" et sélectionner "Price (high to low) " |  | Les produits sont triés selon l'ordre de prix décroissant |

<br>

---

## Cas de test : Panier

### Cas de test n°9 : Ajouter des produits au panier et en retirer
Description : Je souhaite pouvoir ajouter et retirer des produits de mon panier  
Version : 1.0  
Priorité : haute  
Précondition : Je suis connecté en tant qu'utilisateur standard et je suis sur la page des produits  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Cliquer sur le bouton "Add to cart" de deux produits |  | Le bouton "Add to cart" des produits devient "Remove" et une pastille rouge avec le chiffre "2" apparaît sur le picto "Panier" |
| 3 | Cliquer sur la fiche d'un autre produit |  | J'accède à la page du produit cliqué |
| 6 | Je clique sur le bouton "Add to cart" |  | Le bouton "Add to cart" du produit devient "Remove" et la pastille rouge près du picto "Panier" devient "3"  |
| 3 | Cliquer sur le bouton "Panier" |  | J'accède à la page "Your Cart" |
| 4 | Cliquer sur le bouton "Remove" d'un produit |  | Le produit est retiré et la pastille rouge près du picto "Panier" devient "2" |
| 5 | Cliquer sur le bouton "Continue shopping" |  | J'accède à la page des produits |
| 6 | Cliquer sur le bouton "Remove" de l'un des deux produits |  | Le bouton "Remove" du produit devient "Add to cart" et la pastille rouge près du picto "Panier" devient "1" |
| 7 | Cliquer sur la fiche du dernier produit ayant le bouton "Remove" |  | J'accède à la page du produit cliqué |
| 8 | Je clique sur le bouton "Remove" |  | Le bouton "Remove" du produit devient "Add to cart" et la pastille rouge près du picto "Panier" disparaît |
| 9 | Je clique sur le bouton "Panier" |  | J'accède à la page "Your Cart" et constate qu'il n'y a plus de produit |



| X | X | X | X |