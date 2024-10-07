*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Wait For Page To Load
    Wait Until Page Contains Element    id=email    timeout=10
