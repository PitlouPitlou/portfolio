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
Cas de test n°7 : Naviguer et ajouter un produit au panier
    Click Element    //*[@id="item_4_title_link"]/div
    Click Element    //*[@id="back-to-products"]
    Click Element    //*[@id="item_0_title_link"]/div
    Click Button     //*[@id="add-to-cart"]


Cas de test n°8 : Trier les produits
    # Changer l'ordre de la liste de Z to A
    Click Element    //*[@id="header_container"]/div[2]/div/span/select
    Sleep    0.5
    Click Element    //*[@id="header_container"]/div[2]/div/span/select/option[2]
    Sleep    0.5

    # Changer l'ordre de la liste Price (low to high)
    Click Element    //*[@id="header_container"]/div[2]/div/span/select
    Sleep    0.5
    Click Element    //*[@id="header_container"]/div[2]/div/span/select/option[3]
    Sleep    0.5


    # Changer l'ordre de la liste Price (high to low)
    Click Element    //*[@id="header_container"]/div[2]/div/span/select
    Sleep    0.5
    Click Element    //*[@id="header_container"]/div[2]/div/span/select/option[4]
    Sleep    0.5

    # Changer l'ordre de la liste de A to Z
    Click Element    //*[@id="header_container"]/div[2]/div/span/select
    Sleep    0.5
    Click Element    //*[@id="header_container"]/div[2]/div/span/select/option[1]