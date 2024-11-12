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
${login-name}    pierre

#Chemin vers une image présente sur mon bureau
${IMAGE_PATH}      C:/Users/legue/Desktop/Screenshot_4.jpg

*** Keywords ***
Précondition
    Log    Lancer le navigateur et accéder à l'URL
    Open Browser    ${url}    ${browser}
    Click Button    //*[@class="fc-button fc-cta-consent fc-primary-button"]
    Maximize Browser Window
    Location Should Be    ${url}


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
    Click Button    xpath://*[@data-qa='signup-button']

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
    Handle Alert    action=DISMISS
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
    Click Button    xpath://*[@data-qa='login-button']

    #8. Verify that 'Logged in as username' is visible
    Page Should Contain    Logged in as ${login-name}


Test Case 3: Login User with incorrect email and password
    #1. Launch browser
    #2. Navigate to url 'http://automationexercise.com'
    #3. Verify that home page is visible successfully
    #4. Click on 'Signup / Login' button
    Click Element    //*[@class='nav navbar-nav']/ancestor::div[@class='shop-menu pull-right']//a[contains(text(),'Signup / Login')]

    #5. Verify 'Login to your account' is visible
    Wait Until Page Contains    Login to your account

    #6. Enter incorrect email address and password
    Click Element    xpath://*[@data-qa='login-email']
    Input Text    xpath://input[@data-qa='login-email']    toto@gmail.com

    Click Element    xpath://*[@data-qa='login-password']
    Input Text    xpath://input[@data-qa='login-password']    toto

    #7. Click 'login' button
    Click Button    xpath://*[@data-qa='login-button']

    #8. Verify error 'Your email or password is incorrect!' is visible
    Page Should Contain    Your email or password is incorrect!


Test Case 4: Logout User
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
    Click Button    xpath://*[@data-qa='login-button']

    #8. Verify that 'Logged in as username' is visible
    Page Should Contain    Logged in as ${login-name}

    #9. Click 'Logout' button
    Click Element    //*[@class='nav navbar-nav']/ancestor::div[@class='shop-menu pull-right']//a[contains(text(),'Logout')]

    #10. Verify that user is navigated to login page
    Page Should Contain    Login to your account


Test Case 5: Register User with existing email
    #1. Launch browser
    #2. Navigate to url 'http://automationexercise.com'
    #3. Verify that home page is visible successfully
    #4. Click on 'Signup / Login' button
    Click Element    //*[@class='nav navbar-nav']/ancestor::div[@class='shop-menu pull-right']//a[contains(text(),'Signup / Login')]

    #5. Verify 'New User Signup!' is visible
    Page Should Contain    New User Signup!

    #6. Enter name and already registered email address
    Click Element    xpath://*[@data-qa='signup-name']
    Input Text    xpath://input[@data-qa='signup-name']    ${login-name}

    Click Element    xpath://*[@data-qa='login-password']
    Input Text    xpath://input[@data-qa='login-password']    ${login-password}

    #7. Click 'Signup' button
    Click Button    xpath://*[@data-qa='signup-button']

    #8. Verify error 'Email Address already exist!' is visible
    Page Should Contain    Email Address already exist!

    
Test Case 6: Contact Us Form
    #1. Launch browser
    #2. Navigate to url 'http://automationexercise.com'
    #3. Verify that home page is visible successfully
    #4. Click on 'Contact Us' button*
    Click Element    //*[@class='nav navbar-nav']/ancestor::div[@class='shop-menu pull-right']//a[contains(text(),'Contact us')]

    #5. Verify 'GET IN TOUCH' is visible
    Page Should Contain    Get In Touch

    #6. Enter name, email, subject and message
    Input Text    xpath://input[@data-qa='name']    pierre
    Input Text    xpath://input[@data-qa='email']    email@gmail.com
    Input Text    xpath://input[@data-qa='subject']    sujet
    Input Text    xpath://textarea[@data-qa='message']    message

    #7. Upload file
    Choose File    xpath://*[@name='upload_file']    ${IMAGE_PATH}

    #8. Click 'Submit' button
    Click Element    xpath://*[@data-qa='submit-button']

    #9. Click OK button
    Handle Alert    action=ACCEPT
    #10. Verify success message 'Success! Your details have been submitted successfully.' is visible
    Wait Until Element Is Visible    xpath://div[@id="contact-page"]
    Page Should Contain    Success! Your details have been submitted successfully.

    #11. Click 'Home' button and verify that landed to home page successfully
    Click Element    //*[@class='nav navbar-nav']/ancestor::div[@class='shop-menu pull-right']//a[contains(text(),'Home')]
    Location Should Be    ${url}


Test Case 7: Verify Test Cases Page
    #1. Launch browser
    #2. Navigate to url 'http://automationexercise.com'
    #3. Verify that home page is visible successfully
    #4. Click on 'Test Cases' button
    Click Element    //*[@class='nav navbar-nav']/ancestor::div[@class='shop-menu pull-right']//a[contains(text(),'Test Cases')]

    #5. Verify user is navigated to test cases page successfully
    Location Should Be      https://automationexercise.com/test_cases

Test Case 8: Verify All Products and product detail page
    #1. Launch browser
    #2. Navigate to url 'http://automationexercise.com'
    #3. Verify that home page is visible successfully
    #4. Click on 'Products' button
    Click Element    //*[@class='nav navbar-nav']/ancestor::div[@class='shop-menu pull-right']//a[contains(text(),'Products')]

    #5. Verify user is navigated to ALL PRODUCTS page successfully
    Location Should Be      https://automationexercise.com/products
                    
    #6. The products list is visible
    #Je ne sais pas encore comment vérifier cela, si jamais quelqu'un passe dans le coin. Je veux bien un coup de main :)

    #7. Click on 'View Product' of first product
    Click Element    //ul[@class='nav nav-pills nav-justified']/ancestor::div[@class='choose']/ancestor::div[@class='product-image-wrapper']/ancestor::div[@class='col-sm-4']/ancestor::div[@class='features_items']//a[contains(text(),'View Product')]

    #8. User is landed to product detail page
    Location Should Be      https://automationexercise.com/product_details/1

    #9. Verify that detail detail is visible: product name, category, price, availability, condition, brand
    Page Should Contain    Blue Top
    Page Should Contain    Women > Tops
    Page Should Contain    500
    Page Should Contain    In Stock
    Page Should Contain    New
    Page Should Contain    Polo

Test Case 9: Search Product
    #1. Launch browser
    #2. Navigate to url 'http://automationexercise.com'
    #3. Verify that home page is visible successfully
    #4. Click on 'Products' button
    Click Element    //*[@class='nav navbar-nav']/ancestor::div[@class='shop-menu pull-right']//a[contains(text(),'Products')]

    #5. Verify user is navigated to ALL PRODUCTS page successfully
    Location Should Be  https://automationexercise.com/products

    #6. Verify 'SEARCHED PRODUCTS' is visible
    Page Should Contain Element    xpath://*[@placeholder='Search Product']

    #7. Enter product name in search input and click search button
    Click Element    xpath://*[@id='search_product']
    Input Text    xpath://input[@id='search_product']    polo
    Click Button    xpath://button[@id='submit_search']

    #8. Verify all the products related to search are visible
    Page Should Contain    Rs. 1500

Test Case 10: Verify Subscription in home page
    #1. Launch browser
    #2. Navigate to url 'http://automationexercise.com'
    #3. Verify that home page is visible successfully
    #4. Scroll down to footer
    Scroll Element Into View    xpath://*[@id='susbscribe_email']

    #5. Verify text 'SUBSCRIPTION'
    Page Should Contain    Subscription

    #6. Enter email address in input and click arrow button
    Click Element    xpath://*[@id='susbscribe_email']
    Input Text    xpath://input[@id='susbscribe_email']    ${email}
    Click Button    xpath://button[@id='subscribe']

    #7. Verify success message 'You have been successfully subscribed!' is visible
    Page Should Contain    You have been successfully subscribed!