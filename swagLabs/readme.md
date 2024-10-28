# Cas de test Swag Labs

Entraînement d'écriture de cas de test sur un site marchand en démo : [Swag Labs](https://www.saucedemo.com/v1/)  

- [Cas de test : Connexion](#whale2-cas-de-test--connexion)  
- [Cas de test : Page produits](#whale2-cas-de-test--page-produits)  
- [Cas de test : Panier](#whale2-cas-de-test--panier)  
- [Cas de test : Menu burger](#whale2-cas-de-test--menu-burger)  
- [Cas de test : Checkout](#whale2-cas-de-test--checkout)  
- [Cas de test : End-to-End](#whale2-cas-de-test--End-to-end)  

<br>

---

<br>

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

### Cas de test n°2 : Tentative de connexion avec un "username" incorrect
**Description :** J'essaye de me connecter en tant qu'utilisateur standard avec un username incorrect 
**Version :** 1.0  
**Priorité :** haute  
**Précondition :** Ne pas être connecté en tant qu'utilisateur  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Remplir le champ "Username" avec une valeur incorrecte | toto |  |
| 2 | Remplir le champ "Password" avec une valeur correcte | secret_sauce |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | Le message d'erreur suivant apparaît : "Epic sadface: Username and password do not match any user in this service" |

<br>

### Cas de test n°3 : Tentative de connexion avec un "password" incorrect
**Description :** J'essaye de me connecter en tant qu'utilisateur standard avec un password incorrect  
**Version :** v 1.0  
**Priorité :** haute  
**Précondition :** Ne pas être connecté en tant qu'utilisateur  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Remplir le champ "Username" avec une valeur correcte | standard_user |  |
| 2 | Remplir le champ "Password" avec une valeur incorrecte | toto |  |
| 3 | Cliquer sur le bouton "LOGIN" |  | Le message d'erreur suivant apparaît : "Epic sadface: Username and password do not match any user in this service" |

<br>

### Cas de test n°4 : Tentative de connexion avec un "username" et un "password" incorrects
**Description :** J'essaye de me connecter en tant qu'utilisateur standard avec un username et un password incorrects  
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

<br>

## :whale2: Cas de test : Page produits

### Cas de test n°7 : Naviguer et ajouter un produit au panier
**Description :** Je souhaite pouvoir naviguer sur la page "Produits", sur la fiche d'un produit et l'ajouter au panier  
**Version :** 1.0  
**Priorité :** haute  
**Précondition :** Je suis connecté en tant qu'utilisateur standard, je suis sur la page des produits et mon panier est vide  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Cliquer sur la fiche d'un produit |  | J'accède à la page du produit cliqué |
| 2 | Cliquer sur le bouton "Back" |  | J'accède à la page des produits |
| 3 | Cliquer sur la fiche d'un autre produit |  | J'accède à la page du produit cliqué |
| 4 | Cliquer sur le bouton "Add to cart" |  | Le bouton "Add to cart" d'un produit devient "Remove" et une pastille rouge avec le chiffre "1" apparaît sur le picto "Panier" |

<br>

### Cas de test n°8 : Trier les produits
**Description :** Je souhaite pouvoir trier les produits de "A à Z", "Z à A", du "Prix : le moins cher au plus cher" et du "Prix : le plus cher au moins cher"
**Version :** 1.0  
**Priorité :** basse  
**Précondition :** Je suis connecté en tant qu'utilisateur standard et je suis sur la page des produits  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Cliquer sur le bouton "Filtre" |  | Le menu déroulant avec les différents filtre apparaît |
| 2 | Sélectionner dans le menu déroulant "Name (A to Z)" |  | Les produits sont triés par ordre alphabétique croissante |
| 3 | Cliquer sur le bouton "Filtre" |  | Le menu déroulant avec les différents filtre apparaît |
| 4 | Sélectionner dans le menu déroulant  "Name (Z to A)" |  | Les produits sont triés par ordre alphabétique décroissante |
| 5 | Cliquer sur le bouton "Filtre" |  | Le menu déroulant avec les différents filtre apparaît |
| 6 | Sélectionner dans le menu déroulant "Price (low to high) " |  | Les produits sont triés selon l'ordre de prix croissant |
| 7 | Cliquer sur le bouton "Filtre" |  | Le menu déroulant avec les différents filtre apparaît |
| 8 | Sélectionner dans le menu déroulant "Price (high to low) " |  | Les produits sont triés selon l'ordre de prix décroissant |

<br>

---

<br>

## :whale2: Cas de test : Panier

### Cas de test n°9 : Ajouter des produits au panier et en retirer
**Description :** Je souhaite pouvoir ajouter et retirer des produits de mon panier  
**Version :** 1.0  
**Priorité :** haute  
**Précondition :** Je suis connecté en tant qu'utilisateur standard, je suis sur la page des produits et mon panier est vide  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Cliquer sur le bouton "Add to cart" d'un produit |  | Le bouton "Add to cart" des produits devient "Remove" et une pastille rouge avec le chiffre "1" apparaît sur le picto "Panier" |
| 2 | Cliquer sur le bouton "Add to cart" d'un autre produit |  | Le bouton "Add to cart" des produits devient "Remove" et la pastille rouge près du picto "Panier" devient "2" |
| 3 | Cliquer sur la fiche d'un autre produit |  | J'accède à la page du produit cliqué |
| 4 | Cliquer sur le bouton "Add to cart" |  | Le bouton "Add to cart" du produit devient "Remove" et la pastille rouge près du picto "Panier" devient "3"  |
| 5 | Cliquer sur le bouton "Panier" |  | J'accède à la page "Your Cart" |
| 6 | Cliquer sur le bouton "Remove" d'un produit |  | Le produit est retiré et la pastille rouge près du picto "Panier" devient "2" |
| 7 | Cliquer sur le bouton "Continue shopping" |  | J'accède à la page des produits |
| 8 | Cliquer sur le bouton "Remove" de l'un des deux produits |  | Le bouton "Remove" du produit devient "Add to cart" et la pastille rouge près du picto "Panier" devient "1" |
| 9 | Cliquer sur la fiche du dernier produit ayant le bouton "Remove" |  | J'accède à la page du produit cliqué |
| 10 | Cliquer sur le bouton "Remove" |  | Le bouton "Remove" du produit devient "Add to cart" et la pastille rouge près du picto "Panier" disparaît |
| 11 | Cliquer sur le bouton "Panier" |  | J'accède à la page "Your Cart" et constate qu'il n'y a plus de produit |

<br>

---

<br>

## :whale2: Cas de test : Menu burger

### Cas de test n°10 : Naviguer sur le site avec le menu burger
**Description :** Je souhaite pouvoir naviguer sur le site avec le menu burger  
**Version :** 1.0  
**Priorité :** haute  
**Précondition :** Je suis connecté en tant qu'utilisateur standard et je suis sur la page des produits  

| Step | Action | Données | Résultat attendu |
|-----------|-----------|-----------|-----------|
| 1 | Cliquer sur le menu burger |  | Le menu apparaît à la gauche de l'écran |
| 2 | Cliquer sur "All Items" |  | J'accède à la page des produits |
| 3 | Cliquer sur la croix "X" |  | Le menu burger se ferme |
| 4 | Cliquer sur le menu burger |  | Le menu apparaît à la gauche de l'écran |
| 5 | Cliquer sur "Logout" |  | J'accède à la page de connexion |
| 6 | Remplir le champ "Username" avec une valeur correcte | standard_user |  |
| 7 | Remplir le champ "Password" avec une valeur correcte | secret_sauce |  |
| 8 | Cliquer sur le bouton "LOGIN" |  | Je suis connecté et j'accède à la page des produits |
| 9 | Cliquer sur le menu burger |  | Le menu apparaît à la gauche de l'écran |
| 10 | Cliquer sur "About" |  | Je suis envoyer sur le site "https://saucelabs.com/" |

<br>

---

<br>

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
| 7 | Cliquer sur le bouton "Finish" |  | J'accède à la page "Checkout: Complete!" |

<br>

### Cas de test n°12 : Tentative de validation de commande avec formulaire incomplet 
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

### Cas de test n°13 : Tentative de validation de commande avec formulaire incomplet  
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

### Cas de test n°14 : Tentative de validation de commande avec formulaire incomplet  
**Description :** J'essaye de passer une commande avec un "Zip/Postal Code" vide  
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

<br>

## :whale2: Cas de test : End-to-end

### Cas de test n°15 : Parcours utilisateur end-to-end
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
| 5 | Cliquer sur "Add to cart" |  | Le bouton "Add to cart" du produit devient "Remove" et une pastille rouge avec le chiffre "1" apparaît sur le picto "Panier" |
| 6 | Cliquer sur le bouton "Panier" |  | J'accède à la page "Your Cart" |
| 7 | Cliquer sur le bouton "Checkout" |  | J'accède à la page "Checkout: Your Information |
| 8 | Remplir le champ "First Name" avec une valeur correcte | Pierre |  |
| 9 | Remplir le champ "Last Name" avec une valeur correcte | Le Guennec |  |
| 10 | Remplir le champ "Zip/Postal Code" avec une valeur correcte | 44000 |  |
| 11 | Cliquer sur le bouton "Continue" |  | J'accède à la page "Checkout: Overview" |
| 12 | Cliquer sur le bouton "Finish" |  | J'accède à la page "Finish" |

<br>