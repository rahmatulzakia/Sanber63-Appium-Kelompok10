*** Settings ***
Library          AppiumLibrary
Resource         ../PageObjects/base.robot
Resource         ../PageObjects/HomePage/homePage.robot
Resource         ../PageObjects/LoginPage/loginPage.robot
Resource         ../PageObjects/SearchPage/searchPage.robot
# Variables        ../PageObjects/LoginPage/login-locators.yaml

Test Setup       Run Keywords    Open Flight Application  AND    Verify Home Screen
Test Teardown    Close Flight Application

*** Test Cases ***
# Positive cases
User Search Flight Number inValid
    Click sign in button
    Input username    username=support@ngendigital.com
    Input password    password=abc123
    Click sign in button on login page
    Verify user successfully login
    Click search button header
    Input Flight Number    flight_number=C0987X
    Click Button Search
    Verify user failed search

User Search Flight Number Valid
    Click sign in button
    Input username    username=support@ngendigital.com
    Input password    password=abc123
    Click sign in button on login page
    Verify user successfully login
    Click search button header
    Input Flight Number    flight_number=DA935
    Click Button Search
    Verify Flight Number Exist

# Negative cases
User Only Click Search Button On Search Page
    Click sign in button
    Input username    username=support@ngendigital.com
    Input password    password=abc123
    Click sign in button on login page
    Verify user successfully login
    Click search button header
    Click Button Search
    Verify user failed search