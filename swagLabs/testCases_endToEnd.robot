*** Settings ***
Library    SeleniumLibrary
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


*** Test Cases ***
Cas de test n°15 : Parcours utilisateur end-to-end
    # Cliquer sur la fiche d'un produit
    Click Element    //div[@data-test='inventory-item-name' and text()='Sauce Labs Backpack']

    # Cliquer sur "Add to cart"
    Click Button    //*[@data-test='add-to-cart']

    # Je clique sur le bouton "Panier"
    Click Element    //*[@data-test='shopping-cart-link']

    # Cliquer sur le bouton "Checkout"
    Click Element    //*[@data-test='checkout']

    # Remplir le champ "First Name" avec une valeur correcte
    Click Element    //*[@data-test='firstName']
    Input Text    //*[@data-test='firstName']   ${firstName}

    # Remplir le champ "Last Name" avec une valeur correcte
    Click Element    //*[@data-test='lastName']
    Input Text    //*[@data-test='lastName']    ${lastName}

    # Remplir le champ "Zip/Postal Code" avec une valeur correcte
    Click Element    //*[@data-test='postalCode']
    Input Text    //*[@data-test='postalCode']  ${lastName}

    # Cliquer sur le bouton "Continue"
    Click Button    //*[@data-test='continue']
    
    # Cliquer sur le bouton "Finish"
    Click Button    //*[@data-test='finish']
    Page Should Contain    Thank you for your order!
