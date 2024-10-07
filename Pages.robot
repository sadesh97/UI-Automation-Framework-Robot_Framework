*** Settings ***
Library    SeleniumLibrary  # Import SeleniumLibrary for browser automation

*** Variables ***
${URL}              https://www.facebook.com   # URL of the Facebook login page
${EMAIL_FIELD}      //input[@id='email']       # XPath for the email input field
${PASSWORD_FIELD}   //input[@id='pass']        # XPath for the password input field
${LOGIN_BUTTON}     //button[@name='login']    # XPath for the login button

*** Keywords ***
Open Facebook Login Page
    Open Browser    ${URL}    chrome      # Open the Facebook login page in Chrome
    Maximize Browser Window               # Maximize the browser window for better visibility

Enter Credentials
    [Arguments]    ${email}    ${password}  # Define arguments for email and password
    Input Text    ${EMAIL_FIELD}    ${email}  # Input the email into the email field
    Input Text    ${PASSWORD_FIELD}   ${password}  # Input the password into the password field

Click Login
    Click Button    ${LOGIN_BUTTON}   # Click the login button to submit the form

Close Browser
    Close All Browsers   # Close all browser windows opened during the test
