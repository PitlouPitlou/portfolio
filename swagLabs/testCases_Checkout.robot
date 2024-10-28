*** Settings ***
Library    SeleniumLibrary
Library    XML
Test Setup    Précondition
Suite Teardown    Close Browser

*** Variables ***
${browser}        chrome
${url}            https://saucedemo.com/
${username}       standard_user
${password}       secret_sauce
${firstName}      Pierre 
${lastName}       Le Guennec
${postalCode}     44000

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
    Click Button     xpath://div[text()='Sauce Labs Backpack']/ancestor::div[@class='inventory_item']//button[text()='Add to cart']
    Click Button     xpath://div[text()='Sauce Labs Bike Light']/ancestor::div[@class='inventory_item']//button[text()='Add to cart']


*** Test Cases ***
Cas de test n°11 : Passer une commande
    # Cliquer sur le bouton "Panier"
    Click Element    xpath://a[@data-test='shopping-cart-link']

    # Cliquer sur le bouton "Checkout"
    Click Button    //button[@data-test='checkout']
    
    # Remplir le champ "First Name" avec une valeur correcte
    Click Element   //*[@data-test="firstName"]
    Input Text    //*[@data-test="firstName"]    ${firstName}

    # Remplir le champ "Last Name" avec une valeur correcte
    Click Element    //*[@data-test="lastName"]
    Input Text    //*[@data-test="lastName"]    ${lastName}

    # Remplir le champ "Zip/Postal Code" avec une valeur correcte
    Click Element    //*[@data-test='postalCode']
    Input Text    //*[@data-test='postalCode']    ${postalCode}
    
    # Cliquer sur le bouton "Continue"
    Click Button    //*[@data-test='continue']

    # Cliquer sur le bouton "Finish"
    Click Button    //*[@data-test='finish']
    Page Should Contain    Thank you for your order!


Cas de test n°12 : Tentative de validation de commande avec formulaire incomplet
    # Cliquer sur le bouton "Panier"
    Click Element    xpath://a[@data-test='shopping-cart-link']

    # Cliquer sur le bouton "Checkout"
    Click Button    //button[@data-test='checkout']

    # Laisser le champ "First Name" vide
    # Remplir le champ "Last Name" avec une valeur correcte
    Click Element    //*[@data-test="lastName"]
    Input Text    //*[@data-test="lastName"]    ${lastName}

    # Remplir le champ "Zip/Postal Code" avec une valeur correcte
    Click Element    //*[@data-test='postalCode']
    Input Text    //*[@data-test='postalCode']    ${postalCode}

    # Cliquer sur le bouton "Continue"
    Click Button    //*[@data-test='continue']
    Page Should Contain    Error: First Name is required


Cas de test n°13 : Tentative de validation de commande avec formulaire incomplet
    # Cliquer sur le bouton "Panier"
    Click Element    xpath://a[@data-test='shopping-cart-link']

    # Cliquer sur le bouton "Checkout"
    Click Button    //button[@data-test='checkout']

    # Remplir le champ "First Name" avec une valeur correcte
    Click Element   //*[@data-test="firstName"]
    Input Text    //*[@data-test="firstName"]    ${firstName}

    # Laisser le champ "Last Name" vide	
    # Remplir le champ "Zip/Postal Code" avec une valeur correcte
    Click Element    //*[@data-test='postalCode']
    Input Text    //*[@data-test='postalCode']    ${postalCode}

    # Cliquer sur le bouton "Continue"
    Click Button    //*[@data-test='continue']
    Page Should Contain    Error: Last Name is required


Cas de test n°14 : Tentative de validation de commande avec formulaire incomplet
    # Cliquer sur le bouton "Panier"
    Click Element    xpath://a[@data-test='shopping-cart-link']

    # Cliquer sur le bouton "Checkout"
    Click Button    //button[@data-test='checkout']

    # Remplir le champ "First Name" avec une valeur correcte
    Click Element   //*[@data-test="firstName"]
    Input Text    //*[@data-test="firstName"]    ${firstName}

    # Remplir le champ "Last Name" avec une valeur correcte
    Click Element    //*[@data-test="lastName"]
    Input Text    //*[@data-test="lastName"]    ${lastName}
    
    # Laisser le champ "Zip/Postal Code" vide
    # Cliquer sur le bouton "Continue"
    Click Button    //*[@data-test='continue']
    Page Should Contain    Error: Postal Code is required