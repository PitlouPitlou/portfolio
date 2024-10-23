*** Settings ***
Library    SeleniumLibrary
Suite Teardown    Close All Browsers

*** Variables ***
${browser}        chrome
${url}            https://saucedemo.com/
${username}       standard_user
${password}       secret_sauce 
${username_false}    toto
${password_false}    toto2


*** Test Cases ***
LoginTest
    Open Browser    ${url}    ${browser}
    Set Browser Implicit Wait    2
    Maximize Browser Window

LoginToApplication
    Click Element    //input[@id='user-name']
    Input Text    id:user-name    ${username}
    Sleep    0.5
    Click Element   //input[@id='password']
    Input Text    id:password    ${password}
    Sleep    0.5
    # Cliquer sur le bouton login
    Click Button    //input[@id='login-button']
    Sleep    1

Changer l'ordre de la liste
    # Changer l'ordre de la liste de Z to A
    Click Element    //*[@id="header_container"]/div[2]/div/span/select
    Sleep    2
    Click Element    //*[@id="header_container"]/div[2]/div/span/select/option[2]
    Sleep    2

    # Changer l'ordre de la liste Price (low to high)
    Click Element    //*[@id="header_container"]/div[2]/div/span/select
    Sleep    2
    Click Element    //*[@id="header_container"]/div[2]/div/span/select/option[3]
    Sleep    2


    # Changer l'ordre de la liste Price (high to low)
    Click Element    //*[@id="header_container"]/div[2]/div/span/select
    Sleep    2
    Click Element    //*[@id="header_container"]/div[2]/div/span/select/option[4]
    Sleep    2

    # Changer l'ordre de la liste de A to Z
    Click Element    //*[@id="header_container"]/div[2]/div/span/select
    Sleep    2
    Click Element    //*[@id="header_container"]/div[2]/div/span/select/option[1]
    Sleep    2





Ajouter des produits depuis la homepage
    # Ajouter un produit dans le panier
    Click Element    //*[@id="add-to-cart-sauce-labs-backpack"]
    Sleep    1
    Click Element    //*[@id="add-to-cart-sauce-labs-onesie"]
    Sleep    1

Entrer sur la page d'un produit, l'ajouter et retour sur la homepage
    Click Element    //*[@id="item_1_title_link"]/div
    Click Element    //*[@id="add-to-cart"]
    Sleep    1
    Click Element    //*[@id="back-to-products"]


Finaliser une commande
    # Cliquer sur le panier
    Click Element    //*[@id="shopping_cart_container"]/a
    Sleep    1
    # Cliquer sur Checkout
    Click Button    //*[@id="checkout"]
    Sleep    1
    # Remplir le formulaire
    Input Text    //*[@id="first-name"]    Coucou
    Input Text    //*[@id="last-name"]    last name coucou
    Input Text    //*[@id="postal-code"]    test
    Click Element    //*[@id="continue"]
    Sleep    1


    # Finaliser la commmande
    Click Element    //*[@id="finish"]
    Sleep    1
    # Back home
    Click Element    //*[@id="back-to-products"]




