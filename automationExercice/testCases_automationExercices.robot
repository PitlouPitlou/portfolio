*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    email_generator.py
Library    String
Test Setup    Précondition
Suite Teardown    Close Browser

*** Variables ***
${browser}         chrome
${url}             https://automationexercise.com/
${signup-name}     Le Guennec
${signup-email}    toto
${name}            Le Guennec
${email}           email@gmail.com
${password}        password


*** Keywords ***
Précondition
    Log    Lancer le navigateur et accéder à l'URL
    Open Browser    ${url}    ${browser}
    Click Button    //*[@class="fc-button fc-cta-consent fc-primary-button"]
    Maximize Browser Window


*** Test Cases ***
Test Case 1: Register User
    #1. Launch browser
    #2. Navigate to url 'http://automationexercise.com'
    #3. Verify that home page is visible successfully
    # Wait Until Element Is Visible    //div[@class='logo pull-left']//img[alt()='Website for automation practice']
    #4. Click on 'Signup / Login' button
    Click Element    //*[@class='nav navbar-nav']/ancestor::div[@class='shop-menu pull-right']//a[contains(text(),'Signup / Login')]
    #5. Verify 'New User Signup!' is visible
    Wait Until Page Contains    New User Signup!
    #6. Enter name and email address
    Click Element    xpath://*[@data-qa='signup-name']
    Input Text    xpath://input[@data-qa='signup-name']   ${signup-name}
    Sleep    0.5

    ${signup-email}=    Generate Fake Email

    Click Element    xpath://*[@data-qa='signup-email']
    Input Text    xpath://input[@data-qa='signup-email']    ${signup-email}
    Sleep    0.5
    #7. Click 'Signup' button
    Click Element    xpath://button[@data-qa='signup-button']
    Sleep    0.5
    #8. Verify that 'ENTER ACCOUNT INFORMATION' is visible
    Wait Until Page Contains    Enter Account Information
    #9. Fill details: Title, Name, Email, Password, Date of birth

    Click Element    xpath://*[@data-qa='password']
    Input Text    xpath://input[@data-qa=password']   ${password}

    Click Element    xpath://*[id='id_gender1']

    Sleep    2

    #10. Select checkbox 'Sign up for our newsletter!'
    #11. Select checkbox 'Receive special offers from our partners!'
    #12. Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
    #13. Click 'Create Account button'
    #14. Verify that 'ACCOUNT CREATED!' is visible
    #15. Click 'Continue' button
    #16. Verify that 'Logged in as username' is visible
    #17. Click 'Delete Account' button
    #18. Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button
