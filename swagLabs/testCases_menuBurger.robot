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
Cas de test n°10 : Naviguer sur le site avec le menu burger
    Click Button    //*[@id="react-burger-menu-btn"]
    #All items
    Click Element    xpath://*[@data-test='inventory-sidebar-link']/ancestor::nav[@class='bm-item-list']/ancestor::div[@class='bm-menu']//a[text()='All Items']
    Click Button     xpath://*[@class='bm-cross-button']//button[text()='Close Menu']

    #Logout
    Click Button    //*[@id="react-burger-menu-btn"]
    Click Element    xpath://*[@data-test='logout-sidebar-link']/ancestor::nav[@class='bm-item-list']/ancestor::div[@class='bm-menu']//a[text()='Logout']

    #Reconnexion
    Click Element    //input[@id='user-name']
    Input Text    id:user-name    ${username}
    Click Element   //input[@id='password']
    Input Text    id:password    ${password}
    Click Button    //input[@id='login-button']
    
    #About
    Click Button    //*[@id="react-burger-menu-btn"]
    Click Element    xpath://*[@data-test='about-sidebar-link']/ancestor::nav[@class='bm-item-list']/ancestor::div[@class='bm-menu']//a[text()='About']