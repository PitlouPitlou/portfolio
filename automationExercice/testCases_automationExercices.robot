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
${first_name}      Pierre
${last_name}       Le Guennec
${company}         Company Corp
${address}         454 rue Pierre Le Guennec
${address2}        Appt 404
${state}           Pays de la Loire
${city}            Nantes
${zipcode}         44300
${mobile_number}   07 01 02 03 04

# compte permanent
${login-email}    toto0102@gmail.com
${login-password}    toto

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
    #4. Click on 'Signup / Login' button
    Click Element    //*[@class='nav navbar-nav']/ancestor::div[@class='shop-menu pull-right']//a[contains(text(),'Signup / Login')]

    #5. Verify 'New User Signup!' is visible
    Wait Until Page Contains    New User Signup!

    #6. Enter name and email address
    Click Element    xpath://*[@data-qa='signup-name']
    Input Text    xpath://input[@data-qa='signup-name']   ${signup-name}

    ${signup-email}=    Generate Fake Email

    Click Element    xpath://*[@data-qa='signup-email']
    Input Text    xpath://input[@data-qa='signup-email']    ${signup-email}

    #7. Click 'Signup' button
    Click Element    xpath://button[@data-qa='signup-button']

    #8. Verify that 'ENTER ACCOUNT INFORMATION' is visible
    Page Should Contain    Enter Account Information

    #9. Fill details: Title, Name, Email, Password, Date of birth
    Click Element   xpath://*[@data-qa='password']
    Input Text    xpath://input[@data-qa='password']    ${password}

    #10. Select checkbox 'Sign up for our newsletter!'
    Click Element    //input[@type="checkbox" and @name='newsletter']

    #11. Select checkbox 'Receive special offers from our partners!'
    Click Element    //input[@type='checkbox' and @name='optin']

    #12. Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
    Click Element    //input[@type='radio' and @id='id_gender1']

    Click Element    xpath://*[@data-qa='first_name']
    Input Text    xpath://input[@data-qa='first_name']    ${first_name}

    Click Element    xpath://*[@data-qa='last_name']
    Input Text    xpath://input[@data-qa='last_name']    ${last_name}
    # Scroll Element Into View : permet de faire descendre l'écran afin que l'intéraction des éléments suivant fonctionne
    Scroll Element Into View    xpath://*[@id='susbscribe_email']

    Click Element    xpath://*[@data-qa='company']
    Input Text    xpath://input[@data-qa='company']    ${company}

    Click Element    xpath://*[@data-qa='address']
    Input Text    xpath://input[@data-qa='address']    ${address}

    Click Element    xpath://*[@data-qa='address2']
    Input Text    xpath://input[@data-qa='address2']    ${address2}

    Click Element    xpath://*[@data-qa='country']
    Click Element    xpath://*[@data-qa='country']//*[text()='Australia']

    Click Element    xpath://*[@data-qa='state']
    Input Text    xpath://input[@data-qa='state']    ${state}

    Click Element    xpath://*[@data-qa='city']
    Input Text    xpath://input[@data-qa='city']    ${city}

    Click Element    xpath://*[@data-qa='zipcode']
    Input Text    xpath://input[@data-qa='zipcode']    ${zipcode}

    Click Element    xpath://*[@data-qa='mobile_number']
    Input Text    xpath://input[@data-qa='mobile_number']    ${mobile_number}

    #13. Click 'Create Account button'
    Click Button    xpath://*[@data-qa='create-account']

    #14. Verify that 'ACCOUNT CREATED!' is visible
    Page Should Contain    ACCOUNT CREATED!

    #15. Click 'Continue' button
    Click Button    xpath://*[@data-qa='continue-button']

    #16. Verify that 'Logged in as username' is visible
    Page Should Contain    Logged in as ${last_name}

    #17. Click 'Delete Account' button
    Click Element    //*[@class='nav navbar-nav']/ancestor::div[@class='shop-menu pull-right']//a[contains(text(),'Delete Account')]
    
    #18. Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button
    Page Should Contain    Account Deleted!
   Click Button    xpath://*[@data-qa='continue-button']



Test Case 2: Login User with correct email and password

    #1. Launch browser
    #2. Navigate to url 'http://automationexercise.com'
    #3. Verify that home page is visible successfully

    #4. Click on 'Signup / Login' button
    Click Element    //*[@class='nav navbar-nav']/ancestor::div[@class='shop-menu pull-right']//a[contains(text(),'Signup / Login')]

    #5. Verify 'Login to your account' is visible
    Wait Until Page Contains    Login to your account

    #6. Enter correct email address and password
    Click Element    xpath://*[@data-qa='login-email']
    Input Text    xpath://input[@data-qa='login-email']    ${login-email}

    Click Element    xpath://*[@data-qa='login-password']
    Input Text    xpath://input[@data-qa='login-password']    ${login-password}

    #7. Click 'login' button
    Click Button    xpath://input[@data-qa='login-button']

    #8. Verify that 'Logged in as username' is visible
    Page Should Contain    Logged in as username


    #9. Click 'Delete Account' button

    #10. Verify that 'ACCOUNT DELETED!' is visible