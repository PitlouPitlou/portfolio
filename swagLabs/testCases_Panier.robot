*** Settings ***
Library    SeleniumLibrary
Test Setup    Précondition
Suite Teardown    Close Browser

*** Variables ***
${browser}        chrome
${url}            https://saucedemo.com/
${username}       standard_user
${password}       secret_sauce 


*** Keywords ***
Précondition
    Log    Lancer le navigateur et accéder à l'URL
    Open Browser    ${url}    ${browser}
    Set Browser Implicit Wait    2
    Maximize Browser Window
    Click Element    //input[@id='user-name']
    Input Text    id:user-name    ${username}
    Click Element   //input[@id='password']
    Input Text    id:password    ${password}
    Click Button    //input[@id='login-button']


*** Test Cases ***
Cas de test n°9 : Ajouter des produits au panier et en retirer
    #Ajouter des produits dans le panier
    Click Button     xpath://div[text()='Sauce Labs Backpack']/ancestor::div[@class='inventory_item']//button[text()='Add to cart']
    Click Button     xpath://div[text()='Sauce Labs Bike Light']/ancestor::div[@class='inventory_item']//button[text()='Add to cart']
    Click Element    xpath://div[text()='Sauce Labs Bolt T-Shirt']
    Click Button     //button[text()='Add to cart']

    #Naviguer vers le panier
    Click Element    //a[@class='shopping_cart_link']
    
    #Remove un produit
    Click Button    xpath://div[text()='Sauce Labs Backpack']/ancestor::div[@class='cart_item']//button[text()='Remove']
    Click Button    //button[text()='Continue Shopping']
    Click Button    xpath://div[text()='Sauce Labs Bike Light']/ancestor::div[@class='inventory_item']//button[text()='Remove']
    Click Element    xpath://div[text()='Sauce Labs Bolt T-Shirt']
    Click Button     //button[text()='Remove']

    #Naviguer vers le panier
    Click Element    //a[@class='shopping_cart_link']
    Sleep    1