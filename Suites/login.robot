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
User should be able to login with valid data
    Click sign in button
    Input username    username=support@ngendigital.com
    Input password    password=abc123
    Click sign in button on login page
    Verify user successfully login

# Negative cases
User unable to login with invalid password
    Click sign in button
    Input username    username=support@ngendigital.com
    Input password    password=ABC123
    Click sign in button on login page
    Verify user failed login

User try to login with invalid password 2
    Click sign in button
    Input username    username=support@ngendigital.com
    Input password    password=ABCD123
    Click sign in button on login page
    Verify user failed login
    
User try to login with invalid password 3
    Click sign in button
    Input username    username=support@ngendigital.com
    Input password    password=pāsswørd
    Click sign in button on login page
    Verify user failed login

User try to login with invalid password 4
    Click sign in button
    Input username    username=support@ngendigital.com
    Input password    password=@Abc123
    Click sign in button on login page
    Verify user failed login

User try to login with invalid password 5
    Click sign in button
    Input username    username=support@ngendigital.com
    Input password    password=Abc1234
    Click sign in button on login page
    Verify user failed login

User unable to login with invalid email format
    Click sign in button
    Input username    username=digital.com
    Input password    password=abc123
    Click sign in button on login page
    Verify user failed login

User unable to login with invalid email
    Click sign in button
    Input username    username=support@digital.com
    Input password    password=abc123
    Click sign in button on login page
    Verify user failed login

User unable to login with invalid username and password
    Click sign in button
    Input username    username=banana@gmail.com
    Input password    password=banana1
    Click sign in button on login page
    Verify user failed login

User unable to login with blank field
    Click sign in button
    Input username    username=
    Input password    password=
    Click sign in button on login page
    Verify user failed login

User try to login for multiple times with invalid credentials
    Click sign in button
    Input username    username=support@ngendigital.com
    Input password    password=abcd123
    Click sign in button on login page
    Click sign in button on login page
    Click sign in button on login page
    Click sign in button on login page
    Click sign in button on login page
    Click sign in button on login page
    Click sign in button on login page
    Click sign in button on login page
    Click sign in button on login page
    Click sign in button on login page
    Verify user failed login