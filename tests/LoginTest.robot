*** Settings ***
Library    SeleniumLibrary            # Import SeleniumLibrary for browser automation
Resource   ../pages/LoginPage.robot   # Reference the LoginPage containing the page object keywords

*** Variables ***
${EMAIL}     sadeshm@example.com       # Define the email address to use for login
${PASSWORD}  12345Ab                   # Define the password to use for login

*** Test Cases ***
Test Facebook Login
    Open Facebook Login Page           # Open the Facebook login page
    Enter Credentials    ${EMAIL}    ${PASSWORD}   # Enter the email and password
    Click Login                        # Click the login button to submit the form
    [Teardown]      # Close the browser after the test
