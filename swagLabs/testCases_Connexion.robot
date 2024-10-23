*** Settings ***
Library    SeleniumLibrary
Test Setup    Préparer L'environnement
Suite Teardown    Close Browser

*** Variables ***
${browser}        chrome
${url}            https://saucedemo.com/
${username}       standard_user
${password}       secret_sauce 
${username_false}    toto
${password_false}    toto

*** Keywords ***
Préparer L'environnement
    Log    Lancer le navigateur et accéder à l'URL
    Open Browser    ${url}    ${browser}
    Set Browser Implicit Wait    2
    Maximize Browser Window

*** Test Cases ***
Cas de test n°1 : Connexion en tant qu'utilisateur standard
    Click Element    //input[@id='user-name']
    Input Text    id:user-name    ${username}
    Click Element   //input[@id='password']
    Input Text    id:password    ${password}
    Click Button    //input[@id='login-button']

Cas de test n°2 : Tentative de connexion avec un "username" incorrect
    Click Element    //input[@id='user-name']
    Input Text    id:user-name    ${username_false}
    Click Element   //input[@id='password']
    Input Text    id:password    ${password}
    Click Button    //input[@id='login-button']
    Page Should Contain    Epic sadface: Username and password do not match any user in this service

Cas de test n°3 : Tentative de connexion avec un "password" incorrect
    Click Element    //input[@id='user-name']
    Input Text    id:user-name    ${username}
    Click Element   //input[@id='password']
    Input Text    id:password    ${password_false}
    Click Button    //input[@id='login-button']
    Page Should Contain    Epic sadface: Username and password do not match any user in this service

Cas de test n°4 : Tentative de connexion avec un "username" et un "password" incorrects
    Click Element    //input[@id='user-name']
    Input Text    id:user-name    ${username_false}
    Click Element   //input[@id='password']
    Input Text    id:password    ${password_false}
    Click Button    //input[@id='login-button']
    Page Should Contain    Epic sadface: Username and password do not match any user in this service

Cas de test n°5 : Tentative de connexion avec un "username" vide
    Click Element   //input[@id='password']
    Input Text    id:password    ${password_false}
    Click Button    //input[@id='login-button']
    Page Should Contain    Epic sadface: Username is required

Cas de test n°6 : Tentative de connexion avec un "password" vide
    Click Element    //input[@id='user-name']
    Input Text    id:user-name    ${username_false}
    Click Button    //input[@id='login-button']
    Page Should Contain    Epic sadface: Password is required

