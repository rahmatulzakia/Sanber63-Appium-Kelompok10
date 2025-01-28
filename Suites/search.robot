*** Settings ***
Library          AppiumLibrary
Resource         ../PageObjects/base.robot
Resource         ../PageObjects/HomePage/homePage.robot
Resource         ../PageObjects/LoginPage/loginPage.robot
# Variables        ../PageObjects/LoginPage/login-locators.yaml

Test Setup       Run Keywords    Open Flight Application  AND    Verify Home Screen
Test Teardown    Close Flight Application

*** Test Cases ***
# Positive cases
User Search Fligh number inValid
    Click sign in button
    Input username    username=support@ngendigital.com
    Input password    password=abc123
    Click sign in button on login page
    Verify user successfully login
    Click Button Search
    Input Flight Number    flight_number=C0987X
    Click Button Search
    Verify user failed search
