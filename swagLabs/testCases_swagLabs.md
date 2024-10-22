# Test cases Swag Labs

Entraînement d'écriture de cas de test sur un site marchand en démo : [Swag Labs](https://www.saucedemo.com/v1/)  

Sommaire :
- [Cas de test : Connexion](#whale2-cas-de-test--connexion)  
- [Cas de test : Liste des produits](#whale2-cas-de-test--liste-des-produits)  
- [Cas de test : Panier](#whale2-cas-de-test--panier)  
- [Cas de test : Menu Hamburger](#whale2-cas-de-test--menu-hamburger)  
- [Cas de test : Checkout](#whale2-cas-de-test--checkout)  
- [Cas de test : End-to-End](#whale2-cas-de-test--End-to-end)  

---

## :whale2: Cas de test : Connexion

### Cas de test n°1 : Connexion en tant qu'utilisateur standard
**Description :** Je me connecte en tant qu'utilisateur standard  
**Version :** 1.0  
**Priorité :** haute  
**Précondition :** Ne pas être connecté en tant qu'utilisateur  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Remplir le champ "Username" avec une valeur correcte | standard_user |  |
| 2 | Remplir le champ "Password" avec une valeur correcte | secret_sauce |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | Je suis connecté et j'accède à la page des produits |

<br>

### Cas de test n°2 : Tentative de connexion avec un "username" incorrecte
**Description :** J'essaye de me connecter en tant qu'utilisateur standard avec un username incorecte  
**Version :** 1.0  
Priorité :** haute  
**Précondition :** Ne pas être connecté en tant qu'utilisateur  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Remplir le champ "Username" avec une valeur incorrecte | toto |  |
| 2 | Remplir le champ "Password" avec une valeur correcte | secret_sauce |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | Le message d'erreur suivant apparaît : "Epic sadface: Username and password do not match any user in this service" |

<br>

### Cas de test n°3 : Tentative de connexion avec un "password" incorrecte
**Description :** J'essaye de me connecter en tant qu'utilisateur standard avec un password incorecte  
**Version :** v 1.0  
**Priorité :** haute  
**Précondition :** Ne pas être connecté en tant qu'utilisateur  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Remplir le champ "Username" avec une valeur correcte | standard_user |  |
| 2 | Remplir le champ "Password" avec une valeur incorrecte | toto |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | Le message d'erreur suivant apparaît : "Epic sadface: Username and password do not match any user in this service" |

<br>

### Cas de test n°4 : Tentative de connexion avec un "username" et un "password" incorrecte
**Description :** J'essaye de me connecter en tant qu'utilisateur standard avec un username et un password incorecte  
**Version :** 1.0  
**Priorité :** haute  
**Précondition :** Ne pas être connecté en tant qu'utilisateur  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Remplir le champ "Username" avec une valeur incorrecte | toto |  |
| 2 | Remplir le champ "Password" avec une valeur incorrecte | toto |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | Le message d'erreur suivant apparaît : "Epic sadface: Username and password do not match any user in this service" |

<br>

### Cas de test n°5 : Tentative de connexion avec un "username" vide
**Description :** J'essaye de me connecter en tant qu'utilisateur standard avec un username vide  
**Version :** 1.0  
**Priorité :** haute  
**Précondition :** Ne pas être connecté en tant qu'utilisateur  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Laisser le champ "Username" vide |  |  |
| 2 | Remplir le champ "Password" avec une valeur correcte | secret_sauce |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | Le message d'erreur suivant apparaît : "Epic sadface: Username is required" |

<br>

### Cas de test n°6 : Tentative de connexion avec un "password" vide
**Description :** J'essaye de me connecter en tant qu'utilisateur standard avec un password vide   
**Version :** 1.0  
**Priorité :** haute  
**Précondition :** Ne pas être connecté en tant qu'utilisateur  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Remplir le champ "Username" avec une valeur correcte | standard_user |  |
| 2 | Laisser le champ "Password" vide |  |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | Le message d'erreur suivant apparaît : "Epic sadface: Password is required" |

<br>

---

## :whale2: Cas de test : Liste des produits

### Cas de test n°7 : Naviguer et ajouter des produits au panier
**Description :** Je souhaite pouvoir naviguer et ajouter un produit au panier depuis la page "Produits" et depuis sa description  
**Version :** 1.0  
**Priorité :** haute    
**Précondition :** Je suis connecté en tant qu'utilisateur standard et je suis sur la page des produits  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Cliquer sur le bouton "Add to cart" d'un produit |   | Le bouton "Add to cart" d'un produit devient "Remove" et une pastille rouge avec le chiffre "1" apparaît sur le picto "Panier" |
| 2 | Cliquer sur la fiche d'un autre produit |  | J'accède à la page du produit cliqué |
| 3 | Cliquer sur le bouton "Add to cart" | X | Le bouton "Add to cart" des produits devient "Remove" et une pastille rouge avec le chiffre "1" apparaît sur le picto "Panier" |

<br>

### Cas de test n°8 : Trier les produits
**Description :** Je souhaite pouvoir trier les produits de "A à Z", "Z à A", du "Prix : le moins cher au plus cher" et du "Prix : le plus cher au moins cher"
**Version :** 1.0  
**Priorité :** basse  
**Précondition :** Je suis connecté en tant qu'utilisateur standard et je suis sur la page des produits  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Cliquer sur le bouton "Filtre" et sélectionner "Name (A to Z)" |  | Les produits sont triés par ordre alphabétique croissante |
| 2 | Cliquer sur le bouton "Filtre" et sélectionner "Name (Z to A)" |  | Les produits sont triés par ordre alphabétique décroissante |
| 3 | Cliquer sur le bouton "Filtre" et sélectionner "Price (low to high) " |  | Les produits sont triés selon l'ordre de prix croissant |
| 4 | Cliquer sur le bouton "Filtre" et sélectionner "Price (high to low) " |  | Les produits sont triés selon l'ordre de prix décroissant |

<br>

---

## :whale2: Cas de test : Panier

### Cas de test n°9 : Ajouter des produits au panier et en retirer
**Description :** Je souhaite pouvoir ajouter et retirer des produits de mon panier  
**Version :** 1.0  
**Priorité :** haute  
**Précondition :** Je suis connecté en tant qu'utilisateur standard et je suis sur la page des produits  

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

<br>

---

## :whale2: Cas de test : Menu hamburger

### Cas de test n°10 : Naviguer sur le site avec le menu hamburger
**Description :** Je souhaite pouvoir naviguer sur le site avec le menu hamburger  
**Version :** 1.0  
**Priorité :** basse  
**Précondition :** Je suis connecté en tant qu'utilisateur standard et je suis sur la page des produits  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Cliquer sur le menu hamburger |  | Le menu apparaît à la gauche de l'écran |
| 2 | Cliquer sur "All Items" |  | J'accède à la page des produits |
| 3 | Cliquer sur le menu hamburger |  | Le menu apparaît à la gauche de l'écran |
| 4 | Cliquer sur "Logout" |  | J'accède à la page de connexion |
| 5 | Remplir le champ "Username" avec une valeur correcte | standard_user |  |
| 6 | Remplir le champ "Password" avec une valeur correcte | secret_sauce |  |
| 7 | Cliquer sur le bouton "LOGIN" |  | Je suis connecté et j'accède à la page des produits |
| 8 | Cliquer sur le menu hamburger |  | Le menu apparaît à la gauche de l'écran |
| 9 | Cliquer sur "About" |  | Je suis envoyer sur le site "https://saucelabs.com/" |

<br>

---

## :whale2: Cas de test : Checkout

### Cas de test n°11 : Passer une commande
**Description :** Je souhaite pouvoir passer une commande  
**Version :** 1.0  
**Priorité :** haute  
**Précondition :** Je suis connecté en tant qu'utilisateur standard, j'ai ajouté deux produits dans mon panier et je suis sur la page des produits  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Cliquer sur le bouton "Panier" |  | J'accède à la page "Your Cart" et j'ai deux produits dans mon panier |
| 2 | Cliquer sur le bouton "Checkout" |  | J'accède à la page "Checkout: Your Information |
| 3 | Remplir le champ "First Name" avec une valeur correcte | Pierre |  |
| 4 | Remplir le champ "Last Name" avec une valeur correcte | Le Guennec |  |
| 5 | Remplir le champ "Zip/Postal Code" avec une valeur correcte | 44000 |  |
| 6 | Cliquer sur le bouton "Continue" |  | J'accède à la page "Checkout: Overview" |
| 7 | Cliquer sur le bouton "Finish" |  | J'accède à la page "Finish" |

<br>

### Cas de test n°12 : Tentative de commande avec un "firstname" vide 
**Description :** J'essaye de passer une commande avec un "firstname" vide  
**Version :** 1.0  
**Priorité :** haute  
**Précondition :** Je suis connecté en tant qu'utilisateur standard, j'ai ajouté deux produits dans mon panier et je suis sur la page des produits

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Cliquer sur le bouton "Panier" |  | J'accède à la page "Your Cart" et j'ai deux produits dans mon panier |
| 2 | Cliquer sur le bouton "Checkout" |  | J'accède à la page "Checkout: Your Information |
| 3 | Laisser le champ "First Name" vide |  |  |
| 4 | Remplir le champ "Last Name" avec une valeur correcte | Le Guennec |  |
| 5 | Remplir le champ "Zip/Postal Code" avec une valeur correcte | 44000 |  |
| 6 | Cliquer sur le bouton "Continue" |  | Le message d'erreur suivant apparaît : "Error: First Name is required" |

<br>

### Cas de test n°13 : Tentative de commande avec un "lastname" vide 
**Description :** J'essaye de passer une commande avec un "lastname" vide  
**Version :** 1.0  
**Priorité :** haute  
**Précondition :** Je suis connecté en tant qu'utilisateur standard, j'ai ajouté deux produits dans mon panier et je suis sur la page des produits  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Cliquer sur le bouton "Panier" |  | J'accède à la page "Your Cart" et j'ai deux produits dans mon panier |
| 2 | Cliquer sur le bouton "Checkout" |  | J'accède à la page "Checkout: Your Information |
| 3 | Remplir le champ "First Name" avec une valeur correcte | Pierre |  |
| 4 | Laisser le champ "Last Name" vide |  |  |
| 5 | Remplir le champ "Zip/Postal Code" avec une valeur correcte | 44000 |  |
| 6 | Cliquer sur le bouton "Continue" |  | Le message d'erreur suivant apparaît : "Error: Last Name is required" |

<br>

### Cas de test n°14 : Tentative de commande avec un "Zip/Postal Code" vide  
**Description :** J'essaye de passer une commande avec un "lastname" vide  
**Version :** 1.0  
**Priorité :** haute  
**Précondition :** Je suis connecté en tant qu'utilisateur standard, j'ai ajouté deux produits dans mon panier et je suis sur la page des produits  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Cliquer sur le bouton "Panier" |  | J'accède à la page "Your Cart" et j'ai deux produits dans mon panier |
| 2 | Cliquer sur le bouton "Checkout" |  | J'accède à la page "Checkout: Your Information |
| 3 | Remplir le champ "First Name" avec une valeur correcte | Pierre |  |
| 4 | Remplir le champ "Last Name" avec une valeur correcte | Le Guennec |  |
| 5 | Laisser le champ "Zip/Postal Code" vide |  |  |
| 6 | Cliquer sur le bouton "Continue" |  | Le message d'erreur suivant apparaît : "Error: Postal Code is required" |

<br>

---

## :whale2: Cas de test : End-to-end

### Cas de test n°10 : Parcours utilisateur end-to-end
**Description :** Je souhaite réaliser un parcours utilisateur complet end-to-end  
**Version :** 1.0  
**Priorité :** haute  
**Précondition :** Ne pas être connecté en tant qu'utilisateur 

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Remplir le champ "Username" avec une valeur correcte | standard_user |  |
| 2 | Remplir le champ "Password" avec une valeur correcte | secret_sauce |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | Je suis connecté et j'accède à la page des produits |
| 4 | Cliquer sur la fiche d'un produit |  | J'accède à la page du produit |
| 5 | Cliquer sur le bouton "<- Back" |  | J'accède à la page des produits |
| 6 | Cliquer sur la fiche d'un autre produit |  | J'accède à la page du produit |
| 7 | Cliquer sur "Add to cart" |  | Le bouton "Add to cart" des produits devient "Remove" et une pastille rouge avec le chiffre "1" apparaît sur le picto "Panier" |
| 8 | Cliquer sur le bouton "<- Back" |  | J'accède à la page des produits |
| 9 | Je clique sur le bouton "Add to cart" d'un produit |  | Le bouton "Add to cart" du produit devient "Remove" et la pastille rouge près du picto "Panier" devient "2" |
| 10 | Je clique sur le bouton "Panier" |  | J'accède à la page "Your Cart" |
| 11 | Je clique sur le bouton "Remove d'un produit |  | Le produit est supprimé |
| 12 | Cliquer sur le bouton "Checkout" |  | J'accède à la page "Checkout: Your Information |
| 13 | Remplir le champ "First Name" avec une valeur correcte | Pierre |  |
| 14 | Remplir le champ "Last Name" avec une valeur correcte | Le Guennec |  |
| 15 | Remplir le champ "Zip/Postal Code" avec une valeur correcte | 44000 |  |
| 16 | Cliquer sur le bouton "Continue" |  | J'accède à la page "Checkout: Overview" |
| 17 | Cliquer sur le bouton "Finish" |  | J'accède à la page "Finish" |

<br>


| X | X | X | X |